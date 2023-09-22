<?php include "../conexion.php" ?>
<?php

$id=$_GET['id'];

$sqlPrestamo="SELECT * FROM `prestamo_libro` WHERE `id_prestamo`='$id'";

$resultadoPrestamo=	mysqli_query($con,$sqlPrestamo);
$idInventario="";
while($res = mysqli_fetch_array($resultadoPrestamo))
{
 $idInventario = $res['id_inventario'];
}

$sql2="UPDATE inventario SET cantidad = cantidad + 1 WHERE id_inventario = $idInventario";
mysqli_query($con,$sql2);

$peticion = "DELETE FROM `prestamo_libro` WHERE `prestamo_libro`.`id_prestamo`='".$_GET['id']."'";
$resultado = mysqli_query($con, $peticion);

  echo '<script> alert("Se ha devuelto el libro.");</script>';
    echo '<script> window.location="../Lista_prestamos_libros.php"; </script>';

?>
