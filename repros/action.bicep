resource ds 'Microsoft.Resources/deploymentScripts@2020-10-01' = {
  name: 'testModules'
  location: resourceGroup().location
  kind: 'AzurePowerShell'
  properties: {
    azPowerShellVersion: '7.5.0'
    cleanupPreference: 'OnSuccess'
    retentionInterval: 'P1D'
    scriptContent: '''
      Install-Module -Name Microsoft.Graph.Authentication,Microsoft.Graph.Applications,Microsoft.Graph.Users -Force
      
      $base = $Env:psmodulePath -split ";" | select -first 1
      New-Item -Path $base/ADOHelper -ItemType Directory -Force
      $env:ADOHelper > $base/ADOHelper/ADOHelper.psm1
      Import-Module -Name $base/ADOHelper/ADOHelper.psm1 -force

      GMO ADOHelper

      # Get-Module -Listavailable


      $Env:psmodulePath -split ";"

      #GMO
    '''
    environmentVariables: [
      {
        name: 'ADOHelper'
        value: loadTextContent('../../../release-testing/ADOHelper.psm1')
      }
    ]
  }
}
