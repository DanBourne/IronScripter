<#
Are You Listening to Me November 27, 2019

The Beginner Challenge

Write a command to display listening and established connections on a computer’s primary IPv4 address. 
That is, the IPv4 address other than 0.0.0.0, 127.0.0.1, and 169.254.*. You should display:

    the computer name
    the local port and IP address
    the remote port and IP address
    the connection state
    the owning process
    when the connection was created.
    If you are feeling motivated, add a property that shows the age of the connection

You can manually specify the local IP address if you know it. Although it would be better to use another command to retrieve the address.

This is not a one-line challenge. Nor does it really need to be a script. Use as many commands as you need to achieve the task.
Once you have that, then you might see if you can turn it into a parameterized script that lets you specify a computer name.
#>


$IP = Get-CimInstance Win32_NetworkAdapterConfiguration -ComputerName $env:COMPUTERNAME | Where-Object -FilterScript {$_.DNSDomain -ne $null} 

    
Get-NetTCPConnection -State Listen,Established -LocalAddress $IP.IPAddress |

    Select-Object -Property @{n = "Computer Name" ; e = {$env:COMPUTERNAME}}, LocalAddress, LocalPort, RemoteAddress, RemotePort, State,

    OwningProcess, CreationTime, @{n = "Process_Age(m)"; e = {New-TimeSpan -Start $($_.CreationTime) -End $(Get-Date) | Select-Object -ExpandProperty TotalMinutes}} |

    Format-Table