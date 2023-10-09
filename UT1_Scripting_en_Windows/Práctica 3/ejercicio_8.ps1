<#
Ejercicio 8. Los alumnos de un curso se han dividido en dos grupos A y B de acuerdo al sexo
y el nombre. El grupo A esta formado por las mujeres con un nombre anterior a la M y los
hombres con un nombre posterior a la N y el grupo B por el resto. Escribir un programa que
pregunte al usuario su nombre y sexo, y muestre por pantalla el grupo que le corresponde.
#>

$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "¿Eres hombre o mujer?"

 if ($sexo -ieq "mujer" -and $nombre -le "M*"){
    Write-Host "Perteneces al grupo A."
 }elseif ($sexo -ieq "hombre" -and $nombre -ge "N*"){
    Write-Host "Perteneces al grupo A."
 }else{
    Write-Host "Perteneces al grupo B."
 }