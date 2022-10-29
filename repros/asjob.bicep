param Deployment string = 'ACU1-BRW-AOA-T5'
param subnetName string = 'snMT01'

resource VNET 'Microsoft.Network/virtualNetworks@2020-11-01' existing = {
  name: '${Deployment}-vn'

  resource subnet 'subnets@2022-01-01' existing = {
    name: subnetName
    
  }
}

var mySubnetId = VNET::subnet.id

output mySubnetId string = mySubnetId
