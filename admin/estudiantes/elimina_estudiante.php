<?php
include('../conexion.php');

$id = $_POST['id'];

mysqli_query($con, "DELETE FROM usuario_estudiante WHERE id_usuario_estudiante = '$id'");

$registro = mysqli_query($con, "SELECT * FROM usuario_estudiante ORDER BY id_usuario_estudiante ASC");

echo '<table class="table table-striped table-bordered table-hover">
        	<tr>
			<th class="text-center">Cedula</th>
			<th class="text-center">Estudiante</th>
			<th class="text-center">Año</th>
			<th class="text-center">Carrera</th>
			<th class="text-center">Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
				<td>'.$registro2['carnet'].'</td>
				<td>'.$registro2['nombre'].'</td>
				<td>'.$registro2['anio'].'</td>
				<td>'.$registro2['carrera'].'</td>
				<td class="text-center">
                    <button class="btn btn-primary btn-sm" onclick="editarEmpleado('.$registro2['id_usuario_estudiante'].');" title="Editar">Editar</button>
                    <button class="btn btn-danger btn-sm" onclick="eliminarEmpleado('.$registro2['id_usuario_estudiante'].');" title="Eliminar">Eliminar</button>
                </td>
			</tr>';
	}
echo '</table>';
?>
