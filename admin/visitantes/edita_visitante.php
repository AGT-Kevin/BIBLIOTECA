<?php
include('../conexion.php');
$id = $_POST['id'];
$valores = mysqli_query($con, "SELECT * FROM visitantes WHERE idvisitante = '$id'");
$valores2 = mysqli_fetch_array($valores);
$datos = array(
	            0=> $valores2['nombreCompleto'],
				1=> $valores2['usuario'], 
				2=> $valores2['pass'], 
				3=> $valores2['email'],
				4=> $valores2['direccion'],
				5=> $valores2['telefono'],
				6=> $valores2['edad'],
				7=> $valores2['sexo'],		    
				8=> $valores2['estado'], 

  
				); 
echo json_encode($datos);
?>