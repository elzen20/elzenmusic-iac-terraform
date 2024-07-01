# elzenmusic-iac

# Comandos Terraform

## `terraform plan`

Este comando nos muestra los recursos que se crearán/modificarán/destruirán, más los outputs, sin aplicar los cambios. Solamente te muestra los cambios, no los aplica.

## `terraform apply`

Este comando nos ayuda a aplicar cambios de los recursos que se crearán/modificarán/destruirán, más los outputs.

## `terraform destroy`

Este comando destruye todo lo que se encuentra desplegado en el estado.

## `terraform (apply|destroy) -auto-approve=true`

Este comando, seleccionando `apply` o `destroy`, si le agregamos al final `-auto-approve=true` no nos hará preguntas de confirmación y automáticamente se harán los cambios.

## `terraform validate`

Este comando valida la sintaxis en nuestros archivos de configuración. Si tuviéramos algún error en nuestra configuración, aquí podríamos ver en qué archivo y en qué línea se encuentra el error.

## `terraform fmt`

Este comando nos ayuda a formatear nuestros archivos de configuración.

## `terraform show`

Este comando nos muestra los recursos que tenemos desplegados. Es una consulta al `tfstate`, y podemos ver todos los datos de los recursos que tenemos desplegados en el proveedor de nube que utilicemos.

## `terraform show -json`

Es el mismo comando anterior pero en formato JSON.

## `terraform providers`

Este comando nos muestra los proveedores de nube con los que estamos trabajando y si tienen alguna restricción en el constraint.

## `terraform output`

Este comando es para listar los outputs.

## `terraform refresh`

Este comando solamente buscará cambios en la infraestructura desplegada, y de haber algún cambio actualizaría nuestro estado de Terraform.

## `terraform graph`

Este comando nos da una lista de las dependencias y cómo se interrelacionan los recursos desplegados de manera general para que podamos adquirir un gráfico.

### `terraform graph | dot -Tsvg > graph.svg`

Nos crea un archivo SVG con la gráfica y esta la podemos abrir desde el navegador.

## `terraform state list`

Este comando nos muestra la lista de los recursos desplegados.

## `terraform state show <nombre-del-recurso>`

Este comando nos muestra un recurso específico que tenemos desplegado.

## `terraform state mv <origen> <destino>`

Este comando nos ayuda a mover recursos dentro de nuestro estado de Terraform. Por ejemplo, el nombre de un recurso. Esto ayuda a no destruir el recurso por completo ni todas sus dependencias.

## `terraform state rm <nombre-del-recurso>`

Este comando nos ayuda a remover recursos solamente del estado de Terraform. Esto nos sirve para que, en caso de que no queramos mantener dicho recurso desde Terraform, lo podamos eliminar de nuestro scope. (Ojo aquí, al momento de volver a hacer un plan o apply, si se removió del archivo `tf`, se volverá a desplegar).
