<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicio de Sesion</title>
        <link rel="shortcut icon" href="images/ISTV.jpg"> 
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="loginassets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/index.css?uuid=<?php echo uniqid();?>">
        <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    </head>
    <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="login/validarUsuario.php"  method="POST" class="sign-in-form">
         
            
            <img src="images/ISTV.jpg" alt="" class="image2">
          
            <h2 class="title">Inicio de Sesión</h2>
           
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="username" placeholder="Mi Usuario"  id="form-username" required />
            </div>

            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Mi Contraseña" id="form-password" required />
            </div>
            <button type="submit" class="btn solid" name="login">Entrar</button>  

            <p>Aun no  estas regitrado:</p>  
        <strong><p><a class="span2" href="registro.php">Registrate Aqui</a></p></strong>
          </form>
          <form action="login/validar.php"  method="POST" class="sign-up-form">
          <img src="images/ISTV.jpg" alt="" class="image2">
            <h2 class="title">Administración</h2>

            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="username" placeholder="Usuario..."   id="form-username" required>
            </div>
           
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password..."  id="form-password" required>
            </div>

            <button type="submit" class="btn" name="login">Entrar</button>   
        
          </form>
        </div>
      </div>
      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Para  ti</h3>
            <p>
            Las malas bibliotecas crean colecciones, las buenas bibliotecas crean servicios, las grandes bibliotecas crean comunidades
            </p>
            <button class="btn transparent" id="sign-up-btn">
               Administrador
            </button>
          </div>
          <img src="images/user.png" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
          <h3>Para  ti</h3>
            <p>
            Cualquier libro que ayude a un niño a adquirir un hábito de lectura, a hacer de la lectura una de sus necesidades profundas y continuas, es bueno para él
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Inicio de sesion
            </button>
          </div>
          <img src="images/admin.png" class="image" alt="" />
        </div>
      </div>
    </div>

 
      <script src="js/app.js"></script>
</html>
