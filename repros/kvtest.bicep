
@description('Generated from /subscriptions/b8f402aa-20f7-4888-b45c-3cf086dad9c3/resourceGroups/ACU1-BRW-PST-RG-D2/providers/Microsoft.Cdn/profiles/acu1brwpstd2cdnshared01/afdendpoints/acu1brwpstd2sadata1/routes/acu1brwpstd2sadata1')
resource acubrwpstdsadata 'Microsoft.Cdn/profiles/afdEndpoints/routes@2021-06-01' = {
  name: 'acu1brwpstd2cdnshared01/acu1brwpstd2sadata1/acu1brwpstd2sadata1'
  properties: {
    cacheConfiguration: {
      compressionSettings: {
        isCompressionEnabled: false
        contentTypesToCompress: []
      }
      queryStringCachingBehavior: 'UseQueryString'
    }
    customDomains: [
      {
        id: '/subscriptions/b8f402aa-20f7-4888-b45c-3cf086dad9c3/resourceGroups/ACU1-BRW-PST-RG-D2/providers/Microsoft.Cdn/profiles/acu1brwpstd2cdnshared01/customDomains/acu1brwpstd2sadata1-psthing-com'
      }
    ]
    originGroup: {
      id: '/subscriptions/b8f402aa-20f7-4888-b45c-3cf086dad9c3/resourceGroups/ACU1-BRW-PST-RG-D2/providers/Microsoft.Cdn/profiles/acu1brwpstd2cdnshared01/originGroups/acu1brwpstd2sadata1'
    }
    originPath: '/'
    ruleSets: []
    supportedProtocols: [
      'Http'
      'Https'
    ]
    patternsToMatch: [
      '/*'
    ]
    forwardingProtocol: 'MatchRequest'
    linkToDefaultDomain: 'Disabled'
    httpsRedirect: 'Enabled'
    enabledState: 'Enabled'
  }
}
