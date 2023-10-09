<#
Ejercicio 1 Crea una calculadora muy sencilla, en la que se preguntará al usuario dos
números y que operación desea realizar.

Ejemplo:

****** CALCULADORA ********

    Sumar
    Restar
    Multiplicar
    Dividir
    Salir

¿Qué desea hacer?Elige una opción:

Debes crear las funciones Sumar, Restar, Multiplicar y Dividir. Cada una de estas funciones
tendrá dos parámetros.
#>

#declaración de funciones

function sumar{
    param (
        [int]$x,
        [int]$y
    )
    $suma = $x + $y
    Write-Host "`n La respuesta es $suma `n"
}

function restar{
    param (
        [int]$x,
        [int]$y
    )
    $resta = $x - $y
    Write-Host "`n La respuesta es $resta `n"
}

function multiplicar{
    param (
        [int]$x,
        [int]$y
    )
    $multiplicacion = $x * $y 
    Write-Host "`n La respuesta es $multiplicacion `n"
}

function dividir{
    param (
        [int]$x,
        [int]$y
    )
    $division = $x / $y
    Write-Host "`n La respuesta es $division `n"
}

function salir{
    Write-Host "Hasta luego"
}

#programa principal



Write-Host "****** CALCULADORA ******"
Write-Host "1. SUMAR"
Write-Host "2. RESTAR"
Write-Host "3. MULTIPLICAR"
Write-Host "4. DIVIDIR"
Write-Host "5. SALIR `n"

do{
[int] $eleccion = Read-Host "¿Qué desea hacer? Elige una opción"

    if($eleccion -ne 5){
        [int] $num1 = Read-Host "Introduce un número"
        [int] $num2 = Read-Host "Introduce otro número"
    }

    switch($eleccion){
        1{sumar $num1 $num2}
        2{restar $num1 $num2}
        3{multiplicar $num1 $num2}
        4{dividir $num1 $num2}
        5{salir}
    }
}while($eleccion -ne 5)