
<?php
include('../conexion.php');

$id = $_POST['id-prod'];
$proceso = $_POST['pro'];
$nom = $_POST['nom'];
$ape = $_POST['ape'];
$ced = $_POST['ced'];
$user = $_POST['user'];
$pass = $_POST['pass'];
$pass = sha1($pass);

switch($proceso){
	case 'Registro': mysqli_query($con, "INSERT INTO administrador_biblioteca (nom,ape,ced,user, pass) VALUES('$nom','$ape','$ced','$user','$pass')");
	break;
	case 'Edicion':	mysqli_query($con, "UPDATE administrador_biblioteca SET nom = '$nom', ape= '$ape', ced = '$ced', user = '$user', pass = '$pass'  WHERE id_bibliotecario = '$id'");
	break;
}
$registro = mysqli_query($con, "SELECT * FROM administrador_biblioteca WHERE ced!='123456890' ORDER BY id_bibliotecario ASC");

echo '<table class="table  table-hover" rtx>
        	<tr>
			<th width="200" class="th1">Nombres</th>
			<th width="300" class="th1">Apellidos</th>
			<th width="300"class="th1">Cedula</th>
            	<th width="200" class="th1">Usuario</th>
            	<th width="200" class="th1">Contraseña</th>
				<th width="50" class="th1">Opciones</th>
            </tr>';
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
echo '</table>';
?>