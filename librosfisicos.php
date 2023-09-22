<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {

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
    <link rel="stylesheet" href="css/libros.css?uuid=<?php echo uniqid();?>">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	
</head>

<body> 
    <!-------------------------HEADER--------------------> 
<?php include ('includes/header.php');?>

<!-------------------------FIN HEADER-------------------->

 <!-------------------------------Inicio Selector-------------------------------->

 <div class="wrap">

		 <?php
$registro = mysqli_query($con,"SELECT * from inventario");

echo '<table  class="table rtx " id="myTable" >
<thead>
                           <tr>    
                          
                                    <th class="th1"><p>Codigo<p></th>
                                    <td class="th1"><p>ISBN</p></td>
                                    <td class="th1" ><p>Libro</p></td>
                                    <td class="th1"><p>Autor</p></td>
                                    <td class="th1"><p>Editorial</p></td>
                                    <td class="th1"><p>Origen</p></td>
                                    <td class="th1"><p>Edición</p></td>
									<td class="th1"><p>Número de edición</p></td>
									
                                  
                            
                          </tr></thead>';
                          
if(mysqli_num_rows($registro)>0){
  while($registro2 = mysqli_fetch_assoc($registro)){
      
    
    echo'<tr>
        <td >'.$registro2['codigo'].'</td>
        <td >'.$registro2['ISBN'].'</td>
        <td>'.$registro2['libro'].'</td>
        <td>'.$registro2['autor'].'</td>
        <td>'.$registro2['descripcion'].'</td>
        <td >'.$registro2['fila'].'</td>
		<td >'.$registro2['categoria'].'</td>
		<td >'.$registro2['estante'].'</td>

        '
        ?>
        <?php 
                
      
      
  }
}else{
  echo '<tr>
        <td colspan="6">No se encontraron resultados</td>
      </tr>';
}
echo '</table>'; ?>
</div>

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

<script>
	let table = new DataTable('#myTable',{
		language: {
        "decimal": "",
        "emptyTable": "No hay información",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ Entradas",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "Sin resultados encontrados",
        "paginate": {
            "first": "Primero",
            "last": "Ultimo",
            "next": "Siguiente",
            "previous": "Anterior"
        }
    }
	});
</script>

</html>
<?php
}else{
    echo '<script> window.location="index.php"; </>';
}
?>
       