<?php
include('../conexion.php');
$id = $_POST['id'];
$valores = mysqli_query($con, "SELECT * FROM libros WHERE id_libro = '$id'");
$valores2 = mysqli_fetch_array($valores);

$datos = array(
				0 => $valores2['foto'], 
				1 => $valores2['ISBN'], 
				2 => $valores2['nombre'], 
				3 => $valores2['descripcion'], 
			    4 => $valores2['disponible'], 
				5 => $valores2['id_categoria'], 
				6 => $valores2['id_subcategoria'], 
				7=> $valores2['fecha_ingreso'],
				8=> $valores2['url_descarga'],  
				); 
echo json_encode($datos);
?>