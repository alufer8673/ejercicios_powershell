<#
Ejercicio 8 Escribir un programa que pida al usuario un número entero y muestre por
pantalla un triángulo rectángulo como el de más abajo.

1
3 1
5 3 1
7 5 3 1
9 7 5 3 1
#>

[int] $num = Read-Host "Introduce un número entero"

for ($i = 1; $i -le $num; $i++) {
    for ($j = (2 * $i - 1); $j -ge 1; $j -= 2) {
        Write-Host -NoNewline "$j "
    }
    Write-Host ""
}