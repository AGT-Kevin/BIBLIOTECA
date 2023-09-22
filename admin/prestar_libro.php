
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
    <link href="css/estilo.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <link href="css/pdf.css" rel="stylesheet">
    
    
</head>
<body>
    
<?php include('navegacion.php');?>


        <div >
            
            <div class="main" >
             <br>
             <h1 class="page-header titulo">
                <small><img src="../images/logoISTV.ico"></small> 
                       
                         Prestamos de Libros
                        </h1>
                        <table border="0" align="center">
    <tr>
        <td><strong>Buscar Libros:</strong></td>
        <td>&nbsp;&nbsp;</td>
        <td width="335">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Buscar" id="bs-prod" style="border-radius: 10px; padding-left: 5px;">
            </div>
        </td>
    </tr>
</table>

              <br>

               <div class="registros" style="width:100%;" id="agrega-registros"></div>
                 <center>
                      <ul class="pagination" id="pagination"></ul>
                </center>
            </div>
            
        </div>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    <script src="prestamos_libros/myjava.js"></script>
</body>
</html>
<?php
}else{
    echo '<script> window.location="../index.php"; </script>';
}
?>