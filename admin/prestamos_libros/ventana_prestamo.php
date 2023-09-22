<?php
session_start();
include("../conexion.php");
if(isset($_SESSION['user']))
 {?>

<?php include "../conexion.php" ?>

<?php 
 $id = $_GET['id'];
$consulta3="SELECT id_usuario_estudiante,nombre from usuario_estudiante";
$estudiante=mysqli_query($con,$consulta3);
?>
<?php 
$consulta2="SELECT id_usuario_estudiante,apellidos from usuario_estudiante";
$apellido=mysqli_query($con,$consulta2);
?>

<?php 
$consulta2="SELECT id_usuario_estudiante,carnet from usuario_estudiante";
$cedula=mysqli_query($con,$consulta2);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title> Administracion</title>
    <link rel="shortcut icon" href="../images/ISTV.jpg">
    <link href="../css/bootstrap.min.css" rel="stylesheet">  

  
    <!-- Bootstrap Core JavaScript -->

  

      <link rel="stylesheet" href="css/ventan_pres.css?uuid=<?php echo uniqid();?>">
      <link rel="stylesheet" href="../css/pdf.css?uuid=<?php echo uniqid();?>">

      <link rel="stylesheet" type="text/css" href="../select2/select2.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
	<script src="../select2/select2.min.js"></script>
 
</head>
<body>


 <div id="page-wrapper">
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                    <h1 class="page-header">
                    <small><img class="logo" src="../images/ISTV.jpg"></small>
                            Prestamo de Libros
                    </h1>
                </div>
            </div>

                <!-- /.row -->
   <div class='row'>   <!-- /.Inicia el primer row -->
      


   <form class="form" method="post" action="recibir_prestamo_estudiante.php" enctype="multipart/form-data">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-header text-white ">
                        <h3 class="card-title">Prestamo de Libros</h3>
                    </div>
                    <div class="card-body">
                        <input type="hidden" name="id" value="<?php echo $id ?>" />
                        
                        <div class="form-group">
                            <label for="fecha1">Fecha de Entrega:</label>
                            <input type="date" class="form-control" name="fecha1" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="fecha2">Fecha de Devolución:</label>
                            <input type="date" class="form-control" name="fecha2" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="estudiante">Nombres del Estudiante:</label>
                            <input type="text" class="form-control" name="estudiante" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="cedula">Cédula:</label>
                            <input type="text" class="form-control" name="cedula" required>
                        </div>
                    </div>
                    <div class="card-footer">
                        <input type="submit" value="Prestar Libro" class="btn btn-success">
                        <a href="../prestar_libro.php" class="btn btn-danger">Cancelar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

    <!-- /#wrapper -->
    <!-- jQuery -->

    <script src="prestamos_libros/myjava.js"></script>
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
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

<script type="text/javascript">
	$(document).ready(function(){
		$('#controlBuscador').select2();
	});
    $(document).ready(function(){
		$('#controlBuscador2').select2();
	});
    $(document).ready(function(){
		$('#controlBuscador3').select2();
	});
</script>