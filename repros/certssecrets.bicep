
resource ACUBRWAOATJMPOSDisk 'Microsoft.Compute/disks@2022-03-02' = {
  name: 'ACU1-BRW-AOA-T5-JMP02-OSDisk'
  location: resourceGroup().location
  tags: {
    Environment: 'Test'
    Zone: '1'
    Size: '128'
  }
  zones: [
    '1'
  ]
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    osType: 'Windows'
    hyperVGeneration: 'V2'
    supportsHibernation: false
    supportedCapabilities: {
      acceleratedNetwork: true
      architecture: 'x64'
    }
    creationData: {
      createOption: 'FromImage'
      imageReference: {
        id: '/Subscriptions/b8f402aa-20f7-4888-b45c-3cf086dad9c3/Providers/Microsoft.Compute/Locations/centralus/Publishers/MicrosoftWindowsServer/ArtifactTypes/VMImage/Offers/WindowsServer/Skus/2022-Datacenter-g2/Versions/20348.707.220505'
      }
    }
    diskSizeGB: 128
    diskIOPSReadWrite: 500
    diskMBpsReadWrite: 60
    encryption: {
      type: 'EncryptionAtRestWithPlatformKey'
    }
    networkAccessPolicy: 'AllowAll'
    publicNetworkAccess: 'Enabled'
  }
}
