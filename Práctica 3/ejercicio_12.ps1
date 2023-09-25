<#
Ejercicio 12. La pizzería Bella Napoli ofrece pizzas vegetarianas y no vegetarianas a sus
clientes. Los ingredientes para cada tipo de pizza aparecen a continuación.

    Ingredientes vegetarianos: Pimiento y tofu.
    Ingredientes no vegetarianos: Peperoni, Jamón y Salmón.
    
    Escribir un programa que pregunte al usuario si quiere una pizza vegetariana o no, y en 
    función de su respuesta le muestre un menú con los ingredientes disponibles para que elija.
    Solo se puede eligir un ingrediente además de la mozzarella y el tomate que están en todas la
    pizzas. Al final se debe mostrar por pantalla si la pizza elegida es vegetariana o no y todos
    los ingredientes que lleva.
#>
Write-Host "¿Qué tipo de pizza quieres?"
Write-Host "1. Vegetariana"
Write-Host "2. No vegetariana"
[int] $pizza = Read-Host "Su seleccion es"

switch($pizza){
    {$_ -eq 1}{
        Write-Host "Ingredientes vegetarianos:"
        Write-Host "1. Pimiento"
        Write-Host "2. Tofu"

        [int] $ingrediente = Read-Host "¿Qué ingrediente quieres?"

        switch($ingrediente){
            {$_ -eq 1}{
                Write-Host "La pizza escogida ha sido vegetariana."
                Write-Host "Los ingredientes que llevará su pizza es mozzarela, tomate y pimiento."
            }
            {$_ -eq 2}{
                Write-Host "La pizza escogida ha sido vegetariana."
                Write-Host "Los ingredientes que llevará su pizza es mozzarela, tomate y tofu."
            }
        }
    }
    {$_ -eq 2}{
        Write-Host "Ingredientes no vegetarianos:"
        Write-Host "1. Peperoni"
        Write-Host "2. Jamón"
        Write-Host "3. Salmón"

        [int] $ingrediente = Read-Host "¿Qué ingrediente quieres?"

        switch($ingrediente){
            {$_ -eq 1}{
                Write-Host "La pizza escogida ha sido no vegetariana."
                Write-Host "Los ingredientes que llevará su pizza es mozzarela, tomate y peperoni."
            }
            {$_ -eq 2}{
                Write-Host "La pizza escogida ha sido no vegetariana."
                Write-Host "Los ingredientes que llevará su pizza es mozzarela, tomate y jamón."
            }
            {$_ -eq 3}{
                Write-Host "La pizza escogida ha sido no vegetariana."
                Write-Host "Los ingredientes que llevará su pizza es mozzarela, tomate y salmón."
            }
        }
    }
}