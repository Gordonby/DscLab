#This initiates a compilation of a DSC Configuration.
#The portal doesn't allow these params to be set
#So we have to do it by PowerShell.

param(
    $AutomationAccountName="dscauto",
    $AutomationAccountResourceGroup="DSCPlay",
    $ConfigurationName = "GDomain"
)

Login-AzureRmAccount

$ConfigData = @{
    AllNodes = @(
        @{
            NodeName = "SimpleDomJoin" 
            PSDscAllowPlainTextPassword = $True
            PSDscAllowDomainUser = $True
        }
    )
}

Start-AzureRmAutomationDscCompilationJob -ResourceGroupName $AutomationAccountResourceGroup -AutomationAccountName $AutomationAccountName -ConfigurationName $ConfigurationName -ConfigurationData $ConfigData
