<?php
//conexão
$user = "xtranx";
$pass= "";
$server = "localhost";
$banco = "MEUCARRINHO";
//criando conexão
$con = new mysqli($server,$user,$pass,$banco);
//mostrando se deu erro na conexao com o banco de dados
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
//Codificação de caracteres em UTF-8
$con->query("SET NAMES 'utf8'");
$con->query('SET character_set_connection=utf8');
$con->query('SET character_set_client=utf8');
$con->query('SET character_set_results=utf8');
// -- Codificação de caracteres em UTF-8
