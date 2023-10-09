<#
Ejercicio 1. Crea un script en lenguaje PowerShell que muestre al usuario los siguientes mensajes:

    - Hola nombre de usuario
    - Tu directorio de trabajo es directorio
    - Perteneces al dominio Nombre_dominio
    - Tu equipo se llama Nombre_equipo.

#>

Write-Host "Hola $env:USERNAME"
Write-Host "Tu directorio de trabajo es $env:USERPROFILE"
Write-Host "Perteneces al dominio $env:USERDOMAIN"
Write-Host "Tu equipo se llama $env:COMPUTERNAME"