<?php
//sessao
session_start();

//conexao
include_once '../../php_action/db_connect.php';

if(isset($_POST['btn-reativar'])):

	$id = mysqli_escape_string($connect, $_POST['id']);
	
	
	//echo "update atendente set nome = '$nome', login = '$login', senha = '$senha', cpf = '$cpf', tipo_acesso = '$tipo_acesso' where id_atendente = '$id'";
	
	//$sql = "delete from atendente where id_atendente = '$id'";

	$ativo = 1;
	$sql = "update atendente set ativo = '$ativo' where id_atendente = '$id'";

	if(mysqli_query($connect, $sql)):
		$_SESSION['MENSAGEM'] = "Atendente " .$sql. " reativaaaaa com sucesso!";
		//$_SESSION['mensagem'] = "update atendente set nome = '$nome', login = '$login', senha = '$senha', cpf = '$cpf', tipo_acesso = '$tipo_acesso' where id_atendente = '$id'";
		header('location: ../atendente.php');
	else:
		$_SESSION['MENSAGEM'] = "Erro ao Reativar Atendente!";	
		header('location: ../atendente.php');
	endif;
endif;
?>

