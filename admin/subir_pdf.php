<?php
include_once 'pdf/config.inc.php';
if (isset($_POST['subir'])) {
    $nombre = $_FILES['archivo']['name'];
    $tipo = $_FILES['archivo']['type'];
    $tamanio = $_FILES['archivo']['size'];
    $ruta = $_FILES['archivo']['tmp_name'];
    $destino = "pdf/archivos/" . $nombre;
    if ($nombre != "") {
        if (copy($ruta, $destino)) {
            $libro= $_POST['libro'];
            $titulo= $_POST['titulo'];
            $descri= $_POST['descripcion'];
            $db=new Conect_MySql();
            $sql = "INSERT INTO pdf (id_libro, titulo,descripcion,tamanio,tipo,nombre_archivo) VALUES('$libro','$titulo','$descri','$tamanio','$tipo','$nombre')";
            $query = $db->execute($sql);
            if($query){
                    echo '<script> alert("El Libro PDF se ha subido al servidor con Exito.");</script>';
                   echo '<script> window.location="subir_pdf.php"; </script>';

            }
        } else {
              echo '<script> alert("Error al subir el Libro.");</script>';
        }
    }
}

?>
<?php
    include_once 'pdf/config.inc.php';
    $db=new Conect_MySql();
    $consulta="select id_libro, nombre from libros";
    $resultado=$db->execute($consulta);

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
    <link rel="shortcut icon" href="../images/ISTV.jpg">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="libros/css/estilo.css" rel="stylesheet">
    <link href="css/pdf.css" rel="stylesheet">
<script src="libros/js/jquery.js"></script>
<script src="clientes/myjava.js"></script>

</head>
<body>
      <?php include('navegacion.php');?>
<!----------------------Titulo y logotipo------------------------->
        <div class="main">

          <div class="container-fluid">
             <br>
                

            <div class="row">
              <div class="col-lg-12">
               <br>
                 
              </div>

              </div>
               <h1 class="page-header2">
                            <small><img src="../images/logoISTV.ico"></small> Subir Libros PDF
                </h1>
              <!--------------Formulario de subuda de libro en PDF-------------- -->
            <br>
            <form method="post" action="" enctype="multipart/form-data">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-header  text-white">
                        <h3 class="card-title">Subir Libro PDF</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="titulo">Título:</label>
                            <input type="text" name="titulo" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="libro">Libro:</label>
                            <select name="libro" class="form-control">
                                <?php 
                                if ($resultado->num_rows > 0) {
                                    while ($row = $resultado->fetch_array(MYSQLI_ASSOC)) {
                                        echo "<option value='".$row['id_libro']."'>".$row['nombre']."</option>";
                                    }
                                } else {
                                    echo "<option value=''>No hay libros disponibles</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="descripcion">Descripción:</label>
                            <textarea name="descripcion" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="archivo">Archivo PDF:</label>
                            <input type="file" name="archivo" class="form-control" accept="application/pdf" required>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="submit" name="subir" class="btn btn-success">Subir Libro</button>
                        <a href="lista_pdf.php" class="btn btn-primary float-right">Listado de Libros</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

  
   <!-------------fin del formulario ------------------>
                            
                <br>
            </div>
         
        </div>
  
    </div>

    <!------------------ jQuery ----------------->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
