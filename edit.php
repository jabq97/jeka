<?php
if(!isset($_GET["id"])) exit();
$id = $_GET["id"];
require_once "connect.php"; 
$sentencia = $conexion->prepare("SELECT * FROM estado WHERE id = ?;");
$sentencia->execute([$id]);
$estado = $sentencia->fetch(PDO::FETCH_OBJ);
if($estado === FALSE){
	#No existe
	echo "¡No existe alguna persona con ese ID!";
	exit();
}

#Si la persona existe, se ejecuta esta parte del código
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Modificar estado</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
    <img src="imagenes/cabecera.png" alt="">
	<?php require "navbar_home.php";  ?>
	<form method="get" action="edit.php">
		<!-- Ocultamos el ID para que el usuario no pueda cambiarlo (en teoría) -->
		<input type="hidden" name="id" value="<?php echo $estado->id; ?>">

		<label for="nombre">Nombre:</label>
		<br>
		<input value="<?php echo $estado->nombre ?>" name="nombre" required type="text" id="nombre" readonly>
		<br><br>
		<label for="edificios">edificios</label>
	    <input value="<?php echo $estado->edificios ?>" name="edificios" required type="number" id="edificios" >
		<br><br>
		<label for="casas">Casas:</label>
		<br>
		<input value="<?php echo $estado->casas ?>" name="casas" required type="number" id="casas" >
		<br><br>
		<button  type="submit" name="actualizar" onClick="actualizarPagina(document.getElementById('id').value, document.getElementById('nombre').value, document.getElementById('casas').value, document.getElementById('edificios').value);">Actualizar datos</button>
		
	</form>
</body>
</html>

<?php
if(isset($_GET['actualizar'])){
////// Informacion enviada por el formulario /////
$id=trim($_GET['id']);
$casas=trim($_GET['casas']);
$edificios=trim($_GET['edificios']);
////// Fin informacion enviada por el formulario ///

////////////// Actualizar la tabla /////////
$sentencia = "UPDATE estado
SET `casas`= :casas, `edificios` = :edificios
WHERE `id` = :id";
$sql = $conexion->prepare($sentencia);
$sql->bindParam(':casas',$casas,PDO::PARAM_INT);
$sql->bindParam(':edificios',$edificios,PDO::PARAM_INT);
$sql->bindParam(':id',$id,PDO::PARAM_INT);

$sql->execute();

if($sql->rowCount() > 0)
{
$count = $sql -> rowCount();
echo "<div class='content alert alert-primary' >
Gracias: $count registro ha sido actualizado </div>";
header("Refresh:1");
}
else{
echo "<div class='content alert alert-danger'> Se actualizo </div>";
print_r($sql->errorInfo()); 
}
}// Cierra envio
?>