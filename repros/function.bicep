param location string = 'westeurope'
param netFrameworkVersion string = 'v4.0'
@allowed([ 'AllAllowed', 'FtpsOnly', 'Disabled' ])
param ftpsState string = 'Disabled'
param DnsZoneSubscriptionID string = 'a28d23b2-6c69-42c6-9d0a-953e54499bdc'
param DnsZoneRG string = ''
param customDomainName string = 'testRg'
param dnsZoneName string = ''
param dnsRecordTTL int = 300


resource hostingPlan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'testPlan'
  location: location
  sku: {
    name: 'B1'
    capacity: 1
  } 
  properties: {
    reserved: false
  }
}


resource appService 'Microsoft.Web/sites@2021-03-01' = {
  name: 'webSiteName' 
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  // tags: tags
  properties: {
    serverFarmId: hostingPlan.id
    httpsOnly: true
    siteConfig: {
      minTlsVersion: '1.2'
      http20Enabled: true
      ftpsState: ftpsState 
      use32BitWorkerProcess: false
      netFrameworkVersion: netFrameworkVersion
    }
  }
}

module registerCustomDnsName 'dns-record.bicep' =  if(!empty(customDomainName) && !empty(dnsZoneName) ) {
  scope: resourceGroup(DnsZoneSubscriptionID, DnsZoneRG)
  name: 'registerCustomDomainDns'
  params: {
    zoneName: dnsZoneName
    dnsRecord: customDomainName
    ARecord: true
    dnsRecordValue: appService.properties.inboundIpAddress
    TTL: dnsRecordTTL
  }
}

module registerCustomDnsTxtRecord 'dns-record.bicep' =  if(!empty(customDomainName) && !empty(dnsZoneName) ) {
  scope: resourceGroup(DnsZoneSubscriptionID, DnsZoneRG)
  name: 'asuid'
  params: {
    zoneName: dnsZoneName
    dnsRecord: 'asuid.${customDomainName}'
    TxtRecord: true
    dnsRecordValue: appService.properties.customDomainVerificationId
    TTL: dnsRecordTTL
  }
}

var fqdn = '${customDomainName}.${dnsZoneName}'

resource siteCustomDomain 'Microsoft.Web/sites/hostNameBindings@2021-03-01' = if(!empty(customDomainName) && !empty(dnsZoneName) ) {
  name: fqdn
  parent: appService
  properties: {
    azureResourceName: fqdn
    azureResourceType: 'Website'
    customHostNameDnsRecordType: 'A'
    siteName: appService.name
  }
  dependsOn: [ registerCustomDnsName, registerCustomDnsTxtRecord  ] 
}
