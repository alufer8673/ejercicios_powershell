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

for ($fila = 1; $fila -le $num; $fila++) {
    for ($columna = (2 * $fila - 1); $columna -ge 1; $columna -= 2) {
        Write-Host -NoNewline "$columna "
    }
    Write-Host ""
}