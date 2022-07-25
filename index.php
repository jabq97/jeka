<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Inicio - Login</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<img src="imagenes/cabecera.png" alt="">
<?php require "navbar_registrarse.php";  ?>
	
	
	<div class="content">
			<form method="post" action="checkLogin.php">
				<div class="message">
					<p class="mensajeError">
						<?php if (isset($_GET['error'])) {echo "Error los datos ingresados no son correctos.";}?>
					<p>
					<p class="mensajeSucces">
						<?php if (isset($_GET['registrado'])) {echo "Usuario registrado correctamente.";}?>
					<p>
				</div>
				<div class="datoForm">
					<div class="titulo_ingreso">Ingrese sus datos para iniciar sesión</div>
					<label for="email">Email:</label>
					<input name="email" required type="emial" id="email" placeholder="Escribe tu nombre.">
				</div>
				<div class="datoForm">
					<label for="password">Contraseña:</label>
					<input name="password" required type="password" id="password" placeholder="Escribe tu Contraseña.">
				</div>
				<input class="boton" type="submit" value="Ingresar">

			</form>
	   
	</div>
</body>
</html>