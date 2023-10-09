<#
- Creación de la unidad organizativa Empresa.
- Dentro de la unidad organizativa Empresa, debe crearse una unidad
    organizativa por cada departamento definido en el archivo
    departamentos.csv
- En cada unidad organizativa de cada departamento debe crearse un
    grupo de ámbito global para cada departamento y los usuarios
    especificados en el archivo empleados.csv . Cada uno de estos usuarios
    debe pertenecer al grupo del departamento al que pertenece.
#>

#creamos la unidad organizativa EMPRESA (-ProtectedFromAccidentalDelete $false, es para poder borrar las UO que creemos en las pruebas)
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad organizativa Empresa" -ProtectedFromAccidentalDeletion $false

#creamos las UO de los departamentos dentro de la UO EMPRESA, y de paso también los grupos de ámbito global
$departamento = Import-Csv 'C:\Users\Administrador\Desktop\archivos\departamentos.csv' -Delimiter ";"

foreach($dep in $departamento){
    New-ADOrganizationalUnit -Name "$($dep.departamento)" -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -Description "$($dep.descripcion)" -ProtectedFromAccidentalDeletion $false
    New-ADGroup -Name "$($dep.departamento)" -GroupCategory Security -GroupScope Global -Path "OU=$($dep.departamento),OU=EMPRESA,DC=EMPRESA,DC=LOCAL"
}

#creamos los empleados y los agregamos en sus grupos correspondientes
$empleado = Import-Csv 'C:\Users\Administrador\Desktop\archivos\empleados.csv' -Delimiter ";"

foreach($emp in $empleado){
    New-ADUser -Name "$($emp.nombre) $($emp.apellido)" -Path "OU=$($emp.departamento),OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -SamAccountName "$($emp.nombre)$($emp.apellido)" -UserPrincipalName "$($emp.nombre)$($emp.apellido)@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$($emp.nombre)" -Surname "$($emp.apellido)" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity "$($emp.departamento)" -Members "$($emp.nombre)$($emp.apellido)"
}