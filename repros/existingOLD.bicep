param ep object

resource KV 'Microsoft.KeyVault/vaults@2021-06-01-preview' existing = {
  name: 'mykn'
  scope: resourceGroup('HubRGName')
}

resource CDNProfile 'Microsoft.Cdn/profiles@2020-09-01' existing = {
  name: 'myprofile'
}

resource cert 'Microsoft.KeyVault/vaults/secrets@2021-06-01-preview' = if (contains(ep, 'certName')) {
  name: ep.certName
}

resource customerCert 'Microsoft.Cdn/profiles/secrets@2021-06-01' = if (contains(ep, 'certName')) {
  parent: CDNProfile
  name: ep.certName
  properties: {
    parameters: {
      type: 'CustomerCertificate'
      useLatestVersion: true
      secretSource: {
        id: cert.id
      }
    }
  }
}
