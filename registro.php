<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/registro.css?uuid=<?php echo uniqid();?>">
    <title>Registro </title>
</head>
<body>
    
<div class="container1">
    <div class="title">Aqui puedes Registrarte</div>
    <div class="content">
      <form action="funciones_php/validarVisitante.php"  method="POST">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Mi nombre y apellido</span>
            <input   type="text"  name="nombre" required="required" placeholder="Nombre Completo" value="" >
          </div>
          <div class="input-box">
            <span class="details">Mi Usuario</span>
            <input   type="text"  name="alias"      required="required" placeholder="Nombre de Usuario" value=""> 
          </div>
          <div class="input-box">
            <span class="details">Mi Correo </span>
            <input  type="email" name="email"      required="required" placeholder="Email" value="">
          </div>
           <div class="input-box">
            <span class="details">Mi contraseña</span>
            <input  type="text"  name="pass"       required="required" placeholder="Contraseña" value=""> 
          </div>
          <div class="input-box">
            <span class="details">Mi numero de Telefono</span>
            <input   type="number"  name="telefono" required="required" placeholder="Telefono" value="">
          </div>
         
          <div class="input-box">
            <span class="details">Confirmo mi contraseña</span>
            <input type="text" placeholder="Confirmo la contraseña" required>
          </div>
          <div class="input-box">
            <span class="details">Mi Direccion</span>
            <input   type="text"  name="direccion"  required="required" placeholder="Direccion"       value="">
          </div>

          <div class="input-box">
            <span class="details">Mi edad</span>
            <input   type="number"  name="edad" required="required" placeholder="Edad" value=""> 
          </div>
        </div>

        <div class="input-box">
            <span class="details">Yo soy</span>
        <select class="select" name="sexo">
                   <option>Usuario</option>
                   <option>Estudiante del ISTVL</option>
                   <option>Docente </option>
               </select> 
               </div>
               
        <div class="button">
          <input type="submit"  name="login" value="Registrarme">
        </div>
      </form>
      <span ><a  class="span2" href="index.php">Cancelar</a></span>
    </div>
  </div>
  <?php include ('includes/whatssap.php');?>

</body>
</html>
