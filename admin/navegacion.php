 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="../images/ISTV.jpg">
    <link rel="stylesheet" href="css/navegacion.css?uuid=<?php echo uniqid();?>">
</head>
<body>

  <!-- header start -->
  <header class="header">
     <div class="container">
        <div class="header-main">
           <div class="logo1">
          <img src="../images/ISTV.jpg" alt="">
              <a href="">Administración</a>
           </div>
           <div class="open-nav-menu">
              <span></span>
           </div>
           <div class="menu-overlay">
           </div>
           <!-- navigation menu start -->
           <nav class="nav-menu">
             <div class="close-nav-menu">
                <img src="../images/ISTV.jpg" alt="close">
             </div>
             <ul class="menu">
                <li class="menu-item">
                   <a href="inicio.php">Inicio</a>
                </li>
                <li class="menu-item">
                   <a href="estudiantes.php">Estudiantes</a>
                </li>
                <li class="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">Libros<i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="libros.php">Registro libros</a></li>
                       <li class="menu-item"><a href="categoria_libro.php">Categoria</a></li>
                       <li class="menu-item"><a href="subcategoria_libro.php">Subcategoria</a></li>
                       <li class="menu-item"><a href="inventario.php">Inventariado</a></li>
                   </ul>
                </li>

                <li class="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">PDFs<i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="subir_pdf.php">Registro PDFs</a></li>
                       <li class="menu-item"><a href="lista_pdf.php">Listado PDFs</a></li>
                   </ul>
                </li>

                <li class="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">Prestamos<i class="plus"></i></a>
                   <ul class="sub-menu">
                   <li class="menu-item"><a href="Lista_prestamos_libros.php">Lista prestamos</a></li>
                       <li class="menu-item"><a href="prestar_libro.php">Prestamo</a></li>

                       <li class="menu-item"><a href="comentarios.php">Prestamo Digital</a></li>
                   </ul>
                </li>

                <li class="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">Usuarios<i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="usuarios.php">Administradores</a></li>
                       <li class="menu-item"><a href="visitantes.php">Usuarios</a></li>
                       
                   </ul>
                </li>
                <li class="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">Seguridad<i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="copiaSeguridad.php">Respaldos</a></li>
                   </ul>
                </li>

                <li class="menu-item">
                   <a href="../index.php">Salir</a>
                </li>
                

             </ul>
           </nav>
           <!-- navigation menu end -->
        </div>
     </div>
  </header>
  <!-- header end -->

 <script src="js/navegacion.js"></script>

</body>
</html>
 