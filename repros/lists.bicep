


resource acubrwaoatsadatapsthingcom 'Microsoft.Cdn/profiles/customDomains@2021-06-01' = {
  name: 'acu1brwaoat5cdnshared01/acu1brwaoat5sadata1-psthing-com'
  properties: {
    hostName: 'acu1brwaoat5sadata1.psthing.com'
    tlsSettings: {
      certificateType: 'ManagedCertificate'
      minimumTlsVersion: 'TLS12'
      // secret: {
      //   id: '/subscriptions/b8f402aa-20f7-4888-b45c-3cf086dad9c3/resourceGroups/ACU1-BRW-AOA-RG-T5/providers/Microsoft.Cdn/Profiles/acu1brwaoat5cdnshared01/secrets/5e7ee10a-2f85-45b4-827f-df249be674b7-acu1brwaoat5sadata1-psthing-com'
      // }
    }
  }
}
