<?php
session_start();
$usuario = $_POST['usuario'];
$password = $_POST['password'];
include ('funciones.php');
$xc = conectar();
$sql = "SELECT * FROM usuario WHERE usuario = '".$usuario."' AND password = ".$password;
//echo $sql;
$res = mysqli_query($xc, $sql) or die("Error"); 
$filas = mysqli_fetch_array($res);
if(isset($filas)){
    echo 'Logueado';
    $_SESSION['usuario'] = $_POST['usuario'];
    $_SESSION['password'] = $_POST['password'];
    header("Location: paginaprincipal.php");
    echo $_SESSION['usuario'];
    exit();
}
else{
    echo 'Usuario o password incorrecto';
}

//print_r($res)
//echo $_POST['usuario'].$_POST['password'];

?>