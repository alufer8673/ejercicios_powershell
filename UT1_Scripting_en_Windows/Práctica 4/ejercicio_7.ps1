<#
Ejercicio 7 Escribir un programa que pida al usuario un número entero y muestre por pantalla
un triángulo rectángulo como el de más abajo, de altura el número introducido.
   
    *
    **
    ***
    ****
#>

[int] $num = Read-Host "Introduce un número entero"

for ($fila = 1; $fila -le $num; $fila++){
	for ($columna = 1; $columna -le $fila; $columna++){
		Write-Host -NoNewLine "*"
	}
	Write-Host ""
}

#for($a = 1; $a -le $num; $a++){
#    Write-Host ("*" * $a)
#}
