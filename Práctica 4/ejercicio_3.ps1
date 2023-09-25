<#
Ejercicio3. Escribir un programa que pida al usuario un número entero positivo y muestre
por pantalla la cuenta atrás desde ese número hasta cero separados por comas.
#>

# necesario usar -NoNewline

[int] $num = Read-Host "Introduce un número entero positivo"

while($num -gt 0){
    Write-Host -NoNewline "$num, "
    $num -= 1
}

Write-Host -NoNewline "0"