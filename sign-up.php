<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Inicio - Sign Up</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
    <img src="imagenes/cabecera.png" alt="">
    <?php require "navbar_registro.php";  ?>
	
	<div class="content">
	
	<form method="post" action="createUser.php">
	<div class="titulo_ingreso">Ingrese sus datos para  el registro</div>
		<div class="datoForm">
			<label for="nombre">Nombre:</label>
			<input name="nombre" required type="text" id="nombre" placeholder="Escribe tu nombre.">
		</div>
		<div class="datoForm">
			<label for="apellido">Apellido:</label>
			<input name="apellido" required type="text" id="apellido" placeholder="Escribe tu apellido.">
		</div>
		<div class="datoForm">
			<label for="email">Correo:</label>
			<input name="email" required type="email" id="email" placeholder="Escribe tu Correo.">
		</div>
		<div class="datoForm">
			<label for="ubicacion">Ubicación:</label>
			<select name="ubicacion" required name="ubicacion" id="ubicacion">
			<option value="Distrito Capital">Distrito Capital</option>
			<option value="Amazonas">Amazonas</option>
			<option value="Anzoategui">Anzoategui</option>
			<option value="Apure">Apure</option>
			<option value="Aragua">Aragua</option>
			<option value="Barinas">Barinas</option>
			<option value="Bolivar">Bolivar</option>
			<option value="Carabobo">Carabobo</option>
			<option value="Cojedes">Cojedes</option>
			<option value="Delta Amacuro">Delta Amacuro</option>
			<option value="Falcon">Falcon</option>
			<option value="Guarico">Guarico</option>
			<option value="Lara">Lara</option>
			<option value="Merida">Merida</option>
			<option value="Miranda">Miranda</option>
			<option value="Monagas">Monagas</option>
			<option value="Nueva Esparta">Nueva Esparta</option>
			<option value="Portuguesa">Portuguesa</option>
			<option value="Sucre">Sucre</option>
			<option value="Tachira">Tachira</option>
			<option value="Trujillo">Trujillo</option>
			<option value="Vargas">Vargas</option>
			<option value="Yaracuy">Yaracuy</option>
			<option value="Zulia">Zulia</option>
		</select>
		</div>
		<div class="datoForm">
			<label for="password">Contraseña:</label>
			<input name="password" required type="password" id="password" placeholder="Escribe tu Contraseña.">
		</div>
		<div class="datoForm">
			<label for="ci">Cédula:</label>
			<input name="ci" required type="text" id="ci" placeholder="Escribe tu Cédula.">
		</div>
		<input class="boton" type="submit" value="Registrar">

	</form>
	</div>
</body>
</html>