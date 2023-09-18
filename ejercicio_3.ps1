<#
Ejercicio3. Crea un script en PowerShell que pregunte al usuario por el número de horas
trabajadas y el coste por hora. Después debe mostrar por pantalla el salario que debemos
pagarle.
#>

[double] $horas_trabajadas = Read-Host "Introduce el número de horas trabajadas: "
[double] $coste_hora = Read-Host "Introduce el coste por hora: "
$salario = $horas_trabajadas * $coste_hora
Write-Host "El salario total es de: $salario"
