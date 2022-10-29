
param resourceGroupName string = 'ACU1-BRW-AOA-RG-T5'
param sshKeyName string = 'jmp01'

module foo2 'foo2.bicep' = {
  name: 'foo2'
  params: {
    resourceGroupName: resourceGroupName
    sshKeyName: sshKeyName
  }
}

resource sshKey 'Microsoft.Compute/sshPublicKeys@2022-03-01' existing = {
  name: sshKeyName
  // scope: az.resourceGroup(split(foo2.outputs.id, '/')[2], split(foo2.outputs.id, '/')[4])
}


module foo 'foo.bicep' = {
  name: 'foo'
  params: {
    id: sshKey.properties.publicKey
  }
}


output publicKey string = sshKey.properties.publicKey
output resourceId string = sshKey.id
output resourceId2 string = split(sshKey.id,'/')[2]
output resourceId4 string = split(sshKey.id,'/')[4]
output foo string = foo.outputs.key
