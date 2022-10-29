
@description('Generated from /subscriptions/347e93b0-008c-4291-9396-1b85883f2af4/resourceGroups/uat-scriptrg/providers/microsoft.cdn/profiles/uat-script-cdn/endpoints/uat-script')
resource uatscript 'Microsoft.Cdn/profiles/endpoints@2021-06-01' = {
  name: 'uat-script-cdn/uat-script'
  location: 'Global'
  tags: {
  }
  properties: {
    originHostHeader: 'uatscriptstorageaccnt.z19.web.core.windows.net'
    contentTypesToCompress: [
      'application/eot'
      'application/font'
      'application/font-sfnt'
      'application/javascript'
      'application/json'
      'application/opentype'
      'application/otf'
      'application/pkcs7-mime'
      'application/truetype'
      'application/ttf'
      'application/vnd.ms-fontobject'
      'application/xhtml+xml'
      'application/xml'
      'application/xml+rss'
      'application/x-font-opentype'
      'application/x-font-truetype'
      'application/x-font-ttf'
      'application/x-httpd-cgi'
      'application/x-javascript'
      'application/x-mpegurl'
      'application/x-opentype'
      'application/x-otf'
      'application/x-perl'
      'application/x-ttf'
      'font/eot'
      'font/ttf'
      'font/otf'
      'font/opentype'
      'image/svg+xml'
      'text/css'
      'text/csv'
      'text/html'
      'text/javascript'
      'text/js'
      'text/plain'
      'text/richtext'
      'text/tab-separated-values'
      'text/xml'
      'text/x-script'
      'text/x-component'
      'text/x-java-source'
    ]
    isCompressionEnabled: true
    isHttpAllowed: false
    isHttpsAllowed: true
    queryStringCachingBehavior: 'IgnoreQueryString'
    origins: [
      {
        name: 'uatscriptstorageaccnt-blob-core-windows-net'
        properties: {
          hostName: 'uatscriptstorageaccnt.z19.web.core.windows.net'
          priority: 1
          weight: 1000
          enabled: true
        }
      }
    ]
    originGroups: []
    geoFilters: []
    deliveryPolicy: {
      rules: [
        {
          name: 'Global'
          order: 0
          conditions: []
          actions: [
            {
              name: 'ModifyResponseHeader'
              parameters: {
                typeName: 'DeliveryRuleHeaderActionParameters'
                headerAction: 'Append'
                headerName: 'strict-transport-security'
                value: 'max-age=63072000; includeSubDomains'
              }
            }
            {
              name: 'ModifyResponseHeader'
              parameters: {
                typeName: 'DeliveryRuleHeaderActionParameters'
                headerAction: 'Overwrite'
                headerName: 'X-Content-Type-Options'
                value: 'nosniff'
              }
            }
            {
              name: 'ModifyResponseHeader'
              parameters: {
                typeName: 'DeliveryRuleHeaderActionParameters'
                headerAction: 'Overwrite'
                headerName: 'X-Frame-Options'
                value: 'SAMEORIGIN'
              }
            }
          ]
        }
        {
          name: 'HttpToHttpsRedirect'
          order: 1
          conditions: [
            {
              name: 'RequestScheme'
              parameters: {
                typeName: 'DeliveryRuleRequestSchemeConditionParameters'
                matchValues: [
                  'HTTP'
                ]
                operator: 'Equal'
                negateCondition: false
                transforms: []
              }
            }
          ]
          actions: [
            {
              name: 'UrlRedirect'
              parameters: {
                typeName: 'DeliveryRuleUrlRedirectActionParameters'
                redirectType: 'Found'
                destinationProtocol: 'Https'
              }
            }
          ]
        }
        {
          name: 'AddCharsetToFiles'
          order: 2
          conditions: [
            {
              name: 'UrlFileExtension'
              parameters: {
                typeName: 'DeliveryRuleUrlFileExtensionMatchConditionParameters'
                operator: 'Equal'
                negateCondition: false
                matchValues: [
                  'js'
                  'css'
                  'json'
                ]
                transforms: []
              }
            }
          ]
          actions: [
            {
              name: 'ModifyResponseHeader'
              parameters: {
                typeName: 'DeliveryRuleHeaderActionParameters'
                headerAction: 'Append'
                headerName: 'content-type'
                value: '; charset=utf-8'
              }
            }
          ]
        }
      ]
    }
  }
}
