$num = Read-Host "Introduce un número"

for ($fila = 1; $fila -le $num; $fila++){
    for($columna = $fila; $columna -ge 1; $columna--){
        Write-Host -NoNewline "$columna "
    }
    Write-Host ""
}