param eventgriddomainname string = 'eventgridodmainanme007'
param eventgridtopicname string = 'eventdomaintopicname007'

param location string = 'eastus'

param servicebustopicname string = 'sbt07-dev-001'

param servicebusresourcegroupname string = 'test-sbusmodule-bicep-07'

resource namespace 'Microsoft.ServiceBus/namespaces@2021-11-01' existing = {
  name: servicebustopicname
  scope: resourceGroup(servicebusresourcegroupname)

  // notice i am nested, I have a short name, no parent and no api version
  resource servicebustopic 'topics' existing = {
    name: servicebustopicname
  }
}

resource eventgriddomain 'Microsoft.EventGrid/domains@2022-06-15' = {
  name: eventgriddomainname
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    publicNetworkAccess: 'Enabled'
  }

  // notice i am nested, I have a short name, no parent and no api version
  resource eventdomaintopic 'topics' = {
    name: eventgridtopicname

    // notice i am nested, I have a short name, no parent and no api version
    resource eventsubscription 'eventSubscriptions' = {
      name: 'evntsub'
      properties: {
        destination: {
          endpointType: 'ServiceBusTopic'
          properties: {
            resourceId: namespace::servicebustopic.id // Notice how i reference existing nested resources with the ::
          }
        }
      }
    }

  }
}
