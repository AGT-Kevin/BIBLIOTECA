<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>

<?php

$result=mysqli_query($con, "SELECT count(utc) as visitas from visitas");
$row = mysqli_fetch_array($result);
    $nvisitas = $row["visitas"];

$visitas = "select * from visitas";
$visitas2 = mysqli_query($con, $visitas);
$tvisitas = mysqli_num_rows($visitas2);


$peticion = "select * from libros";
$resultado = mysqli_query($con, $peticion);
$contados = mysqli_num_rows($resultado);

$peticion2 = "select * from comentarios";
$resultado2 = mysqli_query($con, $peticion2);
$contados2 = mysqli_num_rows($resultado2);

$peticion3 = "select * from visitantes";
$resultado3 = mysqli_query($con, $peticion3);
$contados3 = mysqli_num_rows($resultado3);

$peticion5 = "select * from administrador_biblioteca";
$resultado5 = mysqli_query($con, $peticion5);
$contados5 = mysqli_num_rows($resultado5);

$peticion6 = "select * from usuario_estudiante";
$resultado6 = mysqli_query($con, $peticion6);
$contados6 = mysqli_num_rows($resultado6);


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
	<link rel="shortcut icon" href="../images/ISTV.jpg">    <!-------------- Libreria de Bootstrap----------------->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- ------------hojas de estilo css ------------------->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!------------------ graficos morris --------------->
    <link rel="stylesheet" href="css/inicio.css?uuid=<?php echo uniqid();?>"><link href="css/morris.css" rel="stylesheet">

    <!----------------- fuentes --------------->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
   <?php include('navegacion.php');?>
	<!--  ----------------- Tarjetas de accesos directos del administrador-------------------->

    <main>
    <div class="title-cards">
        <h1>Bienvenido Administrador</h1>
		<h2> los accesos rapidos de nuestro sistema Bibliotecario</h2>
	</div>
<div class="container-card">
	
<div class="card">
	<figure>
		<img src="images/inicio/mensajes.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Mensajes Y Comentarios?</h3>
        <h4><?php  echo $contados2;?></h4>
		<p>Podremos observar los mensajes y comentarios de nuestros usuarios</p>
		<a href="comentarios.php">Ver Mesajes</a>
	</div>
</div>
<div class="card">
	<figure>
		<img src="images/inicio/libros.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Libros <br>Registrados</h3>
        <h4><?php  echo $contados;?></h4>
		<p>Aqui podras ver todos los que se encuentran dentro de la biblioteca.</p>
		<a href="#">Ver libros</a>
	</div>
</div>
<div class="card">
	<figure>
		<img src="images/inicio/estudiante.jpg">
	</figure>
	<div class="contenido-card">
		<h3>estudiantes<br>Registrados</h3>
        <h4><?php  echo $contados6;?></h4>
		<p>Aqui podras ver todos los Estudiantes de nuestra biblioteca.</p>
		<a href="estudiantes.php">Ver Estudiantes</a>
	</div>
</div>
</div>
<div class="container-card">
	
<div class="card">
	<figure>
		<img src="images/inicio/administrador.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Administrador</h3>
        <h4><?php  echo $contados5;?></h4>
		<p>Aqui podras ver quienes pueden administran y ingresar nuestra biblioteca</p>
		<a href="usuarios.php">Ver Administradores</a>
	</div>
</div>
<div class="card">
	<figure>
		<img src="images/inicio/visitas.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Visitas</h3>
        <h4><?php  echo $tvisitas;?></h4>
		<p>Aqui te mostrara las visita que hemos tenido de diferentes dispositivos</p>
		<a href="visitas.php">Ver Visitas</a>
	</div>
</div>
<div class="card">
	<figure>
		<img src="images/inicio/visitantes.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Visitantes</h3>
        <h4><?php  echo $contados3;?></h4>
		<p>Aqui podras Gestionar los visitantes de la biblioteca virtual.</p>
		<a href="visitantes.php">Ver Visitantes</a>
	</div>
</div>
</div>


<div class="container-card">
	
<div class="card">
	<figure>
		<img src="images/inicio/basedatos.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Base de Datos</h3>
		<p>Aqui podras realizar una copia de seguridad de los datos de la biblioteca para mantener tus archivos seguros.</p>
		<a href="copiaSeguridad.php">Hacer copia de Seguridad</a>
	</div>
</div>
<div class="card">
	<figure>
		<img src="../images/logoISTV.ico">
	</figure>
	<div class="contenido-card">
		<h3>Intituto Superior <br> Tecnologico <br><br> VICENTE LEON</h3>
		
		<a href="https://istvicenteleon.edu.ec/">Ir a IST VICENTE LEON</a>
	</div>
</div>
<div class="card">
	<figure>
		<img src="images/inicio/biblioteca.jpg">
	</figure>
	<div class="contenido-card">
		<h3>Biblioteca</h3>
		<p>Creamos tu página web utilizando las últimas tecnologías disponibles. Una Web adaptativa a tu móvil o Tablet y con un gestor de contenido fácil.</p>
		<a href="../index.php">ir a Biblioteca</a>
	</div>
</div>
</div>


<!--Fin   Tarjetas-->
</main>
<!--------------------------------fin de los accesos directos--------------------------------->

   
</body>
</html>
<?php
}else{
    echo '<script> window.location="index.php"; </script>';
}
?>
