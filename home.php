<?php 
	//Importamos la coneción con la base de datos.
	require_once "connect.php"; 

	$consulta = "SELECT * FROM estado";

	$busqueda = null;

	if(isset($_GET["busqueda"])){
		$busqueda = $_GET["busqueda"];
		$consulta = "SELECT * FROM estado WHERE nombre LIKE ?";
	}

	$sentencia = $conexion->prepare($consulta, [
		PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL,
	]);

	if($busqueda === null){
		$sentencia->execute();
	} else {
		$parametros = ["%$busqueda%"];
		$sentencia->execute($parametros);
	}
	
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
	<img src="imagenes/cabecera.png" alt="">
	<?php require "navbar.php";  ?>
	<form action="home.php" method="GET">
	<input type="text" name="busqueda" placeholder="Buscar estado">
	<br><br><br>
	<button type="submit">BUSCAR</button>
	<br><br><br>
</form>
	<div class="content_home">

<table>
<thead>
<tr class="titulo_estados">

<td>Estado</td>
<td>Edificios</td>
<td>Casas</td>
</tr>
</thead>
<tbody>

<?php while ($estado = $sentencia->fetchObject()) {?>
<tr class="estados">

<td><?php echo $estado->nombre ?></td>
<td><?php echo $estado->edificios ?></td>
<td><?php echo $estado->casas  ?></td>
<td class="editar"><a class="editar_letra" href="<?php echo "edit.php?id=" . $estado->id ?>">Editar</a></td>

<td class="editar"><a class="editar_letra" href="home.php">Todo los estados</a></td>

</tr>
<?php }?>
</tbody>
</table>
</div>
</body>
</html>