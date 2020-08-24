<#
A PowerShell Scripting Challenge for Everyone - July 19, 2019

Using your solution from the previous beginner challenge, 
turn this into a simple PowerShell function that will allow the user to specify the path. 
Your function should write the same result to the pipeline.

Note: This is the beginner part of this challenge only. 
Intermediate and Advanced versions of this challenge will be placed into their respective folders.

#>

function Get-FileInfo 
{

    param ([string]$Path)

        #Get file information into the $Files variable
        $Files = Get-ChildItem $Path -Recurse -File

        #Measure the Sum and Average of the length property
        $Files | Measure-Object -Property Length -Sum -Average| `

        #Select Objects for output
        Select-Object @{n= 'Computername'; e={$env:COMPUTERNAME}}, Count, Sum, Average, @{n= 'Rundate'; e={Get-Date}}
}