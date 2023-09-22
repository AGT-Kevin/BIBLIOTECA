<?php
require_once '../conexion.php';

$id=$_POST["id"];

$fecha1=$_POST["fecha1"];
$fecha2=$_POST["fecha2"];
$apellidos=$_POST["estudiante"]; 
$cedula=$_POST["cedula"]; 
$estado="0";
$sqlLibro="SELECT * FROM `inventario` WHERE `codigo` = '$id'";

$resultadoLibro=	mysqli_query($con,$sqlLibro);
$idInventario="";
while($res = mysqli_fetch_array($resultadoLibro))
{
 $idInventario = $res['id_inventario'];
}

echo $idInventario;

$sql = "insert into prestamo_libro (fecha_prestamo, fecha_entrega, id_inventario, apellidos, cedula, estado) values('$fecha1','$fecha2','$idInventario','$apellidos','$cedula', '0')";

$sql2="UPDATE inventario SET cantidad = cantidad - 1 WHERE id_inventario = $idInventario";
mysqli_query($con,$sql2);

$resultado2=mysqli_query($con,$sql);
	if($resultado2){ 
		echo '<script> alert("Prestamo Exitoso.");</script>';
	   echo '<script> window.location="../prestar_libro.php"; </script>';

		
		}else {
			echo '<script> alert("Error al procesar el prestamo.");</script>';
			echo '<script> window.location="../prestar_libro.php"; </script>';
			}
?>

