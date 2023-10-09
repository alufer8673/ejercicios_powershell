<#
Ejercicio 7. Escribir un programa que almacene la cadena de caracteres contraseña en una
variable, pregunte al usuario por la contraseña e imprima por pantalla si la contraseña
introducida por el usuario coincide con la guardada en la variable sin tener en cuenta
mayúsculas y minúsculas.
#>

$contraseña = "tortillapatata"
$contraseña_user = Read-Host "Introduzca la contraseña"

if($contraseña_user -ieq $contraseña){
    Write-Host "Contraseña correcta"
}else{
    Write-Host "Contraseña incorrecta"
}