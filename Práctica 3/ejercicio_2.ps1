<#
Ejercicio2. Escribir un programa que pregunte al usuario su edad y muestre por pantalla si es mayor
de edad o no.
#>

[int] $edad = Read-Host "Introduce tu edad "

if ($edad -ge 18 ){
    Write-Host "Al tener $edad años eres mayor de edad."
}else{
    Write-Host "Al tener $edad años eres menor de edad."
}