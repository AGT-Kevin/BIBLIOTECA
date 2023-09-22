<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    
    <meta name="author" content="">
    <title>Prestamos</title>
    <link rel="shortcut icon" href="images/ISTV.jpg"> 
	<link rel="stylesheet" href="css/contacto.css?uuid=<?php echo uniqid();?>">
   
</head>

<body>

<?php include ('includes/header.php');?>

<!----------------------------------contenedor decontacto inicio de formulario----------->

<div class="container">
      <span class="big-circle"></span>
      
      <img src="images/shape.png" class="square" alt="" />
      <div class="form">
        <div class="contact-info">
          <h3 class="title">Prestamo de libros fisicos</h3>
          <p class="text">
           Bienvenido para realizar el prestamo de tu libro fisico debes llenar el siguiente formulario,
y enviar tus datos, ya realizado lo anterior, ya puedes acercater al INSTITUTO TECNOLOGIO VICENTE LEON, al departamneto de biblioteca y pedir tu libro
        </p>
   
            <img  class="logo1" src="images/ISTV.jpg"  alt="error de busqueda">
            
            <p class="text">
           Como llegar:
        </p>
          <div class="info">
            <div class="information">
          
              <img src="images/location.png" class="icon" alt="" />
             <a href="https://goo.gl/maps/LL1193wY29sGgb5H9"> <p>Instituto Tecnologico Vicente Leon</p></a>
            </div>
            <div class="information">
            
            
            </div>
            <div class="information">
       
            </div>
            </div>

          
        </div>

        
        <div class="contact-form">
          <span class="circle one"></span>
          <span class="circle two"></span>

          <form id="main-contact-form" action="funciones_php/validar_mensaje.php" autocomplete="off" name="contact-form" method="post" autocomplete="off">
            <h3 class="title">Prestamo</h3>
            <div class="input-container">
              <input type="text" name="nombre" class="input" />
              <label for="">Nombres y Apellidos</label>
              <span>Username</span>
            </div>
            <div class="input-container">
              <input type="email" name="email"class="input" />
              <label for="">Email</label>
              <span>Email</span>
            </div>
            <div class="input-container">
              <input type="text" name="asunto" class="input" />
              <label for="">Telefono</label>
              <span>Phone</span>
            </div>
            <div class="input-container textarea">
              <textarea name="mensaje" id="message" required class="input" rows="8"></textarea>
              <label for="">LIbro</label>
              <span>Message</span>
            </div>
            <input type="submit" name="submit"  value="Realizar Prestamo"class="btn" />
          </form>
        </div>
      </div>
    </div>


    <script src="js/app2.js"></script>
<!---------------fin del formulario-------------->
<?php include ('includes/whatssap.php');?>

<!---------pie de pagina--------------->



<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
</body>
</html>

<?php
}else{
    echo '<script> window.location="index.php"; </script>';
}
?>