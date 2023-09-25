<#
Ejercicio 7 Escribir un programa que pida al usuario un número entero y muestre por pantalla
un triángulo rectángulo como el de más abajo, de altura el número introducido.
   
    *
    **
    ***
    ****
#>

[int] $num = Read-Host "Introduce un número entero"

for($a = 1; $a -le $num; $a++){
    Write-Host ("*" * $a)
}
