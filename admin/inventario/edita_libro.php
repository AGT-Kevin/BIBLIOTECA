<?php
include('../conexion.php');
$id = $_POST['id'];
$valores = mysqli_query($con, "SELECT * FROM inventario WHERE id_inventario = '$id'");
$valores2 = mysqli_fetch_array($valores);

$datos = array(
	            0 => $valores2['codigo'],
				1 => $valores2['ISBN'], 
				2 => $valores2['libro'], 
				3 => $valores2['autor'], 
				4 => $valores2['descripcion'], 
				5 => $valores2['fila'], 
				6 => $valores2['categoria'], 
				7 => $valores2['estante'],
				8 => $valores2['cantidad'],
				9 => $valores2['fecha'],  
				); 
echo json_encode($datos);
?>