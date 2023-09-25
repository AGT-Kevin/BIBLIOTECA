
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
    <title>Biblioteca ISTVL|Administracion</title>
    <link rel="shortcut icon" href="../images/ISTV.jpg">    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/categoria.css?uuid=<?php echo uniqid();?>">
    <link rel="stylesheet" href="css/boton.css?uuid=<?php echo uniqid();?>">

    <link href="css/estilo.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="categoria_libro/myjava.js"></script>

</head>
<body>
      <?php include('navegacion.php');?>
<main>
        <div class="est">

            <div class="est">
             <br>
                <!-- Encabezado -->
                <div class="row">
                    <div class="col-lg-12">   
                    </div>
                </div>
                <h1 class="page-header titulo">
                <small><img src="../images/logoISTV.ico"></small>
                          Categorias
                        </h1>
                <!-- /.row -->
                <section>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <strong>Buscar Categoría:</strong>
            </div>
            <div class="col-md-4">
                <input type="text" placeholder="Buscar Categoria" id="bs-prod" class="form-control" />
            </div>
            <div class="col-md-2">
                <button id="nuevo-producto" class="btn btn-primary btn-block">Nueva Categoría</button>
            </div>
        </div>
    </div>
</section>

<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="registros rtx" id="agrega-registros"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="pagination rtx" id="pagination"></ul>
        </div>
    </div>
</div>

<!-- MODAL PARA EL REGISTRO DE PRODUCTOS -->
<div class="modal fade" id="registra-producto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background:#839ca9;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" style="color:white;" id="myModalLabel"><b>Mantenimiento de Categorías</b></h4>
            </div>
            <form id="formulario" class="form-group" onsubmit="return agregaEmpleado();">
                <div class="modal-body">
                    <input type="hidden" class="form-control" required readonly id="id-prod" name="id-prod" readonly="readonly" style="visibility:hidden; height:5px;" />
                    <div class="form-group">
                        <label for="proceso">Proceso:</label>
                        <input type="text" class="form-control" required readonly id="pro" name="pro" />
                    </div>
                    <div class="form-group">
                        <label for="nombre">Nombre Categoría:</label>
                        <input type="text" class="form-control" required name="nombre" id="nombre" maxlength="100" />
                    </div>
                    <div class="form-group">
                        <div id="mensaje"></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Registrar" class="btn btn-success" id="reg" />
                    <input type="submit" value="Editar" class="btn btn-warning" id="edi" />
                </div>
            </form>
        </div>
    </div>
</div>


    </main>
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
