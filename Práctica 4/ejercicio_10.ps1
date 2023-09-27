<#
Ejercicio 10. Crea un script que muestre un menú con las siguientes opciones:

a) Crear una carpeta
b) Crear un fichero nuevo
c) Cambiar el nombre de un fichero o carpeta
d) Borrar un archivo o carpeta
e) Verificar si existe un fichero o carpeta
f) Mostrar el contenido de un directorio.
g) Mostar la fecha y hora actuales
x) Salir

El menú se mostrará hasta que el usuario seleccione la opción Salir. Todos los datos que necesite el
usuario se pedirán por teclado al usuario. ayor o menor que el que hay que adivinar. Se termina
cuando el usuario introduzca un 0 (Se rinde), o lo adivine (Enhorabuena).
#>

while ($seleccion -ine "x" -or $seleccion -ne 0 ){
    Write-Host "`n*********************************************`n"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"
    Write-Host "`n*********************************************`n"

    $seleccion = Read-Host "Selecciona una opción"    
}