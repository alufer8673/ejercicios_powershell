<#
Ejercicio 3. Crea un script en el que se pida dos números enteros al usuario. El script debe indicar si el
primer número es mayor, menor o igual que el otro.
#>

[int] $num1 = Read-Host "Introduce un número"
[int] $num2 = Read-Host "Introduce otro número"

switch ($num1){
    {$_ -gt $num2}{Write-Host "$num1 es mayor que $num2"}
    {$_ -lt $num2}{Write-Host "$num1 es menor que $num2"}
    {$_ -eq $num2}{Write-Host "$num1 es igual que $num2"}
}