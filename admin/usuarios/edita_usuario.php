<?php
include('../conexion.php');
$id = $_POST['id'];
$valores = mysqli_query($con, "SELECT * FROM administrador_biblioteca WHERE id_bibliotecario = '$id'");
$valores2 = mysqli_fetch_array($valores);

$datos = array(
	0 => $valores2['nom'], 
	1 => $valores2['ape'], 
	2 => $valores2['ced'], 
	3 => $valores2['user'], 
	4 => $valores2['pass'],

				); 
echo json_encode($datos);
?>