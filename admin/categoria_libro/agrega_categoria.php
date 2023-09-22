
<?php
include('../conexion.php');

$id = $_POST['id-prod'];
$proceso = $_POST['pro'];
$cate = $_POST['nombre'];

switch($proceso){
	case 'Registro': mysqli_query($con, "INSERT INTO categorias (nombre_categoria) VALUES('$cate')");
	break;

	case 'Edicion': mysqli_query($con, "UPDATE categorias SET nombre_categoria = '$cate' where id_categoria = '$id'");
	break;
   }
    $registro = mysqli_query($con, "SELECT * FROM categorias ORDER BY id_categoria ASC");

    echo '<table class="table  table-hover rtx">
        	<tr>
			<th width="200" class="th1">Categoria</th>
			<th width="50" class="th1" >Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
				<td>'.$registro2['nombre_categoria'].'</td>
				 <td>
                 <a href="javascript:editarEmpleado('.$registro2['id_categoria'].');" class="btn btn-warning" title="Editar">
                     <i class="glyphicon glyphicon-edit"></i> Editar
                 </a>
                 <a href="javascript:eliminarEmpleado('.$registro2['id_categoria'].');" class="btn btn-danger" title="Eliminar">
                     <i class="glyphicon glyphicon-trash"></i> Eliminar
                 </a>
             </td>
             
				</tr>';
	}
   echo '</table>';
?>