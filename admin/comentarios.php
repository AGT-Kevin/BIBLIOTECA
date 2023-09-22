
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
    <link href="admin_productos/css/estilo.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="comentarios/Mis_funciones.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link href="css/pdf.css" rel="stylesheet">
</head>
<body>
      <?php include('navegacion.php');?>
        <div id="page-wrapper">
            <div class="main">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <small><img src="../images/logoISTV.ico"></small>Prestamos Digitales
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class='row'>   <!-- /.Inicia el primer row -->
                <div class="container">
                <div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <form class="form-inline">
                <div class="form-group mb-2">
                    <label for="bs-prod" class="mr-2"><strong>Buscar Prestamo:</strong></label>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <input type="text" class="form-control" id="bs-prod" placeholder="Busca un préstamo">
                </div>
            </form>
        </div>
    </div>
</div>


        <br>
    <div class="registros" id="agrega-registros_comentarios"></div>
    <center>
        <ul class="pagination" id="pagination_comentarios"></ul>
    </center>
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