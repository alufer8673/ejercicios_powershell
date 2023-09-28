[int] $num = Read-Host "Introduce un número"

for($i = 1; $i -le $num; $i++){
    for($j = 1; $j -le $i; $j++){
        if ($j -lt $i){
            Write-Host -NoNewLine ("- ")
        }else{
            Write-Host -NoNewline "*"
        }
    }
    Write-Host ""
}

<#
for($i = 1; $i -le $num; $i++){
    for($j = 1; $j -lt $i; $j++){
        Write-Host -NoNewLine ("- ")
    }
    Write-Host "*"
}
#>

<# este código es más óptimo

for($a = 1; $a -le $num; $a++){
    Write-Host -NoNewline ("- " * ($a - 1))
    Write-Host "*"
}
#>