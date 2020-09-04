<#
A Beginner PowerShell Function Challenge - November 15, 2019

You should write a function to convert a Fahrenheit temperate to Celsius and a second function to do the opposite. 
The functions can be very simple with a single parameter for the value to convert. 
You don’t need to worry about passing values from the pipeline, error handling or anything advanced.
 The function can simply write the converted value to the pipeline as a result. 
 If you are feeling a bit more confident, have your function write an object to the pipeline with the original and converted values.

#>


function ConvertTo-Farenheit {
    param ([Parameter(Position=0)]
            [int] $Celcius)

    $Farenheit = [math]::Truncate(($Celcius * 1.8) + 32)

    Write-Host "$Celcius Celcius is equal to $Farenheit Farenheit"
}
 
function Convertto-Celcius {
    param   ([Parameter(Position=0)]
            [int] $Farenheit)

    $Celcius = [math]::Truncate(($Farenheit -32) / 1.8)

    Write-Host "$Farenheit Farenheit is equal to $Celcius Celcius"
}
