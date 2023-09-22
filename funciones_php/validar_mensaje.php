<?php include ('../admin/conexion.php');?>
<?php 
$nombre=$_POST['nombre'];
$email=$_POST['email'];
$mensaje=$_POST['mensaje'];
$asunto=$_POST['asunto'];
$fechaMensaje =date("Y-m-d h:i:s");


$sql="insert into comentarios(remitente,correo,asunto, mensaje,fecha)
values ('".$nombre."',
'".$email."',
'".$asunto."',
'".$mensaje."',
'".$fechaMensaje."'
)";

$res=mysqli_query($con, $sql);
if($res){ 
	echo '<script> alert("Tu prestamo fue exitosamente Registrado, ahora puedes acercarte al Instituto Tecnologico Vicente Leon para poderlo retirarlo");</script>';
		echo '<script> window.location="../contacto.php"; </script>';
	}else {
		echo '<script> alert("Lo sentimos no pudimos realizar tu prestamo, vuelve a intentarlo mas tardes, gracias por tu comprecion");</script>';
		}
?>