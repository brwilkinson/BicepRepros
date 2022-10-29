resource webSite 'Microsoft.Web/sites@2021-03-01' existing = {
  name: 'acu1-brw-aoa-t5-be'
}

resource connectionstrings 'Microsoft.Web/sites/config@2021-03-01' = {
  name: 'connectionstrings'
  parent: webSite
  properties: {
    SQL01: {
      value: 'teststringconnetionvalue2'
      type: 'SQLServer'
    }
  }
}
