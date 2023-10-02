<#
Ejercicio 2 Haciendo uso de la estructura repetitiva foreach, debes leer todos los datos
del archivo usuarios.csv e imprimir el nombre, apellidos y grupo del usuario
#>

$alumno = Import-Csv 'Z:\Práctica 5\usuarios.csv' -Delimiter ","

foreach ($alu in $alumno){
    Write-Host "Alumno: $($alu.nombre) $($alu.apellidos) $($alu.grupo)"
}