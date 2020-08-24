<#
PowerShell Beginners Have to Start Somewhere - July 15, 2019

Get all files in a given folder including subfolders and display a result that shows the total number of files, 
the total size of all files, the average file size, the computer name, and the date when you ran the command.

#>


#Get file information into the $Files variable
$Files = Get-ChildItem C:\Temp -Recurse -File

#Measure the Sum and Average of the length property
$Files | Measure-Object -Property Length -Sum -Average| `

#Select Objects for output
Select-Object @{ n = 'Computername'; e = {$env:COMPUTERNAME}}, Count, Sum, Average, @{ n = 'Rundate'; e = {Get-Date}}


