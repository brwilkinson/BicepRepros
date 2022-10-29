$Template = './devOpsRoleHAAPP.bicep'

# $MgId = 'HA-APP-online'

New-AzManagementGroupDeployment -ManagementGroupId 'HA-APP-online' -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ scope = 'HA-APP-online'; name = 'HA-APP' }
New-AzManagementGroupDeployment -ManagementGroupId 'HA-APP-management' -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ scope = 'HA-APP-management' ; name = 'HA-APP' }

New-AzSubscriptionDeployment -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ name = 'MSDN 1' }
New-AzSubscriptionDeployment -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ name = 'MSDN 2' }
New-AzSubscriptionDeployment -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ name = 'MSDN 3' }
New-AzSubscriptionDeployment -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ name = 'MSDN 4' }
New-AzSubscriptionDeployment -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ name = 'MSDN 5' }
New-AzSubscriptionDeployment -Location centralus -TemplateFile $Template -Verbose -TemplateParameterObject @{ name = 'MSDN 6' }

