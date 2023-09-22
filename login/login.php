<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administracion</title>
         <!-- CSS -->
         <link rel="stylesheet" href="../css/admin.css?uuid=<?php echo uniqid();?>">
    </head>
    <body>





    <div class="login-container">
          <div class="login-info-container">
		
            <h1 class="title">Bienvenido administrador</h1>
            <form class="inputs-container" action="validar.php"  method="POST">
			<input type="text" name="username" placeholder="Usuario..."  class="input" id="form-username" required>
            <input type="password" name="password" placeholder="Password..." class="input" id="form-password" required>
            
               
 <span class="span"><a href="../index.php">Regreso al inicio</a></span></p>
                <button type="submit" class="btn" name="login">Entrar</button>   
            </form>
          </div>
            <img class="image-container" src="../images/ISTV.jpg" alt="">
      </div>

	  <a href="https://wa.link/kb236t" target="_blank" class="whatsapp-btn">
<i class="bi bi-whatsapp"><img src="../images/iconos/what.ico" class="ico" alt="error"></i>
	<div class="joinchat__tooltip">
		<i class="bi bi-person-circle"></i>
		<div class="text">¿podemos ayudarte?</div>
	</div>
</a>


    <script type="text/javascript" src="js/admin.js"></script>
    </body>
</html>