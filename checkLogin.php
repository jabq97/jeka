<?php  
	require_once "connect.php";

	//Variables
	$email		= $_POST["email"];
	$password 	= $_POST["password"];

	//Sentencias SQL.

	$sentencia = $conexion->prepare('Select * FROM Usuario WHERE correo = ? AND clave=?');
	$sentencia->execute([$email, $password]);
	$checkLogin = $sentencia->fetch();

	if (empty($checkLogin)) {
		header("Location: /index.php?error=true");
	}else{
		header("Location: /home.php");
	}

	exit();
?>