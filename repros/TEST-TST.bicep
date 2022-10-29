// param SASStart string = '${utcNow('yyyy-MM')}-01'
param now string = utcNow('F')
param month string = utcNow('MM')
param year string = utcNow('yyyy')

resource saaccountidglobalsource 'Microsoft.Storage/storageAccounts@2021-09-01' existing = {
  name: 'acu1brwpstg1saglobal'
  scope: resourceGroup('ACU1-BRW-PST-RG-G1')
}

// Roll the SAS token one per month, length of 6 months.
var DSCSAS = saaccountidglobalsource.listServiceSAS('2021-09-01', {
  canonicalizedResource: '/blob/${saaccountidglobalsource.name}/acu1-pst-stageartifacts-benwilk'
  signedResource: 'c'
  signedProtocol: 'https'
  signedPermission: 'r'
  signedServices: 'b'
  signedExpiry: SASStart
  keyToSign: 'key1'
}).serviceSasToken

var SASStart = dateTimeAdd('${year}-${padLeft((int(month) - (int(month) -1) % 3),2,'0')}-01', 'P9M')
                       //  '${year}-${padLeft((item       -       (item -1) % 3),2,'0')}-01'

// mod 3, add 1
var modMonth = padLeft(int(month) - 1 % 3,2,'0')


output SASStart string = SASStart
output end string = dateTimeAdd(SASStart, 'P9M')
output SAS string = '?${DSCSAS}'
output now string = now
output monthInt int = int(month) - (int(month) -1) % 3
output expire array = [for (item, index) in range(1,12): {
  item: item
  string: '${year}-${padLeft((item - (item -1) % 3),2,'0')}-01'
  string6m: dateTimeAdd('${year}-${padLeft((item - (item -1) % 3),2,'0')}-01', 'P9M')
} ]
