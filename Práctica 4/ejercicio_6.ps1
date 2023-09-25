<#
Ejercicio 6. Crea un script en lenguaje PowerShell que sea un juego de adivinar un número de 0 a 100.
El número se pondrá fijo al principio del procedimiento. Se irá preguntando al usuario números y se
dirá si es mayor o menor en caso de no adivinar el numero. Al adivinar el número mostrará un mensaje
de enhorabuena y se detendrá el juego.
#>

$respuesta = 33

[int] $num = Read-Host "Adivina el número del 0 al 100 `nIntroduce un número"

while($respuesta -ne $num){
    if ($num -lt $respuesta){
        Write-Host "$num es menor"
    }else{
        Write-Host "$num es mayor"
    }
    [int] $num = Read-Host "Introduce otro número"
}

Write-Host "¡Enhorabuena $respuesta es el resultado!"