<#
Ejercicio 4. Crea un script basado en el anterior. Debe ser una calculadora muy sencilla, en la que
se preguntará al usuario dos números y que operación desea realizar.

Ejemplo:

****** CALCULADORA ********

   1. Sumar
   2. Restar
   3. Multiplicar
   4. Dividir

¿Qué desea hacer?Elige una opción:
#>

Write-Host "****** CALCULADORA ******"
Write-Host "1. SUMAR"
Write-Host "2. RESTAR"
Write-Host "3. MULTIPLICAR"
Write-Host "4. DIVIDIR"

[int] $eleccion = Read-Host "¿Qué desea hacer? Elige una opción"
[double] $num1 = Read-Host "Introduce un número"
[double] $num2 = Read-Host "Introduce otro número"

switch($eleccion){
    {$_ -eq 1}{
        $resultado = $num1 + $num2
        Write-Host "El resultado es: $resultado"
    }
    {$_ -eq 2}{
        $resultado = $num1 - $num2
        Write-Host "El resultado es: $resultado"
    }
    {$_ -eq 3}{
        $resultado = $num1 * $num2
        Write-Host "El resultado es: $resultado"
    }
    {$_ -eq 4}{
        $resultado = $num1 / $num2
        Write-Host "El resultado es: $resultado"
    }
}