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
<title>Inicio</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="css/inicio/main_styles.css">
<link rel="shortcut icon" href="images/ISTV.jpg"> 
<link rel="stylesheet" type="text/css" href="css/inicio/responsive.css">
<link rel="stylesheet" href="css/inicio.css?uuid=<?php echo uniqid();?>">
</head>
<body>

<?php
//session_start();
include("admin/conexion.php");
$nombre = $_SESSION['usuario'];?>

<div class="super_container">

	<!-- Header -->
    <?php include ('includes/header.php');?>
	
    <!-- Home -->

	<div class="home">

		<!-- Hero Slider -->
		<div class="hero_slider_container">
			<div class="hero_slider owl-carousel">
				
				<!-- Hero Slide -->
				<div class="hero_slide ban1">
					<div class="hero_slide_background ban2" style="background-image:url(images/slider_background.jpg)"></div>
					<div class="ban3 hero_slide_container d-flex flex-column align-items-center justify-content-center">
						<div class="ban4 text-center">
							<h1 class="ban4" data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut" > Se Bienvenido  <span class="ban5"><?php echo $nombre; ?> </span><br> a la biblioteca virtual</h1>
						</div>
					</div>
				</div>
				
				<!-- Hero Slide -->
				<div class="hero_slide ban1">
					<div class="hero_slide_background ban2" style="background-image:url(images/slider_background.jpg)"></div>
					<div class=" ban3 hero_slide_container d-flex flex-column align-items-center justify-content-center">
						<div class="ban4 text-center">
							<h1 class="ban4" data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut"><span class="ban5"><?php echo $nombre; ?> </span> ahora puedes buscar <br>tu libro preferido</h1>
						</div>
					</div>
				</div>
				
				<!-- Hero Slide -->
				<div class="hero_slide ban1">
					<div class="hero_slide_background ban2" style="background-image:url(images/slider_background.jpg)"></div>
					<div class="ban3 hero_slide_container d-flex flex-column align-items-center justify-content-center">
						<div class="ban4 text-center">
							<h1 class="ban4"  data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut"><span class="ban5"><?php echo $nombre; ?> </span> si deseas un prestamo <br>fisico puedes visitarnos o contactarnos</h1>
						</div>
					</div>
				</div>

			</div>

			
		</div>

	</div>

	<div class="hero_boxes">
		<div class="hero_boxes_inner">
			<div class="container">
				<div class="row">

					<div class="col-lg-4 hero_box_col">
						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
							<img src="images/earth-globe.svg" class="svg" alt="">
							<div class="hero_box_content">
								<h2 class="hero_box_title">Buscar mi libro</h2>
								<a href="busqueda.php" class="hero_box_link">Buscar</a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 hero_box_col">
						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
							<img src="images/books.svg" class="svg" alt="">
							<div class="hero_box_content">
								<h2 class="hero_box_title">Servicio de prestamos</h2>
								<a href="contacto.php" class="hero_box_link">ver</a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 hero_box_col">
						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
							<img src="images/professor.svg" class="svg" alt="">
							<div class="hero_box_content">
								<h2 class="hero_box_title">contactarme con un administrador</h2>
								<a href="contacto.php" class="hero_box_link">contactar</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Popular -->

	<div class="popular page_section">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>En que nos destacamos</h1>
					</div>
				</div>
			</div>

			<div class="row course_boxes">
				
				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card card1">
						<img class="card-img-top img2" src="images/course_1.jpg" alt="Erro: 48966">
						<div class="card-body text-center">
							<div class=" rt">Desarrollo de Sofware</div>
							<div class="card-text">"Preguntarse cuándo los ordenadores podrán pensar es como preguntarse cuándo los submarinos podrán nadar"</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name">Edsger W. Dijkstra <span>Author</span></div>

						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top img2" src="images/course_2.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="rt">Contabilidad</div>
							<div class="card-text">"No hay atajo para el éxito. Ya sea que quiera ser ingeniero, contador público o modelo de moda, debes trabajar duro."</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name">Tanushree Dutta <span>Author</span></div>

						</div>
					</div>
				</div>

                <!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top img2" src="images/confianza/Seguridad.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="rt">Seguridad e Higiene <br><br>  </div>
							<div class="card-text">"La seguridad es algo que ocurre entre tus orejas, no algo que tienes en tus manos"</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name">Jeff Cooper <span>Author</span></div>

						</div>
					</div>
				</div>

                <!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/confianza/gastronomia.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="rt">Gatronomia <br></div>
							<div class="card-text">La cocina de autor es poner tu personalidad en lo que haces y ese sentimiento la convierte en algo distinto.</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name">Ferran Adriá <span>Author</span></div>

						</div>
					</div>
				</div>

                <!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/confianza/contabilidad.jpeg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="rt">Administración <br></div>
							<div class="card-text">"Dame seis horas para talar un árbol y pasaré las primera cuatro horas afilando el hacha."</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name">Abraham Lincoln <span>Author</span></div>

						</div>
					</div>
				</div>


				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/confianza/diseno.jpg" alt="https://unsplash.com/@dsmacinnes">
						<div class="card-body text-center">
							<div class="rt">Diseño Grafico </div>
							<div class="card-text">«Si puedes diseñar una cosa, entonces puedes diseñarlo todo; si lo haces bien, perdurará para siempre.» </div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name">Massimo Vignelli <span>Author</span></div>
							
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>

	


	<!-- Events -->

	<div class="events page_section">
		<div class="container">
			
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>Festeja estos dias a las bibliotecas</h1>
					</div>
				</div>
			</div>
			
			<div class="event_items">

				<!-- Event Item -->
				<div class="row event_item">
					<div class="col">
						<div class="row d-flex flex-row align-items-end">

							<div class="col-lg-2 order-lg-1 order-2">
								<div class="event_date d-flex flex-column align-items-center justify-content-center">
									<div class="event_day">1853</div>
									<div class="event_month">año</div>
								</div>
							</div>

							<div class="col-lg-6 order-lg-2 order-3">
								<div class="event_content">
									<div class="event_name"><a class="trans_200" >Dónde nació la primera biblioteca</a></div>
									<div class="event_location"> antigua capital asiria</div>
									<p>Es necesario retroceder a 1853, concretamente a diciembre de ese mismo año, para rememorar el descubrimiento de lo que se ha constituido como la primera biblioteca de la historia.</p>
								</div>
							</div>

							<div class="col-lg-4 order-lg-3 order-1">
								<div class="event_image">
									<img src="images/event_1.jpg" alt="https://unsplash.com/@theunsteady5">
								</div>
							</div>

						</div>	
					</div>
				</div>

				<!-- Event Item -->
				<div class="row event_item">
					<div class="col">
						<div class="row d-flex flex-row align-items-end">

							<div class="col-lg-2 order-lg-1 order-2">
								<div class="event_date d-flex flex-column align-items-center justify-content-center">
									<div class="event_day">24</div>
									<div class="event_month">Octubre</div>
								</div>
							</div>

							<div class="col-lg-6 order-lg-2 order-3">
								<div class="event_content">
									<div class="event_name"><a class="trans_200">Dia de las bibliotecas</a></div>
									<div class="event_location">España </div>
									<p>Desde el año 1997 cada 24 de octubre se celebra en varios países el Día Internacional de las Bibliotecas.</p>
								</div>
							</div>

							<div class="col-lg-4 order-lg-3 order-1">
								<div class="event_image">
									<img src="images/event_2.jpg" alt="https://unsplash.com/@claybanks1989">
								</div>
							</div>

						</div>	
					</div>
				</div>

				<!-- Event Item -->
				<div class="row event_item">
					<div class="col">
						<div class="row d-flex flex-row align-items-end">

							<div class="col-lg-2 order-lg-1 order-2">
								<div class="event_date d-flex flex-column align-items-center justify-content-center">
									<div class="event_day">2009</div>
									<div class="event_month">año</div>
								</div>
							</div>

							<div class="col-lg-6 order-lg-2 order-3">
								<div class="event_content">
									<div class="event_name"><a class="trans_200" >Cuál es la biblioteca más antigua del mundo</a></div>
									<div class="event_location">Monasterio de Santa Catalina del Monte Sinaí, Egipto</div>
									<p> El monasterio en sí fue declarado Patrimonio de la Humanidad por la Unesco en 2009 y esta situada a los pies del sagrado monte Sinaí, es la más antigua del mundo en funcionamiento..</p>
								</div>
							</div>

							<div class="col-lg-4 order-lg-3 order-1">
								<div class="event_image">
									<img src="images/un.jpeg" alt="https://unsplash.com/@juanmramosjr">
								</div>
							</div>

						</div>	
					</div>
				</div>

			</div>
				
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer ">
		<div class=" er">
			
			
			<div class="footer_content">
				<div class="row">

					<!-- Footer Column - About -->
					<div class="col-lg-3 footer_col">

						<!-- Logo -->
						

                    <div class="col-lg-3 footer_col">
                    <div >
								<img  class="logo1" src="images/ISTV.jpg" alt="">
								
							</div>
                        </div>
					
					<!-- Footer Column - Usefull Links -->
                    <div class="logo_container">
							<div class="logo">
								<img src="images/logoISTV.jpg" alt="">
								<span>Instituto Superior Tecnológico "Vicente León"</span>
							</div>
						</div>

						<p class="footer_about_text">Hay quienes no pueden imaginar un mundo sin pájaros; hay quienes no pueden imaginar un mundo sin agua; en lo que a mí se refiere, soy incapaz de imaginar un mundo sin libros»</p>

					</div>
                    
                    <div class="col-lg-3 footer_col">
						
                        </div>
				


					<!-- Footer Column - Contact -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Contacto</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Calle Belisario Quevedo y, C. Gral. Maldonado, Latacunga 050102
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									(03) 281-2981
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>

			<!-- Footer Copyright -->

			<div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
				<div class="footer_copyright">
					<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | Realizado <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://istvicenteleon.edu.ec/" target="_blank">ISTVL</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
				</div>
				<div class="footer_social ml-sm-auto">
					<ul class="menu_social">
						<li class="menu_social_item"><a href="https://www.instagram.com/ist_vicenteleon/"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item"><a href="https://www.facebook.com/ist.vicenteleon"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item"><a href="https://twitter.com/ist_vicenteleon"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>

</div>

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