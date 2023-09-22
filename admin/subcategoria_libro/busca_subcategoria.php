<?php
include('../conexion.php');
$dato = $_POST['dato'];

$registro = mysqli_query($con, "SELECT * FROM subcategorias WHERE nombre_subcategoria LIKE '%$dato%' ORDER BY id_subcategoria ASC");
echo '<table class="table  table-hover table-responsive rtx">
        	<tr>
                <th width="200" class="th1">Categoria</th>
				<th width="50"class="th1">Opciones</th>
            </tr>';
if(mysqli_num_rows($registro)>0){
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
}else{
	echo '<tr>
				<td colspan="6">No se encontraron resultados</td>
			</tr>';
}
echo '</table>';
?>