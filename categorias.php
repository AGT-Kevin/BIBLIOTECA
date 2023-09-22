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
    $fechaMensaje =date("Y-m-d");
	$result2=mysqli_query($con, "SELECT count(utc) as visitas from visitas WHERE fecha_visita = '".$fechaMensaje."'");
    $row2 = mysqli_fetch_array($result2);
    $visitas_hoy = $row2["visitas"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/ISTV.jpg"> 
    <title>Categorias</title>
    <link rel="stylesheet" href="css/categorias.css?uuid=<?php echo uniqid();?>">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">

</head>

<body> 
    <!-------------------------HEADER--------------------> 
<?php include ('includes/header.php');?>

<!-------------------------FIN HEADER-------------------->

 <!-------------------------------Inicio Selector-------------------------------->

 <div class="wrap">
		<h1>Escoge una Categoria</h1>
       
		<div class="store-wrapper">
        <?php $caq=mysqli_query($con,"select * from categorias");
while($catrow=mysqli_fetch_array($caq)){?>
			<div class="category_list">
        

                <a  class="category_item" href="categorias.php?cat=<?php 
                echo $catrow['id_categoria']; ?>">
                <?php echo $catrow['nombre_categoria']; ?></a>
			</div>
<?php }?> 
    
    
<!------------------------fin selector-------------------------->

<!-------------------------------Inicio Categorias-------------------------->

<?php
if (isset($_GET['cat'])) {
$cat=$_GET['cat'];
}
else
{
$cat = "1";	
// echo "<script>alert('No tenemos libros con esa categoria')</script>";
}
$query=mysqli_query($con,"select * from libros where id_categoria='$cat'");
if (mysqli_num_rows($query) < 1) {
//echo "<script>alert('No tenemos libros con esa categoria')</script>";
echo "<div class='col-sm-3'>";  
echo "<p style='color:green;'><b>Escoje una categoria o no tenemos libros en esta categoria</b></p>"; 
echo "</div>";   	
}
else
{
while($row=mysqli_fetch_array($query)){
$id=$row['id_libro'];
$foto=$row['foto'];
$nombre=$row['nombre'];
$descripcion=$row['descripcion']; 	
?>
<!----------------------------- FIN CATEGORIAS-------------------------------->


<!----------------------------- MUESTREO DE LIBROS-------------------------------->
<section class="products-list">
				<div class="product-item" >

					<img src="<?php echo 'admin/libros/'.$foto ?>">
					<h2><?php echo $nombre ?></h2>
<p><?php echo  $descripcion ?></p>
<button class="btn"><a  href="admin/pdf/archivo.php?id=<?php echo $row['id_libro']?>">
Ver y Descargar</a></button>
				</div>
</section>


<?php } } ?>


</body>



<!-------------------------JS Selector-------------------->
<script src="js/categorias.js"></script>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/script2.js"></script>


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
</html>
<?php
}else{
    echo '<script> window.location="index.php"; </>';
}
?>
       