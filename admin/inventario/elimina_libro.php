<?php
include('../conexion.php');

$id = $_POST['id'];

mysqli_query($con, "DELETE FROM inventario WHERE id_inventario = '$id'");

$registro = mysqli_query($con, "SELECT * FROM inventario ORDER BY id_inventario desc");

echo '<table class="table rtx table-hover table-responsive">
        	<tr>
			<th width="200"class="th1">Codigo</th>
			<th width="200" class="th1">ISBN</th>
			<th width="300" class="th1">libro</th>
			<th width="300" class="th1">autor</th>
			<th width="200" class="th1">Editorial</th>
			<th width="100" class="th1">Origen</th>
			<th width="50" class="th1">edicion</th>
			<th width="50" class="th1"># de Edicion</th>
			<th width="50" class="th1">Cantidad</th>
			<th width="100" class="th1">fecha</th>
			<th width="50" class="th1">Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
		<td>'.$registro2['codigo'].'</td>
	           <td>'.$registro2['ISBN'].'</td>
				<td>'.$registro2['libro'].'</td>
				<td>'.$registro2['autor'].'</td>
				<td>'.$registro2['descripcion'].'</td>
				<td>'.$registro2['fila'].'</td>
				<td>'.$registro2['categoria'].'</td>
				<td>'.$registro2['estante'].'</td>
				<td>'.$registro2['cantidad'].'</td>
				<td>'.$registro2['fecha'].'</td>
				<td>
				<a href="javascript:editarLibro(' . $registro2['id_inventario'] . ');" title="Editar" class="text-warning">
					<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
				</a>
				<a href="javascript:eliminarLibro(' . $registro2['id_inventario'] . ');" title="Eliminar">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				</a>
			</td>
		</tr>';
	}
echo '</table>';
?>