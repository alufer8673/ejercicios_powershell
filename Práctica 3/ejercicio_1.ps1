<#
Ejercicio 1. Crea un script que solicite un número al usuario. El programa debe indicar si el número es impar o par.
#>

[int] $num = Read-Host "Introduce un número "

If($num % 2 -eq 0) {
    Write-Host "El número $num es par"
}Else{
    Write-Host "El número $num es impar"
}