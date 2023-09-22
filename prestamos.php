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
    <link rel="shortcut icon" href="images/ISTV.jpg"> 
    
    <title>Contacto</title>
	<link rel="stylesheet" href="css/prestamo.css?uuid=<?php echo uniqid();?>">
</head>
<body>
<!--barra de correo, telefono y login-->
<?php include ('includes/header.php');?>


  <section class="about-us">
    <div class="about">
      <img src="images/prestamos.jpg" class="pic">
      <div class="text">
        <h2></h2>
        <h5>Puedes ponerte en contacto con una persona del <span>Instituto Tecnologio Vicente Leon</span>, para poder solventar tus dudas</h5>
          
        <div class="data">
        <a href="https://wa.link/jqpw65" class="hire">Contactar</a>
        </div>
      </div>
    </div>
  </section>

	<!--pie de pagina-->

	 <!--Librerias de Jquery, Bootstrap y otras mas-->
   
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