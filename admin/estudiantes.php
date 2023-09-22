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
    <link rel="shortcut icon" href="../images/ISTV.jpg">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/estudiante.css?uuid=<?php echo uniqid();?>">


<script src="js/jquery.js"></script>
<script src="estudiantes/myjava.js"></script></script>

</head>
<body>
      <?php include('navegacion.php');?>
<main>
        <div class="est" >

            <div>
             <br>
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
                <h1 class="page-header titulo">
                <small><img src="../images/logoISTV.ico"></small> Registro de Estudiantes 
                        </h1>
                <!-- /.row -->
                <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <tr>
                    <td><strong>Buscar Estudiante:</strong></td>
                    <td>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Ingrese datos del Estudiante" id="bs-prod">
                            <span class="input-group-btn">
                                <b class="form-control"></b>
                            </span>
                        </div>
                    </td>
                    <td>
                        <button id="nuevo-producto" class="btn btn-success">Nuevo Estudiante</button>
                    </td>
                    <td>
                        <a href="exel.php" class="btn btn-info">Subir archivo Excel</a>
                    </td>
                </tr>
            </table>

            
            <div class="registros rtx" id="agrega-registros"></div>
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center" id="pagination"></ul>
            </nav>
        </div>
    </div>


    
 <br>
 <br>
 <div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <div class="registros rtx" id="agrega-registros"></div>
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center" id="pagination"></ul>
            </nav>
        </div>
    </div>
</div>

<div class="modal fade" id="registra-producto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header" style="background: #839ca9; color: white;">
                <h4 class="modal-title" id="myModalLabel"><b>Registro de Estudiantes</b></h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <form id="formulario" class="form-horizontal" onsubmit="return agregaEmpleado();">
               
            <div class="modal-body">
                    <div class="form-group">
                        <label for="id-prod" class="col-sm-2 control-label">Proceso:</label>
                        <div class="col-sm-10">
                        <td colspan="2"><input type="text" class="form-control" required readonly id="id-prod" name="id-prod" readonly="readonly" style="visibility:hidden; height:5px;"/></td>
                        <input type="text" class="form-control" required readonly id="pro" name="pro"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="carnet" class="col-sm-2 control-label">Cédula:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Por seguridad, ingrese el número de cédula" required name="carnet" id="carnet" maxlength="100" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombre" class="col-sm-2 control-label">Estudiante:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Ingrese los dos nombres del estudiante" required name="nombre" id="nombre" maxlength="100" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="anio" class="col-sm-2 control-label">Año:</label>
                        <div class="col-sm-10">
                            <select name="anio" id="anio" class="form-control" required>
                                <option value="1ro" selected>1ro</option>
                                <option value="2do">2do</option>
                                <option value="3ro">3ro</option>
                                <option value="4to">4to</option>
                                <option value="5to">5to</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="carrera" class="col-sm-2 control-label">Carrera:</label>
                        <div class="col-sm-10">
                            <select name="carrera" id="carrera" class="form-control" required>
                                <option value="" selected>Seleccione la Carrera</option>
                                <option value="TECNOLOGÍA SUPERIOR EN CONTABILIDAD">TECNOLOGÍA SUPERIOR EN CONTABILIDAD</option>
                            <option value="TECNOLOGÍA SUPERIOR EN MARKETING DIGITAL Y GESTIÓN">TECNOLOGÍA SUPERIOR EN MARKETING DIGITAL Y GESTIÓN</option>
                            <option value="TECNOLOGÍA SUPERIOR EN DESARROLLO DE SOFTWARE">TECNOLOGÍA SUPERIOR EN DESARROLLO DE SOFTWARE</L>
                            <option value="TECNOLOGÍA SUPERIOR EN GASTRONOMÍA">TECNOLOGÍA SUPERIOR EN GASTRONOMÍA</option>
                            <option value="TECNOLOGÍA SUPERIOR EN SEGURIDAD E HIGIENE DEL TRABAJO">TECNOLOGÍA SUPERIOR EN SEGURIDAD E HIGIENE DEL TRABAJO</ftware>
                            <option value="TECNOLOGÍA SUPERIOR EN ADMINISTRACIÓN FINANCIERA">TECNOLOGÍA SUPERIOR EN ADMINISTRACIÓN FINANCIERA</ene>
                            <option value="TECNOLOGÍA SUPERIOR EN DISEÑO GRÁFICO">TECNOLOGÍA SUPERIOR EN DISEÑO GRÁFICO</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div id="mensaje"></div>
                        </div>
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