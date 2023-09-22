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

        $carnet                = !empty($datos[0])  ? ($datos[0]) : '';
        $nombre                = !empty($datos[1])  ? ($datos[1]) : '';
        $anio                  = !empty($datos[2])  ? ($datos[2]) : '';
        $carrera               = !empty($datos[3])  ? ($datos[3]) : '';
    
if( !empty($carnet) ){
    $checkemail_duplicidad = ("SELECT carnet FROM usuario_estudiante WHERE carnet='".($carnet)."'");
            $ca_dupli = mysqli_query($con, $checkemail_duplicidad);
            $cant_duplicidad = mysqli_num_rows($ca_dupli);
        }   

//No existe Registros Duplicados
if ( $cant_duplicidad == 0 ) { 
    $insertarData = "INSERT INTO `usuario_estudiante`
    (`carnet`, `nombre`, `anio`, `carrera`)
    VALUES
     ('$carnet','$nombre','$anio','$carrera')";
mysqli_query($con, $insertarData);
        
} 
/**Caso Contrario actualizo el o los Registros ya existentes*/
else{
    $updateData =  ("UPDATE usuario_estudiante SET 
        nombre='" .$nombre. "',
        anio='" .$anio. "'  
        WHERE carnet='".$carnet."'
    ");
    $result_update = mysqli_query($con, $updateData);
    } 
  }

 $i++;


}

?>

<a href="estudiantes.php">Atras</a>