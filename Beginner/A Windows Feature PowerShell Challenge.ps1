<#

A Windows Feature PowerShell Challenge - August 19, 2019
Beginner 

This challenge is centered on the idea of creating a unified command to enable or disable an optional feature on a Windows 10 desktop like Containers. 
Obviously, your first challenge is to discover what PowerShell commands you can incorporate into your function. 
The Chairman is leaning towards a single command that sets a Windows optional feature to be either enabled or disabled. 
Additional criteria will be imposed on intermediate and advanced levels.

#>


function Set-WindowsOptionalFeature
{
    param   ( 
            [Parameter(Position=0,Mandatory=$true)]
            [string]$FeatureName,
            [switch] $Enable,
            [switch] $Disable
       )

            if     ($Enable.IsPresent)
            {
                Enable-WindowsOptionalFeature -Online -FeatureName $FeatureName
            }
            elseif ($Disable.IsPresent)
            {
                Disable-WindowsOptionalFeature -Online -FeatureName $FeatureName
            }
            else 
            {
                Write-Error -Message "The -Enable or -Disable switch needs to be selected"
            }
}





