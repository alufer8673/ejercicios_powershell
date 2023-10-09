<#
Ejercicio1. Escribir un programa que pregunte el nombre del usuario en la consola y un
número entero e imprima por pantalla en líneas distintas el nombre del usuario tantas veces
como el número introducido.
#>

$nombre = Read-Host "Introduce tu nombre"
[int] $num = Read-Host "Introduce un número entero"

while($num -gt 0){
    Write-Host "$nombre"
    $num = $num - 1
}