<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.152
	 Created on:   	14/06/2018 14:56
	 Created by:   	danie
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

if (-not (Get-Module -Name 'OperationsManager'))
{
	if (Get-Module -ListAvailable | Where-Object { $_.name -eq 'OperationsManager' })
	{
		$LogMessages += "The Operations Manager Module was not found...importing the Operations Manager Module" + $Global:NewLine
		load_module OperationsManager
	}
	else
	{
		$LogMessages += "The Operations Manager Module is not availbale on this system --- console will not function" + $Global:NewLine
		exit
	}
}
else
{
	$LogMessages += "The Operations Manager Module is loaded" + $Global:NewLine
}