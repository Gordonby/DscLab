# Azure DSC Lab

# Exercise 1 : Deploy Windows VM

1. In the Azure Portal, deploy a Windows 2016 VM in a new resource group and Vnet. 
https://ms.portal.azure.com/#create/Microsoft.WindowsServer2016Datacenter-ARM

1. In the Resource Group, create an Azure Automation account in the new resource group
https://ms.portal.azure.com/#create/Microsoft.AutomationAccount

1. Download the IIS DSC file;
https://raw.githubusercontent.com/Gordonby/DscLab/master/DscScripts/IIS.ps1

1. Once the Automation account has been created, In the *DSC Configurations* section create a new configuration, uploading the IIS.ps1 file.

1. After the file has been uploaded, return to the *DSC Configurations* section and choose to *Compile*.

1. Wait for the script to compile and check that the 3 node configurations have been accepted.

1. On the *DSC Nodes* section, choose to Add an Azure VM.  Select the VM that you added.  Monitor the configuration of the VM.

1. RDP onto the VM using the Public IP to check that the Web Server Configuration has been applied.

# Exercise 2

1. Download and inspect the ARM template;
https://github.com/Azure/azure-quickstart-templates/tree/master/201-web-app-vm-dsc