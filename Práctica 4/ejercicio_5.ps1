<#
Ejercicio 5. Crea un script que utilice for para mostrar la tabla de multiplicar de un número que se
solicita al usuario.
#>

[int] $num = Read-Host "Introduce un número entero"

$res = $num

for ($a = 1; $a -le 10; $a++){
    Write-Host "$res"
    $res = $res + $num
}