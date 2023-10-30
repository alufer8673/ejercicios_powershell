$empleados = Import-Csv 'C:\Users\Administrador\Desktop\archivos\empleados.csv' -Delimiter ";"

foreach ($emp in $empleados){
    if ($($emp.departamento) -ieq "personal"){
        Set-ADUser -Identity "$($emp.nombre)$($emp.apellido)" -ProfilePath \\Empresa-dc1\Empresa_users$\"$($emp.nombre)$($emp.apellido)"   
    }
}