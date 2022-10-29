@description('Generated from /subscriptions/77196dc9-b5af-463b-b8de-f7e6232eae12/providers/Microsoft.Authorization/roleDefinitions/5f1f3104-b054-47df-866e-526944a43f0d')
resource DevOpsRoleDefintion 'Microsoft.Authorization/roleDefinitions@2018-01-01-preview' = {
  name: '5f1f3104-b054-47df-866e-526944a43f0d'
  properties: {
    roleName: 'CSEO DevOps Role'
    type: 'CustomRole'
    description: 'DSRE-approved custom role for CSEO Developers in compliance with PTA (Protect the Admin) and LPA (Least Privileged Access) guidelines.'
    assignableScopes: [
      '/subscriptions/3715d0c5-62ab-4424-936a-7d9f9977c681'
      '/providers/Microsoft.Management/managementGroups/e1ee3852-b508-491b-8f1c-04c7e42687f6'
    ]
    permissions: [
      {
        actions: [
          'Microsoft.Authorization/locks/*'
          'Microsoft.Authorization/roleDefinitions/*'
          'Microsoft.AnalysisServices/servers/*'
          'Microsoft.Compute/*'
          'Microsoft.Network/*'
          'Microsoft.Resources/*'
          'Microsoft.Storage/*'
          'Microsoft.ContainerService/*'
          'Microsoft.ContainerRegistry/*'
          'Microsoft.ApiManagement/service/*'
          'Microsoft.Authorization/*/read'
          'Microsoft.Insights/alertRules/*'
          'Microsoft.ResourceHealth/availabilityStatuses/read'
          'Microsoft.Resources/deployments/*'
          'Microsoft.Resources/subscriptions/resourceGroups/read'
          'Microsoft.Support/*'
          'Microsoft.Insights/metricAlerts/*'
          'Microsoft.Insights/components/*'
          'Microsoft.Insights/webtests/*'
          'Microsoft.AzureStack/registrations/products/*/action'
          'Microsoft.AzureStack/registrations/products/read'
          'Microsoft.AzureStack/registrations/read'
          'Microsoft.Network/virtualNetworks/read'
          'Microsoft.RecoveryServices/locations/*'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/operationResults/*'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/*'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/refreshContainers/action'
          'Microsoft.RecoveryServices/Vaults/backupJobs/*'
          'Microsoft.RecoveryServices/Vaults/backupJobsExport/action'
          'Microsoft.RecoveryServices/Vaults/backupOperationResults/*'
          'Microsoft.RecoveryServices/Vaults/backupPolicies/*'
          'Microsoft.RecoveryServices/Vaults/backupProtectableItems/*'
          'Microsoft.RecoveryServices/Vaults/backupProtectedItems/*'
          'Microsoft.RecoveryServices/Vaults/backupProtectionContainers/*'
          'Microsoft.RecoveryServices/Vaults/backupSecurityPIN/*'
          'Microsoft.RecoveryServices/Vaults/backupUsageSummaries/read'
          'Microsoft.RecoveryServices/Vaults/certificates/*'
          'Microsoft.RecoveryServices/Vaults/extendedInformation/*'
          'Microsoft.RecoveryServices/Vaults/monitoringAlerts/read'
          'Microsoft.RecoveryServices/Vaults/monitoringConfigurations/*'
          'Microsoft.RecoveryServices/Vaults/read'
          'Microsoft.RecoveryServices/Vaults/registeredIdentities/*'
          'Microsoft.RecoveryServices/Vaults/usages/*'
          'Microsoft.Storage/storageAccounts/read'
          'Microsoft.RecoveryServices/Vaults/backupstorageconfig/*'
          'Microsoft.RecoveryServices/Vaults/backupconfig/*'
          'Microsoft.RecoveryServices/Vaults/backupValidateOperation/action'
          'Microsoft.RecoveryServices/Vaults/write'
          'Microsoft.RecoveryServices/Vaults/backupOperations/read'
          'Microsoft.RecoveryServices/Vaults/backupEngines/read'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/backupProtectionIntent/*'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/protectableContainers/read'
          'Microsoft.RecoveryServices/locations/backupStatus/action'
          'Microsoft.RecoveryServices/locations/backupPreValidateProtection/action'
          'Microsoft.RecoveryServices/locations/backupValidateFeatures/action'
          'Microsoft.RecoveryServices/Vaults/monitoringAlerts/write'
          'Microsoft.RecoveryServices/operations/read'
          'Microsoft.RecoveryServices/locations/operationStatus/read'
          'Microsoft.RecoveryServices/Vaults/backupProtectionIntents/read'
          'Microsoft.Billing/*/read'
          'Microsoft.Commerce/*/read'
          'Microsoft.Consumption/*/read'
          'Microsoft.Management/managementGroups/read'
          'Microsoft.CostManagement/*/read'
          'Microsoft.Blockchain/blockchainMembers/transactionNodes/read'
          'Microsoft.Cdn/edgenodes/read'
          'Microsoft.Cdn/operationresults/*'
          'Microsoft.Cdn/profiles/endpoints/*'
          'Microsoft.Cdn/profiles/*'
          'Microsoft.ClassicNetwork/*'
          'Microsoft.ClassicStorage/storageAccounts/*'
          'Microsoft.ClassicCompute/domainNames/*'
          'Microsoft.ClassicCompute/virtualMachines/*'
          'Microsoft.ClassicNetwork/reservedIps/link/action'
          'Microsoft.ClassicNetwork/reservedIps/read'
          'Microsoft.ClassicNetwork/virtualNetworks/join/action'
          'Microsoft.ClassicNetwork/virtualNetworks/read'
          'Microsoft.ClassicStorage/storageAccounts/disks/read'
          'Microsoft.ClassicStorage/storageAccounts/images/read'
          'Microsoft.ClassicStorage/storageAccounts/listKeys/action'
          'Microsoft.ClassicStorage/storageAccounts/read'
          'Microsoft.CognitiveServices/*'
          'Microsoft.Features/features/read'
          'Microsoft.Features/providers/features/read'
          'Microsoft.Insights/diagnosticSettings/*'
          'Microsoft.Insights/logDefinitions/read'
          'Microsoft.Insights/metricdefinitions/read'
          'Microsoft.Insights/metrics/read'
          'Microsoft.Resources/deployments/operations/read'
          'Microsoft.Resources/subscriptions/operationresults/read'
          'Microsoft.Resources/subscriptions/read'
          'Microsoft.Resources/subscriptions/resourcegroups/deployments/*'
          'Microsoft.Consumption/*'
          'Microsoft.CostManagement/*'
          'Microsoft.Advisor/*'
          'Microsoft.Databox/*'
          'Microsoft.DataFactory/dataFactories/*'
          'Microsoft.DataFactory/factories/*'
          'Microsoft.EventGrid/eventSubscriptions/write'
          'Microsoft.DataLakeAnalytics/accounts/*'
          'Microsoft.Compute/availabilitySets/read'
          'Microsoft.Compute/virtualMachines/*/read'
          'Microsoft.Compute/virtualMachines/deallocate/action'
          'Microsoft.Compute/virtualMachines/read'
          'Microsoft.Compute/virtualMachines/restart/action'
          'Microsoft.Compute/virtualMachines/start/action'
          'Microsoft.DevTestLab/*/read'
          'Microsoft.DevTestLab/labs/claimAnyVm/action'
          'Microsoft.DevTestLab/labs/createEnvironment/action'
          'Microsoft.DevTestLab/labs/ensureCurrentUserProfile/action'
          'Microsoft.DevTestLab/labs/formulas/delete'
          'Microsoft.DevTestLab/labs/formulas/read'
          'Microsoft.DevTestLab/labs/formulas/write'
          'Microsoft.DevTestLab/labs/policySets/evaluatePolicies/action'
          'Microsoft.DevTestLab/labs/virtualMachines/claim/action'
          'Microsoft.DevTestLab/labs/virtualmachines/listApplicableSchedules/action'
          'Microsoft.DevTestLab/labs/virtualMachines/getRdpFileContents/action'
          'Microsoft.Network/loadBalancers/backendAddressPools/join/action'
          'Microsoft.Network/loadBalancers/inboundNatRules/join/action'
          'Microsoft.Network/networkInterfaces/*/read'
          'Microsoft.Network/networkInterfaces/join/action'
          'Microsoft.Network/networkInterfaces/read'
          'Microsoft.Network/networkInterfaces/write'
          'Microsoft.Network/publicIPAddresses/*/read'
          'Microsoft.Network/publicIPAddresses/join/action'
          'Microsoft.Network/publicIPAddresses/read'
          'Microsoft.Network/virtualNetworks/subnets/join/action'
          'Microsoft.Resources/deployments/read'
          'Microsoft.Storage/storageAccounts/listKeys/action'
          'Microsoft.DocumentDb/databaseAccounts/*'
          'Microsoft.Network/virtualNetworks/subnets/joinViaServiceEndpoint/action'
          'Microsoft.EventGrid/eventSubscriptions/*'
          'Microsoft.EventGrid/topicTypes/eventSubscriptions/read'
          'Microsoft.EventGrid/locations/eventSubscriptions/read'
          'Microsoft.EventGrid/locations/topicTypes/eventSubscriptions/read'
          'Microsoft.AAD/*/read'
          'Microsoft.AAD/domainServices/*/read'
          'Microsoft.AAD/domainServices/oucontainer/*'
          'Microsoft.KeyVault/*'
          'Microsoft.LabServices/labAccounts/*/read'
          'Microsoft.LabServices/labAccounts/createLab/action'
          'Microsoft.LabServices/labAccounts/getRegionalAvailability/action'
          'Microsoft.LabServices/labAccounts/getPricingAndAvailability/action'
          'Microsoft.LabServices/labAccounts/getRestrictionsAndUsage/action'
          '*/read'
          'Microsoft.Automation/automationAccounts/*'
          'Microsoft.ClassicCompute/virtualMachines/extensions/*'
          'Microsoft.Compute/virtualMachines/extensions/*'
          'Microsoft.OperationalInsights/*'
          'Microsoft.OperationsManagement/*'
          'Microsoft.Insights/logdefinitions/*'
          'Microsoft.Insights/metricDefinitions/*'
          'Microsoft.Logic/*'
          'Microsoft.Web/connectionGateways/*'
          'Microsoft.Web/connections/*'
          'Microsoft.Web/customApis/*'
          'Microsoft.Web/serverFarms/read'
          'Microsoft.Web/sites/functions/listSecrets/action'
          'Microsoft.ManagedIdentity/userAssignedIdentities/read'
          'Microsoft.ManagedIdentity/userAssignedIdentities/write'
          'Microsoft.ManagedIdentity/userAssignedIdentities/delete'
          'Microsoft.AlertsManagement/alerts/*'
          'Microsoft.AlertsManagement/alertsSummary/*'
          'Microsoft.Insights/actiongroups/*'
          'Microsoft.Insights/activityLogAlerts/*'
          'Microsoft.Insights/eventtypes/*'
          'Microsoft.Insights/Metrics/*'
          'Microsoft.Insights/Register/Action'
          'Microsoft.Insights/scheduledqueryrules/*'
          'Microsoft.Insights/workbooks/*'
          'Microsoft.OperationalInsights/workspaces/intelligencepacks/*'
          'Microsoft.OperationalInsights/workspaces/savedSearches/*'
          'Microsoft.OperationalInsights/workspaces/search/action'
          'Microsoft.OperationalInsights/workspaces/sharedKeys/action'
          'Microsoft.OperationalInsights/workspaces/storageinsightconfigs/*'
          'Microsoft.WorkloadMonitor/monitors/*'
          'Microsoft.AlertsManagement/smartDetectorAlertRules/*'
          'Microsoft.AlertsManagement/actionRules/*'
          'Microsoft.AlertsManagement/smartGroups/*'
          'Microsoft.Cache/redis/*'
          'Microsoft.Authorization/policyassignments/*'
          'Microsoft.Authorization/policydefinitions/*'
          'Microsoft.Authorization/policysetdefinitions/*'
          'Microsoft.PolicyInsights/*'
          'Microsoft.Scheduler/jobcollections/*'
          'Microsoft.Search/searchServices/*'
          'Microsoft.operationalInsights/workspaces/*/read'
          'Microsoft.Security/*/read'
          'Microsoft.RecoveryServices/locations/allocatedStamp/read'
          'Microsoft.RecoveryServices/locations/allocateStamp/action'
          'Microsoft.RecoveryServices/Vaults/certificates/write'
          'Microsoft.RecoveryServices/vaults/replicationAlertSettings/*'
          'Microsoft.RecoveryServices/vaults/replicationEvents/read'
          'Microsoft.RecoveryServices/vaults/replicationFabrics/*'
          'Microsoft.RecoveryServices/vaults/replicationJobs/*'
          'Microsoft.RecoveryServices/vaults/replicationPolicies/*'
          'Microsoft.RecoveryServices/vaults/replicationRecoveryPlans/*'
          'Microsoft.RecoveryServices/Vaults/usages/read'
          'Microsoft.RecoveryServices/Vaults/vaultTokens/read'
          'Microsoft.RecoveryServices/Vaults/monitoringAlerts/*'
          'Microsoft.RecoveryServices/vaults/replicationOperationStatus/read'
          'Microsoft.Network/networkSecurityGroups/*'
          'Microsoft.Network/routeTables/*'
          'Microsoft.Sql/locations/*/read'
          'Microsoft.Sql/managedInstances/*'
          'Microsoft.Network/virtualNetworks/subnets/*'
          'Microsoft.Network/virtualNetworks/*'
          'Microsoft.Storage/storageAccounts/*'
          'Microsoft.Sql/servers/*'
          'Microsoft.Compute/availabilitySets/*'
          'Microsoft.Compute/locations/*'
          'Microsoft.Compute/virtualMachines/*'
          'Microsoft.Compute/virtualMachineScaleSets/*'
          'Microsoft.Compute/disks/write'
          'Microsoft.Compute/disks/read'
          'Microsoft.Compute/disks/delete'
          'Microsoft.DevTestLab/schedules/*'
          'Microsoft.Network/applicationGateways/backendAddressPools/join/action'
          'Microsoft.Network/loadBalancers/inboundNatPools/join/action'
          'Microsoft.Network/loadBalancers/probes/join/action'
          'Microsoft.Network/loadBalancers/read'
          'Microsoft.Network/locations/*'
          'Microsoft.Network/networkInterfaces/*'
          'Microsoft.Network/networkSecurityGroups/join/action'
          'Microsoft.Network/networkSecurityGroups/read'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/backupProtectionIntent/write'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/*/read'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/read'
          'Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/write'
          'Microsoft.RecoveryServices/Vaults/backupPolicies/read'
          'Microsoft.RecoveryServices/Vaults/backupPolicies/write'
          'Microsoft.SqlVirtualMachine/*'
          'Microsoft.Web/serverFarms/*'
          'Microsoft.Web/hostingEnvironments/Join/Action'
          'Microsoft.Web/certificates/*'
          'Microsoft.Web/listSitesAssignedToHostName/read'
          'Microsoft.Web/sites/*'
          'Microsoft.ServiceBus/*'
          'Microsoft.EventHub/*'
          'Microsoft.Attestation/attestationProviders/*'
          'Microsoft.HDInsight/*/read'
          'Microsoft.HDInsight/clusters/getGatewaySettings/action'
          'Microsoft.HDInsight/clusters/updateGatewaySettings/action'
          'Microsoft.HDInsight/clusters/configurations/*'
          'Microsoft.Blueprint/blueprints/*'
          'Microsoft.SecurityInsights/*/read'
          'Microsoft.SecurityInsights/cases/*'
          'Microsoft.SecurityInsights/incidents/*'
          'Microsoft.OperationalInsights/workspaces/analytics/query/action'
          'Microsoft.OperationalInsights/workspaces/read'
          'Microsoft.OperationalInsights/workspaces/dataSources/read'
          'Microsoft.OperationalInsights/workspaces/savedSearches/read'
          'Microsoft.OperationsManagement/solutions/read'
          'Microsoft.OperationalInsights/workspaces/query/read'
          'Microsoft.OperationalInsights/workspaces/query/*/read'
          'Microsoft.Insights/workbooks/read'
          'Microsoft.SignalRService/*'
          'Microsoft.HybridCompute/machines/read'
          'Microsoft.HybridCompute/machines/write'
          'Microsoft.GuestConfiguration/guestConfigurationAssignments/read'
          'Microsoft.Resources/deployments/write'
          'Microsoft.Kubernetes/connectedClusters/Write'
          'Microsoft.Kubernetes/connectedClusters/read'
          'Microsoft.Solutions/applications/*'
          'Microsoft.Solutions/register/action'
          'Microsoft.Resources/subscriptions/resourceGroups/*'
          'Microsoft.Marketplace/privateStores/write'
          'Microsoft.Marketplace/privateStores/action'
          'Microsoft.Marketplace/privateStores/delete'
          'Microsoft.Marketplace/privateStores/offers/write'
          'Microsoft.Marketplace/privateStores/offers/action'
          'Microsoft.Marketplace/privateStores/offers/delete'
          'Microsoft.ContainerService/managedClusters/read'
          'Microsoft.ContainerService/managedClusters/write'
          'Microsoft.Synapse/*'
          'Microsoft.Databricks/*'
          'Microsoft.AppConfiguration/*'
          'Microsoft.Portal/dashboards/*'
          'Microsoft.Insights/autoscalesettings/write'
          'Microsoft.Security/locations/jitNetworkAccessPolicies/initiate/action'
          'Microsoft.Security/locations/jitNetworkAccessPolicies/*/read'
          'Microsoft.Security/pricings/read'
          'Microsoft.Security/policies/read'
          'Microsoft.Batch/*'
          'Microsoft.MachineLearningServices/*'
        ]
        notActions: [
          'Microsoft.Authorization/*/Delete'
          'Microsoft.Authorization/*/Write'
          'Microsoft.Authorization/elevateAccess/Action'
          'Microsoft.Blueprint/blueprintAssignments/write'
          'Microsoft.Blueprint/blueprintAssignments/delete'
        ]
        dataActions: []
        notDataActions: []
      }
    ]
    createdOn: '2020-03-03T07:33:36.0699323Z'
    updatedOn: '2021-07-07T20:52:55.3288790Z'
    createdBy: '875833f1-f4a2-4851-a00e-93dfd81a8689'
    updatedBy: 'a8c04ce3-f193-4d6a-a2b8-811896cae783'
  }
}
