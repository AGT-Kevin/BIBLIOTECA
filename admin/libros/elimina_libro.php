<?php
include('../conexion.php');

$id = $_POST['id'];

mysqli_query($con, "DELETE FROM libros WHERE id_libro = '$id'");

$registro = mysqli_query($con, "SELECT * FROM libros ORDER BY id_libro desc");

echo '<table class="table table-hover table-responsive rtx">
        	<tr>
			<th width="200" class="th1">Foto</th>
			<th width="300"class="th1">ISBN</th>
			<th width="300"class="th1">Nombre</th>
			<th width="300"class="th1">Descripcion</th>
			<th width="100"class="th1">Disponible</th>
			<th width="100"class="th1">Categoria</th>
			<th width="100"class="th1">Subcategoria</th>
			<th width="100"class="th1">Fecha Ingreso</th>
			<th width="300"class="th1">Autor</th>
			<th width="50"class="th1">Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		$foto = $registro2['foto'];
	    $imagen = '<img src="libros/'.$foto.'" width="50" height="50">';
		echo '<tr>
				<td class="th2">'.$imagen.'</td>
				<td>'.$registro2['ISBN'].'</td>
				<td>'.$registro2['nombre'].'</td>
				<td>'.$registro2['descripcion'].'</td>
				<td>'.$registro2['disponible'].'</td>
				<td>'.$registro2['id_categoria'].'</td>
				<td>'.$registro2['id_subcategoria'].'</td>
				
				<td>'.$registro2['fecha_ingreso'].'</td>
				<td>'.$registro2['url_descarga'].'</td>
				<td>
            <a href="javascript:editarLibro(' . $registro2['id_libro'] . ');" class="btn btn-primary" title="Editar libro">
                <i class="glyphicon glyphicon-edit"></i> Editar
            </a>
            <a href="javascript:eliminarLibro(' . $registro2['id_libro'] . ');" class="btn btn-danger" title="Eliminar libro">
                <i class="glyphicon glyphicon-trash"></i> Eliminar
            </a>
        </td>
				</tr>';
	}
echo '</table>';




?>