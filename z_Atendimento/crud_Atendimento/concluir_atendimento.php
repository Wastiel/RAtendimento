<?php
//sessao
session_start();

//conexao
include_once '../../php_action/db_connect.php';

if(isset($_POST['btn-concluir'])):

	$id = mysqli_escape_string($connect, $_POST['id']);
	
	
	//echo "update atendente set nome = '$nome', login = '$login', senha = '$senha', cpf = '$cpf', tipo_acesso = '$tipo_acesso' where id_atendente = '$id'";
	
	//$sql = "delete from atendimento where id_atendimento = '$id'";
	$sql = "update atendimento set ativo = 'C' where id_atendimento = '$id'";

	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = "Atendimento " .$id. " finalizado com sucesso!";
		//$_SESSION['mensagem'] = "update atendente set nome = '$nome', login = '$login', senha = '$senha', cpf = '$cpf', tipo_acesso = '$tipo_acesso' where id_atendente = '$id'";
		header('location: ../atendimento.php');
	else:
		$_SESSION['mensagem'] = "Erro ao fechar o atendimento";	
		header('location: ../atendimento.php');
	endif;
endif;
?>

