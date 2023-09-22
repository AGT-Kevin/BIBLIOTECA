
<?php
include('../conexion.php');

$id = $_POST['id-prod'];
$proceso = $_POST['pro'];
$ISBN = $_POST['ISBN'];

$nombre = $_POST['nombre'];
$descripcion = $_POST['descripcion'];
$disponible = $_POST['disponible'];
$categoria = $_POST['categoria'];
$subcategoria = $_POST['subcategoria'];
$fecha = $_POST['fecha'];
$descarga = $_POST['descarga'];

$url_archivo='';

if (move_uploaded_file($_FILES['foto']['tmp_name'], 'uploads/' . $_FILES['foto']['name'])) {
    $url_archivo= 'uploads/'.htmlspecialchars( basename( $_FILES["foto"]["name"]));
  } else {
    echo "Sorry, there was an error uploading your file.";
  }




switch($proceso){
	case 'Registro': mysqli_query($con, "INSERT INTO libros (ISBN,foto, nombre, descripcion, disponible, id_categoria, id_subcategoria, fecha_ingreso, url_descarga) 
		                          VALUES('$ISBN','$url_archivo','$nombre','$descripcion','$disponible','$categoria','$subcategoria','$fecha','$descarga')");
	break;

	case 'Edicion': mysqli_query($con, "UPDATE libros SET ISBN = '$ISBN', foto = '$url_archivo', nombre = '$nombre', descripcion = '$descripcion', disponible = '$disponible', id_categoria = '$categoria', id_subcategoria = '$subcategoria', fecha_ingreso = '$fecha', url_descarga = '$descarga' where id_libro = '$id'");
	break;
   }
    $registro = mysqli_query($con, "SELECT * FROM libros ORDER BY id_libro desc");

    echo '<table class="table table-hover rtx">
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
    $imagen = '<img src="'.$foto.'" width="50" height="50">';
		echo '<tr>
	          	<td>'.$foto.'</td>
				  <td>'.$registro2['ISBN'].'</td>
				<td>'.$registro2['nombre'].'</td>
				<td>'.$registro2['descripcion'].'</td>
				<td>'.$registro2['disponible'].'</td>
				<td>'.$registro2['id_categoria'].'</td>
				<td>'.$registro2['id_subcategoria'].'</td>
				<td>'.$registro2['fecha_ingreso'].'</td>
				<td>'.$registro2['url_descarga'].'</td>
				<td>
				<a href="javascript:editarLibro(' . $registro2['id_libro'] . ');" class="btn btn-warning" title="Editar libro">
					<i class="glyphicon glyphicon-edit"></i> Editar
				</a>
				<a href="javascript:eliminarLibro(' . $registro2['id_libro'] . ');" class="btn btn-danger" title="Eliminar libro">
					<i class="glyphicon glyphicon-trash"></i> Eliminar
				</a>
			</td>
			
				</tr>';
	}
   echo '</table>';

   header("Location: http://localhost/ISTV_biblio/admin/libros.php");


?>