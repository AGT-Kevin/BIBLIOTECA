
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
<script src="libros/js/jquery.js"></script>
<link href="css/pdf.css" rel="stylesheet">
<script src="clientes/myjava.js"></script>

</head>
<body>
      <?php include('navegacion.php');?>
   
          <div class="main">
             <br>
                <!-- Page Heading -->
            <div class="row">
              <div class="col-lg-12">
               <br>                
              </div>
              </div>
               <h1 class="page-header2">
                            <small><img src="../images/logoISTV.ico"></small> Lista Libros PDF
                </h1>
              <!-- /.row -->
            <br> 
            <form action="subir_pdf.php">
                <input class="btn btn-primary" type="submit" value="Añadir PDF">
            </form>  
            <br>       
            <!-- ... Código HTML anterior ... -->

<table class="table table-condensed table-stripped rtx">
    <tr>
        <td class="th1" width="300">Titulo</td>
        <td class="th1" width="500">Descripcion</td>
        <td class="th1" width="200">Tamaño</td>
        <td class="th1" width="200">Tipo</td>

        <td class="th1" width="100">Acciones</td> <!-- Agregamos la columna de acciones -->
    </tr>
    <?php
    include 'pdf/config.inc.php';
    $db = new Conect_MySql();
    $sql = "select * from pdf";
    $query = $db->execute($sql);
    while ($datos = $db->fetch_row($query)) { ?>
        <tr>
            <td><?php echo $datos['titulo']; ?></td>
            <td><?php echo $datos['descripcion']; ?></td>
            <td><?php echo $datos['tamanio']; ?></td>
            <td><?php echo $datos['tipo']; ?></td>
            

            <td>
    <button class="btn btn-warning btn-sm">
        <a href="pdf/pdfbd.php?id=<?php echo $datos['id_pdf'] ?>"><b>Ver</b></a>
    </button>

    <!-- Agregamos el botón de eliminar con la misma clase de tamaño -->
    <button class="btn btn-danger btn-sm" onclick="eliminarPDF(<?php echo $datos['id_pdf'] ?>)">
        <b>Eliminar</b>
    </button>
</td>

            </td>
        </tr>
    <?php } ?>

</table>

<script>
    function eliminarPDF(id) {
        if (confirm("¿Estás seguro de que deseas eliminar este libro PDF?")) {
            // Redirige a tu script de eliminación PHP con el ID del libro PDF
            window.location.href = "eliminar_pdf.php?id=" + id;
        }
    }
</script>

<!-- ... Código HTML posterior ... -->

   <!--fin del backup -->
                            
                       <!--fin de la restauracion -->
                <br>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
