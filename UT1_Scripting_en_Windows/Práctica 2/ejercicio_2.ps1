<#
Ejercicio2. Crea un script en PowerShell que pida dos números al usuario e imprima por
pantalla su suma, la resta, la multiplicación, división y resto.
#>

[int] $num1 = Read-Host "Introduce un número: "
[int] $num2 = Read-Host "Introduce otro número: "

$suma = $num1 + $num2
$resta = $num1 - $num2
$multiplicacion = $num1 * $num2
$division = $num1 / $num2
$resto = $num1 % $num2

Write-Host "Suma: $suma"
Write-Host "Resta: $resta"
Write-Host "Multiplicación: $multiplicacion"
Write-Host "División: $division"
Write-Host "Resto: $resto"