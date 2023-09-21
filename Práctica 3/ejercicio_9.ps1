<#
Ejercicio 9. Los tramos impositivos para la declaración de la renta en un determinado país
son los siguientes: Renta Tipo impositivo Menos de 10000€ 5% Entre 10000€ y 20000€ 15%
Entre 20000€ y 35000€ 20% Entre 35000€ y 60000€ 30% Más de 60000€ 45% Escribir un
programa que pregunte al usuario su renta anual y muestre por pantalla el tipo impositivo
que le corresponde.
#>

[int]$renta_anual = Read-Host "¿Cuál es tu renta anual?"

switch($renta_anual){
    {$_ -lt 10000}{
        Write-Host "Tipo impositivos del 5%"
    }
    {$_ -ge 10000 -and $_ -lt 20000}{
        Write-Host "Tipo impositivo del 15%"
    }
    {$_ -ge 20000 -and $_ -lt 35000}{
        Write-Host "Tipo impositivo del 20%"
    }
    {$_ -ge 35000 -and $_ -lt 60000}{
        Write-Host "Tipo impositivo del 30%"
    }
    {$_ -ge 60000}{
        Write-Host "Tipo impositivo del 45%"
    }
}