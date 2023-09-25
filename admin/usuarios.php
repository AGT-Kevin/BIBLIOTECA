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
    <link rel="shortcut icon" href="../images/ISTV.jpg">    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/administracion.css?uuid=<?php echo uniqid();?>">

  <link href="css/estilo.css" rel="stylesheet">
  <link href="css/pdf.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="usuarios/myjava.js"></script>

</head>
<body>
      <?php include('navegacion.php');?>
<main>
        <div  class="main" >

            <div class="rtx">
             <br>
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
                <h1 class="page-header">
                            <small><img class="logo" src="../images/logoISTV.ico"></small> Administradores
                        </h1>
                <!-- /.row -->

                <table class="table">
    <tr>


        <td><strong>Buscar Administrador:</strong></td>
        <td>
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Busca Administrador" id="bs-prod">
            </div>
        </td>
        

        <td>
    <button id="nuevo-producto" class="btn btn-success">Nuevo Administrador</button>
</td>
    </tr>
</table>






 <br>
 <br>
    <div class="registros" style="width:100%;" id="agrega-registros"></div>
    <center>
        <ul class="pagination" id="pagination"></ul>
    </center>



    
    <!-- MODAL PARA EL REGISTRO DE PRODUCTOS-->
    <div class="modal fade" id="registra-producto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" style="background:#839ca9;">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title" style="color:white;" id="myModalLabel"><b>Administradores del Sistema</b></h4>
            </div>
            <form id="formulario" class="form-group" onsubmit="return agregaEmpleado();">
            <div class="modal-body">
                <table border="0" width="100%">
                     <tr>
           <td colspan="2"><input type="text" class="form-control" required readonly id="id-prod" name="id-prod" readonly="readonly" style="visibility:hidden; height:5px;"/></td>
                    </tr>
                     <tr>
                        <td width="150">Proceso: </td>
                        <td><input type="text" class="form-control" required readonly id="pro" name="pro"/></td>
                    </tr>

                    <tr>
                        <td>Nombres:</td>
              <td><input type="text" class="form-control" required name="nom" id="nom" maxlength="100"/></td>
                    </tr>

                    <tr>
                        <td>Apellidos:</td>
              <td><input type="text" class="form-control" required name="ape" id="ape" maxlength="100"/></td>
                    </tr>

                    <tr>
                        <td>Cedula:</td>
              <td><input type="text" class="form-control" required name="ced" id="ced" maxlength="100"/></td>
                    </tr>

                    <tr>
                        <td>Usuario: </td>
                        <td><input type="text" class="form-control" required name="user" id="user" maxlength="100"/></td>
                    </tr>

                    <tr>
                        <td>Contraseña:</td>
              <td><input type="password" class="form-control" required name="pass" id="pass" maxlength="100"/></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div id="mensaje"></div>
                        </td>
                    </tr>
                </table>
            </div>
            
            <div class="modal-footer">
                <input type="submit" value="Registrar" class="btn btn-success" id="reg"/>
                <input type="submit" value="Editar" class="btn btn-warning"  id="edi"/>
            </div>
            </form>
          </div>
        </div>
      </div>
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
