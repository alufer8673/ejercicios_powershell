<#
Ejercicio 5. Crea un script en el que pidas un fichero o carpeta por teclado y te diga si existe o no.
#>

$archivo = Read-Host "Introduce la ruta del fichero o carpeta que quieras comprobar si existe"

$respuesta = Test-Path $archivo

if ($respuesta -ieq "true"){
    Write-Host "EXISTE"
}else{
    Write-Host "NO EXISTE"
}