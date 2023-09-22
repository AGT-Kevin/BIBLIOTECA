<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {


$consulta=mysqli_query($con, "select * from libros limit 0,6");
$nro_reg=mysqli_num_rows($consulta);
    if ($nro_reg==0){
	echo 'No Tienes Productos en la Base de Datos';
	}
	$result=mysqli_query($con, "SELECT count(utc) as visitas from visitas");
   $row = mysqli_fetch_array($result);
    $numero_visitas = $row["visitas"];
	$result2=mysqli_query($con, "SELECT count(utc) as visitas from visitas WHERE fecha_visita = CURDATE( )");
    $row2 = mysqli_fetch_array($result2);
    $visitas_hoy = $row2["visitas"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
	<link rel="shortcut icon" href="images/ISTV.jpg"> 
	<link rel="stylesheet" type="text/css" href="css/bootstrap4/bootstrap.min.css">
    <title>Libros Digitales</title>
	<link rel="stylesheet" href="css/busqueda.css?uuid=<?php echo uniqid();?>">
</head>
<body>
            <?php include ('includes/header.php');?>
		
<main class="titulo2">
	<!----------------------------contenedor de busqueda de libros---------------------------->			
<div class="container1">
		     <div class="row">
		     	       <br>
						<div class="busca">
					     <form name="busqueda" method="get" action="busqueda.php">				
							<div >
								<input  class="busca1" type="text" placeholder="Buscar" name="buscar" required="true" />
							</div>	
						</div>
						<div >
						<input type="submit" name="enviar" value="Buscar Libro" class="busca2">

					    </div>	
					     </form>
					<div >
						<a href="busqueda.php"><button class="busca2">Ver Todos</button></a>
					    </div>	
              </div> 
	<!----------------------------FIN contenedor de busqueda de libros---------------------------->




<!----------------------------contenedor de  busquedad de libros---------------------------->

                	<br><br>
				<h2>Listado de Libros</h2>
</main>

<main class="main2">
<?php
        if (isset($_GET['enviar'])) {
         $busqueda=$_GET['buscar'];
         $query=mysqli_query($con, "select * from libros where nombre like '%$busqueda%' and disponible='si' ");
		if (mysqli_num_rows($query) < 1) {
		//echo "<script>alert('No tenemos libros con esa categoria')</script>";
		 echo "<div class='col-sm-3'>";  
		 echo "<p style='color:red;'><b>No tenemos libros que coincidan con este nombre</b></p>"; 
		 echo "</div>";   	
		}
		else{
		while($row=mysqli_fetch_array($query)){
			
		        $id=$row['id_libro'];
				$foto=$row['foto'];
				$nombre=$row['nombre'];
				$descripcion=$row['descripcion']; 	
			?>
       <div class="container6">
	   <div class="card">
	   <img src="<?php echo 'admin/libros/'.$foto ?>">
		   <h4><?php echo $nombre ?></h4>
		   <p><?php echo  $descripcion ?></p>
		  <button> <a href="admin/pdf/archivo.php?id=<?php echo $row['id_libro']?>" class="btn btn-default add-to-cart">
			<i class="fa fa-download"></i>Ver y Descargar</a></button>
	   </div> 
<!----------------------------Fin contenedor de busqueda de libros---------------------------->
</div>
	   


<!----------------------------Inicio de Listado de libros principal---------------------------->
      
<?php } } ?>
         <?php	
        }
        else{
        $query=mysqli_query($con, "select * from libros ");
           while($row=mysqli_fetch_array($query)){
			
		        $id=$row['id_libro'];
				$foto=$row['foto'];
				$nombre=$row['nombre'];
				$descripcion=$row['descripcion']; 	
			?>


<div class="container6		"> 
	   <div class="card">
	   
	   <img src="<?php echo 'admin/libros/'.$foto ?>">
		   <h4><?php echo $nombre ?></h4>
		   <p><?php echo  $descripcion ?></p>
		  <button> <a href="admin/pdf/archivo.php?id=<?php echo $row['id_libro']?>" >
			Ver y Descargar</a></button>
	   </div> 
</div>	
         <?php
        }}	
  ?>
</main>
<!----------------------------Fin Inicio de Listado de libros principal---------------------------->

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
</main>  
</body>
</html>

<?php
}else{
    echo '<script> window.location="index.php"; </script>';
}
?>