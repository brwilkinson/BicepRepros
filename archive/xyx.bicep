param titles array = [
  'blazorapp inside VNET'
  'blazorapp outside VNET'
]

resource web 'Microsoft.Web/sites@2020-12-01' existing = [for (title, index) in titles: {
  name: replace('web${title}',' ','-')
}]

var others = [
  {
    // other accesspolicies hard coded
  }
]

resource keyVault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: 'name'
  location: resourceGroup().location
  properties: {
    sku: {
      name: 'standard'
      family: 'A'
    }
    enabledForDeployment: true
    enabledForTemplateDeployment: true
    enabledForDiskEncryption: true
    tenantId: 'tenantId'
    accessPolicies: [for (title, index) in titles: {
      tenantId: subscription().tenantId
      objectId: web[index].identity.principalId
      permissions: {
        secrets: [
          'get'
        ]
      }
    }]
  }
}
