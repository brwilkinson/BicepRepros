param shortname string
param devprod string
param location string
param sequence string
param securityRules array



var name = 'nsg-${shortname}-${devprod}-${location}-${sequence}'


resource symbolicname 'Microsoft.Network/networkSecurityGroups@2022-01-01' = {
  name: name
  location: location
  properties: {
    securityRules: [ for securityRule in securityRules: {
        id: securityRule.name
        name: securityRule.name
        properties: {
          access: securityRule.access
          description: 'https://docs.microsoft.com/en-us/azure/application-gateway/configuration-infrastructure'
          destinationAddressPrefix: securityRule.destinationAddressPrefix
          destinationAddressPrefixes: contains(securityRule, 'destinationAddressPrefixes') ? securityRule.destinationAddressPrefixes : null
          destinationPortRange: securityRule.destinationPortRange
          destinationPortRanges: securityRule.destinationPortRanges
          direction: securityRule.direction
          priority: securityRule.priority
          protocol: securityRule.protocol
          sourceAddressPrefix: securityRule.sourceAddressPrefix
          sourcePortRange: securityRule.sourcePortRange
          sourcePortRanges: securityRule.sourcePortRanges
        }
      }]
  }
}
