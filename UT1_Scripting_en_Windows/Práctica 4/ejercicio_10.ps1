﻿<#
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
usuario se pedirán por teclado al usuario.
#>

do{
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

    switch($seleccion){
        
        a {
            $path = Read-Host "Ingresa la ruta del directorio"
            New-Item $path -ItemType directory
        }

        b {
            $path = Read-Host "Ingresa la ruta del fichero"
            New-Item $path -ItemType file
        }
        c {
            $path = Read-Host "Ingresa la ruta del directorio o archivo al que deseas cambiar el nombre"
            $nombre = Read-Host "Ingresa el nombre del archivo o directorio"
            Rename-Item $path $nombre
        }
        
        d {
            $path = Read-Host "Ingresa la ruta del directorio o archivo que deseas eliminar"
            Remove-Item $path
        }
        
        e {
            $path = Read-Host "Ingresa la ruta del archivo o directorio que deseas verificar"
            Test-Path $path
        }

        f {
            $path = Read-Host "Ingresa la ruta del directorio que quieras ver la ruta"
            Get-ChildItem $path 
        }

        g {
            Get-Date
        }
    }
    Read-Host "`nPresiona Enter para continuar"
} while ($seleccion -ine "x")