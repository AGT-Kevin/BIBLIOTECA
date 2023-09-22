<?php
include('../conexion.php');

$id = $_POST['id'];

mysqli_query($con, "DELETE FROM subcategorias WHERE id_subcategoria = '$id'");

$registro = mysqli_query($con, "SELECT * FROM subcategorias ORDER BY id_subcategoria ASC");

echo '<table class="table table-striped table-condensed table-hover table-responsive">
        	<tr>
            	<th width="200" class="th1">Categoria</th>
				<th width="50" class="th1">Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
				<td>'.$registro2['nombre_subcategoria'].'</td>
				<td>
                    <a href="javascript:editarEmpleado(' . $registro2['id_subcategoria'] . ');" class="btn btn-warning" title="Editar">
                        <i class="glyphicon glyphicon-edit"></i> Editar
                    </a>
                    <a href="javascript:eliminarEmpleado(' . $registro2['id_subcategoria'] . ');" class="btn btn-danger" title="Eliminar">
                        <i class="glyphicon glyphicon-trash"></i> Eliminar
                    </a>
                </td>
				</tr>';
	}
echo '</table>';
?>