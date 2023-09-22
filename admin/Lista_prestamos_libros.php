
<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Administracion</title>
    <link rel="shortcut icon" href="../images/ISTV.jpg">    <link href="css/bootstrap.min.css" rel="stylesheet">  
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/morris.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/ventan_pres.css?uuid=<?php echo uniqid();?>"><link href="css/morris.css" rel="stylesheet">
    <link rel="stylesheet" href="admin/css/libros.css.css?uuid=<?php echo uniqid();?>">
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="comentarios/Mis_funciones.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
    <main>
      <?php include('navegacion.php');?>
        <div id="est">
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header rtx1">
                            <small><img src="../images/logoISTV.ico"></small> Listado de Prestamos
                        </h2>
                    </div>
                </div>
                <!-- /.row -->
                <div class='row'>   <!-- /.Inicia el primer row -->
                <div align="center">
                <?php
$registro = mysqli_query($con,"SELECT prestamo_libro.id_prestamo, prestamo_libro.fecha_prestamo,prestamo_libro.fecha_entrega,prestamo_libro.apellidos,prestamo_libro.cedula,prestamo_libro.estado,prestamo_libro.id_inventario,inventario.id_inventario,inventario.codigo FROM prestamo_libro INNER JOIN inventario ON prestamo_libro.id_inventario = inventario.id_inventario;");

echo '<table width="400" class="table  table-hover rtx">
                           <tr>    
                          
                                    <td class="th1"><p>Fecha del Prestamo<p></td>
                                    <td class="th1"><p>Fecha de la Entrega</p></td>
                                    <td class="th1" ><p>Libro prestado</p></td>
                                    <td class="th1"><p>Nombres</p></td>
                                   
                                    <td class="th1"><p>Cedula</p></td>
                                   
                                    <td class="th1"><p>Opciones</p></td>
                                  
                            
                          </tr>';
                          
if(mysqli_num_rows($registro)>0){
  while($registro2 = mysqli_fetch_assoc($registro)){
       
         $estado=$registro2['estado'];
       

    switch($estado){
      case 0:$diestado = "Prestado";break;
      case 1:$diestado = "Libre";break;
      }
    echo '<tr';
   switch($estado){
    case 0:echo ' style="background:red; color:white;"';break;
    case 1:echo ' style="background:green; color:white;"';break;
     }
    echo'>
        <td >'.$registro2['fecha_prestamo'].'</td>
        <td >'.$registro2['fecha_entrega'].'</td>
        <td>'.$registro2['codigo'].'</td>
        <td>'.$registro2['apellidos'].'</td>
        <td>'.$registro2['cedula'].'</td>
        '
        ?>
        <?php 
                if($estado ==0){
                 echo'
                 <td><a href="prestamos_libros/entregar_libro.php?id='.$registro2['id_prestamo'].'"><button class="btn btn-success btn-xs">Devolver</button></a></td>
                 ';
      }else{
        echo '
        <td></td>
        ';
      }
      
      
  }
}else{
  echo '<tr>
        <td colspan="6">No se encontraron resultados</td>
      </tr>';
}
echo '</table>'; ?>
</div>

                         <script src="js/jquery.js"></script>
                      <script src="js/bootstrap.min.js"></script>

               </div>  <!-- /. fin de row -->
            </div>
        </div>
    </div>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
</body>
</html>
<?php
}else{
    echo '<script> window.location="../index.php"; </script>';
}
?>