#creación carpeta empresa
New-Item -Path C:\Empresa -ItemType Directory


$departamentos = Import-csv 'C:\Users\Administrador\Desktop\archivos\departamentos.csv' -Delimiter ";"

foreach ($dep in $departamentos){
    #creación departamento
    New-Item -Path C:\Empresa\"$($dep.departamento)" -ItemType Directory
}

#compartir carpeta empresa -> todos podrán acceder con modo lectura
#New-SmbShare -Path C:\Empresa -Name Empresa -ReadAccess Todos

#compartir los departamentos
foreach ($dep in $departamentos){
    New-SmbShare -Path C:\Empresa\"$($dep.departamento)" -Name "$($dep.departamento)" -ChangeAccess "$($dep.departamento)" -FullAccess Administradores -ReadAccess "Usuarios del dominio"
#Grant-SmbShareAccess

#Definir permisos NTFS con SET-ACL

    $acl = Get-Acl -Path C:\Empresa\"$($dep.departamento)"

    #deshabilitar la herencia y eliminar TODAS las reglas de acceso
    $acl.SetAccessRuleProtection($true, $false)
    
    #añadir al grupo Administradores Control Total
    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $ace | Format-Table

    #añadir al grupo Usuarios del dominio Lectura
    $permisos = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #añadir al grupo "$($dep.departamento)" Modificar
    $permisos = $($dep.departamento),'Modify','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #establecer los permisos
    $acl |Set-Acl -Path C:\Empresa\"$($dep.departamento)"

    $ace | Format-Table
}