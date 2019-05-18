<?php
$dados = file_get_contents('php://input');
/*session_start();
$_SESSION['ANGULAR'] = readfile('php://input');
$dados = $_SESSION['ANGULAR'];*/
echo $dados;
