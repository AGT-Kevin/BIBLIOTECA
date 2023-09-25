<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>

<?php 
$consulta1="select id_categoria, nombre_categoria from categorias";
$categoria=mysqli_query($con, $consulta1);



$consulta3="select id_subcategoria, nombre_subcategoria from subcategorias";
$subcategoria=mysqli_query($con, $consulta3);
?>
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

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/inventario.css?uuid=<?php echo uniqid();?>">
   <link href="css/estilo.css" rel="stylesheet">
   <link href="css/boton.css" rel="stylesheet">
<script src="js/jquery.js"></script>


</head>
<body>
    
<?php include ('navegacion.php')?>

<div class="est" >

            <div>
             <br>
                <!-- Page Heading -->
                <div class="">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
                <h1 class="page-header titulo">
                            <small><img src="../images/logoISTV.ico"></small> Inventario de libros Fisicos
                        </h1>
                <!-- /.row -->
     

                <div class="container">
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <tr>
                    <td><strong>Buscar Libro:</strong></td>
                    <td>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Buscar Libro" id="bs-prod">
                            <span class="input-group-btn">
                                <b class="form-control"></b>
                            </span>
                        </div>
                    </td>

                    <td>
                        <button class="btn btn-success" type="button" id="nuevo-producto">Nuevo Libro</button>
                    </td>

                    <td>
                        <a href="exel2.php" class="btn btn-info">Subir archivo excel</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>




 <br>
 <br>
    <div class="registros" style="width:100%;" id="agrega-registros"></div>
    <center>
        <ul class="pagination" id="pagination"></ul>
    </center>

   
    <!-- MODAL PARA EL REGISTRO-->
    <div class="modal fade" id="registra-producto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" style="background:#839ca9;">
              <button type="button" class="close" style="color:white; font-size: 20px;" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title" style="color:white;" id="myModalLabel"><b>Mantenimiento de Libros</b></h4>
            </div>
            <form id="formulario" class="form-group" onsubmit="return agregaLibro();">
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
                        <td>Codigo: </td>
                        <td><input type="text" class="form-control" required name="codigo" id="codigo" maxlength="100"/></td>
                    </tr>
                    <tr>
                        <td>ISBN: </td>
                        <td><input type="text" class="form-control" required name="ISBN" id="ISBN" maxlength="100"/></td>
                    </tr>
                    <tr>
                        <td>Libro: </td>
                        <td><input type="text" class="form-control" required name="libro" id="libro" maxlength="100"/></td>
                    </tr>

                    <tr>
                        <td width="150">Autor: </td>
                        <td><input type="text" class="form-control" required  id="autor" name="autor"/></td>
                    </tr>

                    <tr>
                        <td>Editorial: </td>
                        <td><input type="text" class="form-control" required name="descripcion" id="descripcion" maxlength="100"/></td>
                    </tr>
                    <tr>
                        <td>Origen: </td>
                        <td><input type="text" class="form-control" required name="fila" id="fila" maxlength="100"/></td>
                    </tr>
                    <tr>
                        <td>Edicion: </td>
                        <td><input type="text" class="form-control" required name="categoria" id="categoria" maxlength="100"/></td>
                    </tr>
                    
                     
                    <tr>
                        <td>Numero de Edicion: </td>
                        <td><input type="text" class="form-control" required name="estante" id="estante" maxlength="100"/></td>
                    </tr>


                           
                    <tr>
                        <td>Cantidad: </td>
                        <td><input type="text" class="form-control" required name="cantidad" id="cantidad" maxlength="100"/></td>
                    </tr>


                    <tr>
                        <td>fecha: </td>
                        <td><input type="date" class="form-control" required name="fecha" id="fecha" maxlength="250"/></td>
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
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="inventario/myjava.js"></script>
    
</body>
</html>
<?php
}else{
    echo '<script> window.location="../index.php"; </script>';
}
?>