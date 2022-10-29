
@description('Generated from /subscriptions/b8f402aa-20f7-4888-b45c-3cf086dad9c3/resourceGroups/acu1-brw-aoa-rg-t5/providers/Microsoft.OperationalInsights/workspaces/acu1brwaoat5loganalytics/providers/Microsoft.SecurityInsights/alertRules/a03275df-dbcf-44c1-9c92-97fb56c88ad3')
resource adfdbcfccfbcad 'Microsoft.SecurityInsights/alertRules@2022-07-01-preview' = {
  name: 'a03275df-dbcf-44c1-9c92-97fb56c88ad3'
  etag: '"15001ff1-0000-0100-0000-6248b7460000"'
  kind: 'Scheduled'
  properties: {
    queryFrequency: 'PT5H'
    queryPeriod: 'PT5H'
    triggerOperator: 'GreaterThan'
    triggerThreshold: 0
    eventGroupingSettings: {
      aggregationKind: 'SingleAlert'
    }
    severity: 'Medium'
    query: 'let IPList = dynamic(\n    [\n    "154.223.45.38", "185.141.207.140", "185.234.73.19", "216.245.210.106", "51.91.48.210", "46.255.230.229"\n    ]\n    );\n(\nunion isfuzzy=true\n    (\n    CommonSecurityLog\n    | where isnotempty(SourceIP) or isnotempty(DestinationIP)\n    | where SourceIP in (IPList) or DestinationIP in (IPList) or Message has_any (IPList)\n    | extend IPMatch = case(SourceIP in (IPList), "SourceIP", DestinationIP in (IPList), "DestinationIP", "Message")\n    | summarize StartTimeUtc = min(TimeGenerated), EndTimeUtc = max(TimeGenerated)\n        by\n        SourceIP,\n        DestinationIP,\n        DeviceProduct,\n        DeviceAction,\n        Message,\n        Protocol,\n        SourcePort,\n        DestinationPort,\n        DeviceAddress,\n        DeviceName,\n        IPMatch\n    | extend\n        timestamp = StartTimeUtc,\n        IPCustomEntity = case(IPMatch == "SourceIP", SourceIP, IPMatch == "DestinationIP", DestinationIP, "IP in Message Field")\n    ),\n    (\n    OfficeActivity\n    | extend SourceIPAddress = ClientIP, Account = UserId\n    | where SourceIPAddress in (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        IPCustomEntity = SourceIPAddress,\n        AccountCustomEntity = Account\n    ),\n    (\n    DnsEvents\n    | extend DestinationIPAddress = IPAddresses, Host = Computer\n    | where DestinationIPAddress has_any (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        IPCustomEntity = DestinationIPAddress,\n        HostCustomEntity = Host\n    ),\n    (\n    imDns\n    | extend DestinationIPAddress = DnsResponseName, Host = Dvc\n    | where DestinationIPAddress has_any (IPList)\n    | extend timestamp = TimeGenerated, IPCustomEntity = SrcIpAddr, HostCustomEntity = Host\n    ),\n    (\n    VMConnection\n    | where isnotempty(SourceIp) or isnotempty(DestinationIp)\n    | where SourceIp in (IPList) or DestinationIp in (IPList)\n    | extend IPMatch = case(SourceIp in (IPList), "SourceIP", DestinationIp in (IPList), "DestinationIP", "None") \n    | extend\n        timestamp = TimeGenerated,\n        IPCustomEntity = case(IPMatch == "SourceIP", SourceIp, IPMatch == "DestinationIP", DestinationIp, "None"),\n        Host = Computer\n    ),\n    (\n    Event\n    | where Source == "Microsoft-Windows-Sysmon"\n    | where EventID == 3\n    | extend EvData = parse_xml(EventData)\n    | extend EventDetail = EvData.DataItem.EventData.Data\n    | extend SourceIP = EventDetail.[9].["#text"], DestinationIP = EventDetail.[14].["#text"]\n    | where SourceIP in (IPList) or DestinationIP in (IPList) \n    | extend IPMatch = case(SourceIP in (IPList), "SourceIP", DestinationIP in (IPList), "DestinationIP", "None") \n    | extend\n        timestamp = TimeGenerated,\n        AccountCustomEntity = UserName,\n        HostCustomEntity = Computer,\n        IPCustomEntity = case(IPMatch == "SourceIP", SourceIP, IPMatch == "DestinationIP", DestinationIP, "None")\n    ),\n    (\n    SigninLogs\n    | where isnotempty(IPAddress)\n    | where IPAddress in (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        AccountCustomEntity = UserPrincipalName,\n        IPCustomEntity = IPAddress\n    ),\n    (\n    AADNonInteractiveUserSignInLogs\n    | where isnotempty(IPAddress)\n    | where IPAddress in (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        AccountCustomEntity = UserPrincipalName,\n        IPCustomEntity = IPAddress\n    ),\n    (\n    W3CIISLog \n    | where isnotempty(cIP)\n    | where cIP in (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        IPCustomEntity = cIP,\n        HostCustomEntity = Computer,\n        AccountCustomEntity = csUserName\n    ),\n    (\n    AzureActivity \n    | where isnotempty(CallerIpAddress)\n    | where CallerIpAddress in (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        IPCustomEntity = CallerIpAddress,\n        AccountCustomEntity = Caller\n    ),\n    (\n    AWSCloudTrail\n    | where isnotempty(SourceIpAddress)\n    | where SourceIpAddress in (IPList)\n    | extend\n        timestamp = TimeGenerated,\n        IPCustomEntity = SourceIpAddress,\n        AccountCustomEntity = UserIdentityUserName\n    ),\n    (\n    AzureDiagnostics\n    | where ResourceType == "AZUREFIREWALLS"\n    | where Category == "AzureFirewallApplicationRule"\n    | parse msg_s with Protocol \'request from \' SourceHost \':\' SourcePort \'to \' DestinationHost \':\' DestinationPort \'. Action:\' Action\n    | where isnotempty(DestinationHost)\n    | where DestinationHost has_any (IPList)\n    | extend DestinationIP = DestinationHost\n    | extend IPCustomEntity = SourceHost\n    ),\n    (\n    AzureDiagnostics\n    | where ResourceType == "AZUREFIREWALLS"\n    | where Category == "AzureFirewallNetworkRule"\n    | parse msg_s with Protocol \'request from \' SourceHost \':\' SourcePort \'to \' DestinationHost \':\' DestinationPort \'. Action:\' Action \n    | where isnotempty(DestinationHost)\n    | where DestinationHost has_any (IPList)\n    | extend DestinationIP = DestinationHost\n    | extend IPCustomEntity = SourceHost\n    )\n)\n'
    suppressionDuration: 'PT5H'
    suppressionEnabled: false
    incidentConfiguration: {
      createIncident: true
      groupingConfiguration: {
        enabled: false
        reopenClosedIncident: false
        lookbackDuration: 'PT5H'
        matchingMethod: 'AllEntities'
        groupByEntities: []
        groupByAlertDetails: []
        groupByCustomDetails: []
      }
    }
    entityMappings: [
      {
        entityType: 'Account'
        fieldMappings: [
          {
            identifier: 'FullName'
            columnName: 'AccountCustomEntity'
          }
        ]
      }
      {
        entityType: 'Host'
        fieldMappings: [
          {
            identifier: 'FullName'
            columnName: 'HostCustomEntity'
          }
        ]
      }
      {
        entityType: 'IP'
        fieldMappings: [
          {
            identifier: 'Address'
            columnName: 'IPCustomEntity'
          }
        ]
      }
    ]
    alertDetailsOverride: {
      alertDisplayNameFormat: 'Alert from xyz'
      alertTacticsColumnName: 'Actor'
      alertSeverityColumnName: 'Account'
    }
    tactics: [
      'InitialAccess'
    ]
    techniques: [
      'T1566'
    ]
    displayName: 'rule1'
    enabled: true
    description: ''
  }
}
