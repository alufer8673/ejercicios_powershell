<#
Ejercicio 9. Escribir un programa que almacene la cadena de caracteres contraseña en una variable,
pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta.
#>

[string] $password = "TortillaDePatata"

while($password -cne $user_password){
    [string] $user_password = Read-Host "Introduce la contraseña"
}

Write-Host "Has introducido la contraseña correcta."