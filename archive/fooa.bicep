param name string

resource as 'Microsoft.Compute/availabilitySets@2022-03-01' = {
  name: name
  location: resourceGroup().location
}

output id string = as.id
