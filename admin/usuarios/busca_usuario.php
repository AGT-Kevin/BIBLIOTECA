<?php
include('../conexion.php');
$dato = $_POST['dato'];

$registro = mysqli_query($con, "SELECT * FROM administrador_biblioteca WHERE ced!='123456890' AND  nom LIKE '%$dato%' ORDER BY id_bibliotecario ASC");
echo '<table class="table table-hover table-responsive tab1">
        	<tr>
			<th width="200"class="th1">Nombres</th>
			<th width="300" class="th1">Apellidos</th>
			<th width="300" class="th1">Cedula</th>
            	<th width="200" class="th1">Usuario</th>
            	<th width="200" class="th1">Contraseña</th>
				<th width="50" class="th1">Opciones</th>
            </tr>';
if(mysqli_num_rows($registro)>0){
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
		<td>'.$registro2['nom'].'</td>
		<td>'.$registro2['ape'].'</td>
		<td>'.$registro2['ced'].'</td>
		<td>'.$registro2['user'].'</td>
		<td>'.$registro2['pass'].'</td>
				
		<td>
		<a href="javascript:editarEmpleado('.$registro2['id_bibliotecario'].');" class="btn btn-warning btn-sm" title="Editar">
		<i class="glyphicon glyphicon-edit"></i> Editar
		</a>
		<a href="javascript:eliminarEmpleado('.$registro2['id_bibliotecario'].');" class="btn btn-danger btn-sm" title="Eliminar">
		<i class="glyphicon glyphicon-trash"></i>Eliminar
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