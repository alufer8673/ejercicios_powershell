#Crear carpeta Empresa_users
New-Item -Path C:\Empresa_users -ItemType directory

#Crear carpetas individuales a partir de empleados.csv
$empleados = Import-Csv 'C:\Users\Administrador\Desktop\archivos\empleados.csv' -Delimiter ";"

foreach($emp in $empleados){
    New-Item -Path C:\Empresa_users\"$($emp.nombre)$($emp.apellido)" -ItemType directory
}

#compartir la carpeta Empresa_users
New-SmbShare -Path C:\Empresa_users -Name Empresa_users$ -ReadAccess "Usuarios del dominio" -FullAccess Administradores

foreach($emp in $empleados){
#Definir permisos NTFS con SET-ACL
    $acl = Get-Acl -Path C:\Empresa_users\$($emp.nombre)$($emp.apellido)
    
    #deshabilitar la herencia y eliminar TODAS las reglas de acceso
    $acl.SetAccessRuleProtection($true, $false)

    #añadir al grupo Administradores Control Total
    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $ace | Format-Table

    #añadir a los usuarios del dominio lectura
    $permisos = "$($emp.nombre)$($emp.apellido)",'FUllControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #establecer los permisos
    $acl |Set-Acl -Path C:\Empresa_users\$($emp.nombre)$($emp.apellido)

    $ace | Format-Table

    if ($($emp.departamento) -ieq "finanzas"){
        Set-ADUser -Identity "$($emp.nombre)$($emp.apellido)" -ScriptPath "carpetas_finanzas.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$($emp.nombre)$($emp.apellido)"
    }elseif ($($emp.departamento) -ieq "personal"){
        Set-ADUser -Identity "$($emp.nombre)$($emp.apellido)" -ScriptPath "carpetas_personal.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$($emp.nombre)$($emp.apellido)"
    }elseif ($($emp.departamento) -ieq "produccion"){
        Set-ADUser -Identity "$($emp.nombre)$($emp.apellido)" -ScriptPath "carpetas_produccion.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$($emp.nombre)$($emp.apellido)"
    }elseif ($($emp.departamento) -ieq "ventas") {
        Set-ADUser -Identity "$($emp.nombre)$($emp.apellido)" -ScriptPath "carpetas_ventas.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$($emp.nombre)$($emp.apellido)"
    }
}