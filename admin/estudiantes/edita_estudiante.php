<?php
include('../conexion.php');
$id = $_POST['id'];
$valores = mysqli_query($con, "SELECT * FROM usuario_estudiante WHERE id_usuario_estudiante = '$id'");
$valores2 = mysqli_fetch_array($valores);

$datos = array(
				0 => $valores2['carnet'], 
				1 => $valores2['nombre'], 
				2 => $valores2['anio'], 
				3 => $valores2['carrera'], 
				); 
echo json_encode($datos);
?>