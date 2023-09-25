
 
<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>
<!------inportacion de datos de la base de datos------------>
<?php 
$consulta1="select id_categoria, nombre_categoria from categorias";
$categoria=mysqli_query($con, $consulta1);



$consulta3="select id_subcategoria, nombre_subcategoria from subcategorias";
$subcategoria=mysqli_query($con, $consulta3);
?>
<!----------------------inicio html------------------->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Administracion</title>
    <link rel="shortcut icon" href="../images/ISTV.jpg">    <!-- ------------------Bootstrap Core CSS --------------->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!------------------ Custom CSS ---------------->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-------------- Morris Charts CSS ----------->

    <!-- ------------Custom Fonts ----------------->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/libros.css?uuid=<?php echo uniqid();?>">
   <link href="css/estilo.css" rel="stylesheet">
   <link href="css/boton.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="libros/myjava.js"></script>

</head>
<body>
      <?php include('navegacion.php');?>

      <main>
        <div class="est">

            <div class="est">
             <br>
             
                <!--------------------------- Titulo y logotipo--------------- -->
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
                <h1 class="page-header titulo">
                <small><img src="../images/logoISTV.ico"></small> 
                            Registro de Libro
                        </h1>
                <!------------------------ Tabla de datos de los libros------------------->


    


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
                    <button id="nuevo-producto" class="btn btn-success">Nuevo Libro</button>
                    </td>
                   
                </tr>
            </table>



 <br>
 <br>
 

    <div class="registros rtx" style="width:100%;" id="agrega-registros"></div>
    <center>
        <ul class="pagination " id="pagination"></ul>
    </center>
    

    <!------------------------------ MODAL PARA EL REGISTRO------------------------------->
    <div class="modal fade" id="registra-producto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background:#839ca9;">
                <button type="button" class="close" style="color:white; font-size: 20px;" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" style="color:white;" id="myModalLabel"><b>Mantenimiento de Libros</b></h4>
            </div>
            <form id="formulario" class="form-horizontal" action="libros/agrega_libro.php" enctype="multipart/form-data" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" required readonly id="id-prod" name="id-prod" readonly="readonly" style="visibility:hidden; height:5px;" />
                    </div>

                    <div class="form-group">
                        <label for="pro" class="col-sm-3 control-label">Proceso:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" required readonly id="pro" name="pro" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="foto" class="col-sm-3 control-label">Foto:</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control" required readonly name="foto" id="foto" accept="image/png, image/jpeg" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nombre" class="col-sm-3 control-label">Nombre:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" required name="nombre" id="nombre" maxlength="100" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nombre" class="col-sm-3 control-label">ISBN:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" required name="ISBN" id="ISBN" maxlength="100" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nombre" class="col-sm-3 control-label">Descripción:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" required name="descripcion" id="descripcion" maxlength="100" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="categoria" class="col-sm-3 control-label">Categoría:</label>
                        <div class="col-sm-9">
                            <select name="categoria" id="categoria" class="form-control" required>
                                <?php 
                                while ($fila = mysqli_fetch_row($categoria)) {
                                    echo "<option value='".$fila['0']."'>".$fila['1']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="subcategoria" class="col-sm-3 control-label">Subcategoría:</label>
                        <div class="col-sm-9">
                            <select name="subcategoria" id="subcategoria" class="form-control" required>
                                <?php 
                                while ($fila = mysqli_fetch_row($subcategoria)) {
                                    echo "<option value='".$fila['0']."'>".$fila['1']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="descarga" class="col-sm-3 control-label">Autor:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" required name="descarga" id="descarga" maxlength="250" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="fecha" class="col-sm-3 control-label">Fecha Ingreso:</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" required name="fecha" id="fecha" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div id="mensaje"></div>
                    </div>
                </div>
            
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success" id="reg">Registrar</button>
                    <button type="submit" class="btn btn-warning" id="edi">Editar</button>
                </div>
            </form>
        </div>
    </div>
</div>


    </main>
    <script src="js/jquery.js"></script>
    <!------------------- Bootstrap Core JavaScript -------------------->
    <script src="js/bootstrap.min.js"></script>
    <!-- -----------------Morris Charts JavaScript --------------->

</body>
</html>
<?php
}else{
    echo '<script> window.location="../index.php"; </script>';
}
?>
