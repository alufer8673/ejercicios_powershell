#creaci�n carpeta empresa
New-Item -Path C:\Empresa -ItemType Directory


$departamentos = Import-csv 'C:\Users\Administrador\Desktop\archivos\departamentos.csv' -Delimiter ";"

foreach ($dep in $departamentos){
    #creaci�n departamento
    New-Item -Path C:\Empresa\"$($dep.departamento)" -ItemType Directory
}

#compartir carpeta empresa -> todos podr�n acceder con modo lectura
#New-SmbShare -Path C:\Empresa -Name Empresa -ReadAccess Todos

#compartir los departamentos
foreach ($dep in $departamentos){
    New-SmbShare -Path C:\Empresa\"$($dep.departamento)" -Name "$($dep.departamento)" -ChangeAccess "$($dep.departamento)" -FullAccess Administradores -ReadAccess "Usuarios del dominio"

#    Grant-SmbShareAccess
}