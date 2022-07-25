<?php  
	header("Location: /index.php?registrado=true");
	require_once "connect.php";

	//Variables
	$nombre 	= $_POST["nombre"];
	$apellido	= $_POST["apellido"];
	$email		= $_POST["email"];
	$ubicacion 	= $_POST["ubicacion"];
	$password 	= $_POST["password"];
	$ci 		= $_POST["ci"];

	//Sentencias SQL.
	$sentencia = $conexion->prepare("Insert INTO Usuario VALUES (?, ?, ?, ?, ?, ?);");
	$resultado = $sentencia->execute([$ci, $nombre, $apellido, $email, $ubicacion, $password]);
	exit();
?>