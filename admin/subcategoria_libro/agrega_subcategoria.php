
<?php
include('../conexion.php');

$id = $_POST['id-prod'];
$proceso = $_POST['pro'];
$subcate = $_POST['nombre'];

switch($proceso){
	case 'Registro': mysqli_query($con, "INSERT INTO subcategorias (nombre_subcategoria) VALUES('$subcate')");
	break;

	case 'Edicion': mysqli_query($con, "UPDATE subcategorias SET nombre_subcategoria = '$subcate' where id_subcategoria = '$id'");
	break;
   }
    $registro = mysqli_query($con, "SELECT * FROM subcategorias ORDER BY id_subcategoria ASC");

    echo '<table class="table table-hover rtx">
        	<tr>
            	<th width="200"class="th1">Subcategoria</th>
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