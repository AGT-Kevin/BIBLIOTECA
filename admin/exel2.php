
<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="../images/ISTV.jpg">
    <link type="text/css" rel="shortcut icon" href="img/logo-mywebsite-urian-viera.svg"/>
  <title>Administracion</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/cargando.css">
  <link rel="stylesheet" type="text/css" href="css/cssGenerales.css">
  <link rel="stylesheet" href="css/exel2.css?uuid=<?php echo uniqid();?>">
</head>
<body>
<nav class="nav1">
    <ul class="ul1" >
      <li class="li1">
        <a href="index.php"> 
          <img class="logo" src="../images/logoISTV.ico" alt="Web Developer Urian Viera" width="120">
        </a>
      </li>
    </ul>
    <div class="title">
      <h5 class="title"> Ingreso de documento exel (CSV) de los libros </h5>
    </div>

    <div>
      <button class="btn-est"><a href="inventario.php"> Regresar</a></button>
    </div>
</nav>


<div class="container">
<h4 >
  Ojo los archivos que se desean subir <br>
  deben ser de tipo CSV(delimitado por comas).
</h4>
<hr>
<br><br>
<div class="ejem">
<h5>El documento en Exel debe tener la Siguente estructura</h5>
<img  class="img-ejem" src=" images/ejemplo2.png" alt="">
</div>

 <div class="row1">
    <div class="row2">
      <form action="recibe_exel_validado2.php" method="POST" enctype="multipart/form-data">
        <div class="row3">
            <input  type="file" name="dataCliente" id="file-input" accept=".xlsx, .xls, .csv" class="row4"/>
            <label class="row5" for="file-input">
              <i class="row6"></i>
              
            
          </div>
      <div class="text-center mt-5">
          <input type="submit" name="subir" class="btn-enviar" value="Subir Excel"/>
      </div>
      </form>
    </div>

    <div class="col1">
  <?php
  header("Content-Type: text/html;charset=utf-8");
  include('conexion.php');
  $sqlClientes = ("SELECT * FROM inventario ORDER BY 	id_inventario ASC");
  $queryData   = mysqli_query($con, $sqlClientes);
  $total_client = mysqli_num_rows($queryData);
  ?>

      <h6>
        Lista de los libros ingresados <strong>(<?php echo $total_client; ?>)</strong>
      </h6>

        <table class="table1">
          <thead>
            <tr>
              <th class="as">Id</th>
              <th class="as">Codigo</th>
              <th class="as">ISBN</th>
              <th class="as">Libro</th>
              <th class="as">Autor</th>
              <th class="as">Editorial</th>
              <th class="as">Origen</th>
              <th class="as">Edicion</th>
              <th class="as"># de Edicion</th>
              <th class="as">Fecha</th>
            </tr>
          </thead>
          <tbody class="uv">
            <?php 
            $i = 1;
            while ($data = mysqli_fetch_array($queryData)) { ?>
            <tr>
              <th class="tg" scope="row"><?php echo $i++; ?></th>
              <td class="tg"><?php echo $data['codigo']; ?></td>
              <td class="tg"><?php echo $data['ISBN']; ?></td>
              <td class="tg"><?php echo $data['libro']; ?></td>
              <td class="tg"><?php echo $data['autor']; ?></td>
              <td class="tg"><?php echo $data['descripcion']; ?></td>
              <td class="tg"><?php echo $data['fila']; ?></td>
              <td class="tg"><?php echo $data['categoria']; ?></td>
              <td class="tg"><?php echo $data['estante']; ?></td>
              <td class="tg"><?php echo $data['fecha']; ?></td>
            </tr>
          <?php } ?>
          </tbody>
        </table>

    </div>
  </div>

</div>


<script src="js/jquery.min.js"></script>
<script src="'js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $(window).load(function() {
            $(".cargando").fadeOut(1000);
        });      
});
</script>

</body>
</html>
<?php
}else{
    echo '<script> window.location="../index.php"; </script>';
}
?>