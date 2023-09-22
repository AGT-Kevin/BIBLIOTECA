
<?php
include('../conexion.php');

$id = $_POST['id-prod'];
$proceso = $_POST['pro'];
$nombreCompleto = $_POST['nombreCompleto'];
$usuario = $_POST['usuario'];
$pass = $_POST['pass'];
$email = $_POST['email'];
$direccion = $_POST['direccion'];
$telefono = $_POST['telefono'];
$edad = $_POST['edad'];
$sexo = $_POST['sexo'];
$estado = $_POST['estado'];

switch($proceso){
	case 'Registro': mysqli_query($con, "INSERT INTO visitantes (nombreCompleto, usuario, pass, email, telefono, direccion, edad, sexo,estado)VALUES('$nombreCompleto','$usuario','$pass','$email','$telefono','$direccion','$edad','$sexo','$estado')");
	break;

	case 'Edicion': mysqli_query($con, "UPDATE visitantes SET nombreCompleto ='$nombreCompleto', usuario = '$usuario', pass = '$pass', email = '$email', direccion='$direccion',telefono='$telefono',edad='$edad',sexo='$sexo', estado ='$estado' where idvisitante = '$id'");
	break;
   }
    $registro = mysqli_query($con, "SELECT * FROM visitantes ORDER BY idvisitante ASC");

    echo '<table class="table table-striped table-condensed table-hover">
        	<tr>
           <th width="200">nombre y apellido</th>
                           <th width="200">Usuario</th>
                            <th width="200">Password</th>
                            <th width="200">Email</th>
                            <th width="200">Direccion</th>
                            <th width="200">Telefono</th>
                            <th width="200">Edad</th>
                            <th width="200">Usuario</th>
                            <th width="200">Estado</th>
                            <th width="100">Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
				 <td>'.$registro2['nombreCompleto'].'</td>
                           <td>'.$registro2['usuario'].'</td>
                          <td>'.$registro2['pass'].'</td>
                          <td>'.$registro2['email'].'</td>
                          <td>'.$registro2['direccion'].'</td>
                          <td>'.$registro2['telefono'].'</td>
                          <td>'.$registro2['edad'].'</td>
                          <td>'.$registro2['sexo'].'</td>
                          <td>'.$registro2['estado'].'</td>
                          
                  <td> <a href="javascript:editarEmpleado('.$registro2['idvisitante'].');" class="glyphicon glyphicon-edit eliminar"     title="Editar"></a>
                  <a href="javascript:eliminarEmpleado('.$registro2['idvisitante'].');">
                  <img src="../images/delete.png" width="15" height="15" alt="delete" title="Eliminar" /></a>
                  </td>
				</tr>';
	}
   echo '</table>';
?>