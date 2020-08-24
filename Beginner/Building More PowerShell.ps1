<#
Building More PowerShell - July 31, 2019


The Chairman hopes that people have been working on the recent set of challenges. 
They were designed to meet the needs of all skill levels. 
The Chairman does not want IT Pros and PowerShell fans to think these challenges are only for advanced and experienced people. 
You can’t become advanced and experienced without using PowerShell.

Assuming you have accomplished the goals in the previous challenge, the next challenge will build upon your previous work. 
The Chairman has identified a set of tasks for each skill level. Of course, you are welcome to tackle as much as you want.

    - Modify your function to include hidden files in your totals. You probably will need to revise your function.
    - Add an alias for your command.
    - Format your total size value as KB.
    x Add as many intermediate features as you can.

Note: This is the beginner part of this challenge only. 
Intermediate and Advanced versions of this challenge will be placed into their respective folders.
#>

function Get-FileInfo 
{

    param ([string]$Path)

        #Get file information for $Path into the $Files variable. -Force to include hidden items. 
        $Files = Get-ChildItem $Path -Recurse -File -Force

        #Measure the Sum and Average of the length property
        $Files | Measure-Object -Property Length -Sum -Average | `
        

        #Select Objects for output, rounding SUM value and converting to KB 
        Select-Object @{ n = 'Computername'; e = {$env:COMPUTERNAME}}, Count, @{n= 'Sum KB'; e = {[math]::round($_.Sum / 1KB)}}, Average, @{ n = 'Rundate'; e = {Get-Date}}
}

Set-Alias -Name 'GFI' -Value Get-FileInfo

gfi C:\Temp
