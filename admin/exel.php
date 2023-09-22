
<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>
 <!-------------------------inicio del HTML--------------->
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
  <link rel="stylesheet" href="css/exel.css?uuid=<?php echo uniqid();?>">
</head>
<body>
  <!-----------------------------------------barra de navegacion corto-------------->
<nav class="nav1">
    <ul class="ul1" >
      <li class="li1">
        <a href="index.php"> 
          <img class="logo" src="../images/logoISTV.ico" alt="Web Developer Urian Viera" width="120">
        </a>
      </li>
    </ul>
    <div class="title">
      <h5 class="title"> Ingreso de documento exel (CSV) de los estudiantes </h5>
    </div>

    <div>
    <a href="estudiantes.php"><button class="btn-est"> Regresar</button></a>
    </div>
</nav>
<div class="container-parent">
<!-------------------Contenedor de ingreso de exel de registro------------------> 
<div class="container">
<h4 >
  Ojo los archivos que se desean subir <br>
  deben ser de tipo CSV(delimitado por comas).
</h4>
<hr>
<br><br>
<div class="ejem">
<h5>El documento en Exel debe tener la Siguente estructura</h5>
<img  class="img-ejem" src=" images/ejemplo.png" alt="">
</div>

 <div class="row1">
    <div class="row2">
    <form action="recibe_excel_validando.php" method="POST" enctype="multipart/form-data" class="file-upload-form">
    <div class="file-upload-container">
        <input type="file" name="dataCliente" id="file-input" accept=".xlsx, .xls, .csv" class="file-input file-label">
    </div>
    <div class="text-center mt-5">
        <input type="submit" name="subir" class="btn-enviar" value="Subir Excel">
        <div id="error-message" class="error-message"></div> <!-- Mensaje de error -->
    </div>
</form>
    </div>

</div>
</div>
<!------------------js---------------->
<script src="js/jquery.min.js"></script>
<script src="'js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script>
document.querySelector(".file-upload-form").addEventListener("submit", function (event) {
    const fileInput = document.querySelector("#file-input");
    const errorMessage = document.querySelector("#error-message");

    if (fileInput.files.length === 0) {
        errorMessage.textContent = "Por favor, selecciona un archivo.";
        errorMessage.classList.add("active"); // Agregar clase para mostrar el mensaje
        event.preventDefault(); // Evitar el envío del formulario
    } else {
        errorMessage.textContent = ""; // Borrar el mensaje de error si se selecciona un archivo
        errorMessage.classList.remove("active"); // Quitar clase para ocultar el mensaje
    }
});


</script>

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