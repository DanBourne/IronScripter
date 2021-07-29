﻿<#
Let the PowerShell Challenges Begin - June 7, 2019

The Chairman has decided that it is in the best interests of his Iron Scripters, and those that wish to attain that valued designation, that training continue year-round. 
To that end, he has commissioned a series of PowerShell challenges. These challenges will range in complexity and be tagged accordingly. 
Although, you are encouraged to try your hand at all posted challenges. Some solutions may require complex coding, perhaps a PowerShell function. 
Others might be no more than a line or two of PowerShell that you would type interactively in the console. You are encouraged to share your work in social media, blogs, or sites like GitHub. 
are welcome to post links to your work in comments to each challenge. Shall we begin?

For your first challenge exercise, consider these two arrays of strings.

$target = "Spooler", "Spork Client", "WinRM", "Spork Agent Service", "BITS","WSearch"
$list   = "winrm", "foo", "spooler", "spor*", "bar"

Your goal is to find the values in $List that do not match anything in $Target. Your code will be successful if you get foo and bar for results. This exercise is classified with an Intermediate level.

#>


$Target = "Spooler", "Spork Client", "WinRM", "Spork Agent Service", "BITS","WSearch"
$List   = "winrm", "foo", "spooler", "spor*", "bar"

$List | Where-Object -FilterScript {(-Not($Target -like $_))}