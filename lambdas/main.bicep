

module SFMDashboard 'SFM-Cluster-Dashboard.bicep' = {
  name: 'dp-dashboard-${SFM.name}'
  params: {
    Deployment: Deployment
    DeploymentURI: DeploymentURI
    sfmInfo: sfmInfo
    sfmClusterRG: 'SFC_${SFM.properties.clusterId}'
    Global: Global
    Environment: Environment
    Prefix: Prefix
  }
}
