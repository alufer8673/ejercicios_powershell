<#
Ejercicio4. Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla
todos los números impares desde 1 hasta ese número separados por comas.
#>

[int] $num = Read-Host "Introduce un número entero positivo"

Write-Host -NoNewline "1"

for ($a = 3; $a -le $num; $a += 2){
    Write-Host -NoNewline ", $a"
}