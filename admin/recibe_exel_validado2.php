<?php
require('conexion.php');
$tipo       = $_FILES['dataCliente']['type'];
$tamanio    = $_FILES['dataCliente']['size'];
$archivotmp = $_FILES['dataCliente']['tmp_name'];
$lineas     = file($archivotmp);

$i = 0;

foreach ($lineas as $linea) {
    $cantidad_registros = count($lineas);
    $cantidad_regist_agregados =  ($cantidad_registros - 1);

    if ($i != 0) {

        $datos = explode(";", $linea);
        $codigo               = !empty($datos[0])  ? ($datos[0]) : '';
        $ISBN                = !empty($datos[1])  ? ($datos[1]) : '';
        $libro                = !empty($datos[2])  ? ($datos[2]) : '';
		$autor             = !empty($datos[3])  ? ($datos[3]) : '';
        $descripcion                = !empty($datos[4])  ? ($datos[4]) : '';
        $fila                  = !empty($datos[5])  ? ($datos[5]) : '';
        $categoria              = !empty($datos[6])  ? ($datos[6]) : '';
        $estante              = !empty($datos[7])  ? ($datos[7]) : '';
        $fecha              = !empty($datos[8])  ? ($datos[8]) : '';
       
    
if( !empty($ISBN) ){
    $checkemail_duplicidad = ("SELECT ISBN FROM inventario WHERE ISBN='".($ISBN)."'");
            $ca_dupli = mysqli_query($con, $checkemail_duplicidad);
            $cant_duplicidad = mysqli_num_rows($ca_dupli);
        }   

//No existe Registros Duplicados
if ( $cant_duplicidad == 0 ) { 
    $insertarData = "INSERT INTO `inventario`(`codigo`, `ISBN`, `libro`, `autor`, `descripcion`, `fila`, `categoria`, `estante`, `fecha`) VALUES
     ('$codigo','$ISBN','$libro','$autor','$descripcion','$fila','$categoria','$estante','$fecha')";
mysqli_query($con, $insertarData);
        
} 
/**Caso Contrario actualizo el o los Registros ya existentes*/
else{
    $updateData =  ("UPDATE `inventario` SET
          codigo ='" .$codigo. "',
          ISBN ='" .$ISBN. "',
          libro ='" .$libro. "',
          autor='" .$autor. "',
          descripcion='" .$descripcion. "',
          fila='" .$fila. "',
          categoria='" .$categoria. "',
          estante='" .$estante. "',
          fecha='" .$fecha. "'
        WHERE ISBN ='".$ISBN."'
    ");
    $result_update = mysqli_query($con, $updateData);
    } 
  }

 $i++;
}

?>

<a href="inventario.php">Atras</a>