<#
A PowerShell Word Play Challenge - April 30, 2020

When you create a string of text in PowerShell, each character can also be represented by its underlying [CHAR] value which actually has an integer value. 
The value can be turned back into the original string character.
Your challenge is to define a variable with a string of text, like $w=”Iron Scripter”. 
Write a PowerShell expression that will give you the sum of the integer values for each character in the string.
The second part of the challenge is to display the text using its integer values.
#>


$Word = Read-Host -Prompt "Enter a word to convert to an integer"
#Part 1
foreach ($Letter in [char[]]$Word)
    {
    $LetterAsInt = $Letter -as [int32]
    $LetterAsIntSum += $LetterAsInt
    }

#Part 2
($Word.ToCharArray() | ForEach-Object {$_ -as [int] }) -join " "


