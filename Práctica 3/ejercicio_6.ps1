<#
Ejercicio 6. Crea un script que diga si lo que se pasa por teclado es un directorio. En ese caso sacará
una lista con los archivos que contiene y subdirectorios. Debes utilizar el parámetro Recurse.
#>

$directorio = Read-Host "Introduce la ruta del archivo que quieras saber si es un directorio"

$respuesta = Test-Path $directorio -PathType Container

if ($respuesta -ieq "true"){
    Write-Host "ES UN DIRECTORIO AQUÍ TIENES UNA LISTA CON LOS ARCHIVOS QUE CONTIENE."
    Get-ChildItem -Path $directorio -Recurse
}else{
    Write-Host "El archivo introducido no es un directorio."
}