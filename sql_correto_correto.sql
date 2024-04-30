CREATE SCHEMA IF NOT EXISTS ratendimento DEFAULT CHARACTER SET utf8 ;
USE ratendimento;

CREATE TABLE atendente (
    id_atendente INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	login varchar(45) NOT NULL,
	senha varchar(45) DEFAULT NULL,
	nome varchar(45) NOT NULL,
	cpf varchar(11) DEFAULT NULL,
	tipo_acesso varchar(1) DEFAULT NULL,
	ativo varchar(1) DEFAULT NULL
);

insert into atendente values (1, 'wsilva', 'd2063a446846c004df97e299fb781ea4', 'Willian Ramos da Silva','12345678911', 'A', 'A' );
select * from atendente;

CREATE TABLE tipo_atendimento (
    id_tipo_atendimento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo_atendimento VARCHAR(45) NOT NULL,
	ativo VARCHAR(1) NOT NULL
);

insert into tipo_atendimento values (1, 'CONSULTA', 'A');
select * from tipo_atendimento;


CREATE TABLE cliente (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    cpf varchar(45) NULL,
    telefone varchar(45) NULL,
	ativo VARCHAR(1)NOT NULL
);

insert into cliente values(1, 'Mary Mary', '03342211123', '51888776655', 'A');
select * from cliente;


CREATE TABLE atendimento (
    id_atendimento INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    id_tipo_atendimento INT NOT NULL,
    id_atendente INT NOT NULL,
    id_cliente INT NOT NULL,
    dt_fim timestamp NULL,
    dt_inicio timestamp NULL,
    descricao VARCHAR(250)NOT NULL,
	ativo VARCHAR(1)NOT NULL,	
    FOREIGN KEY (id_tipo_atendimento) REFERENCES tipo_atendimento(id_tipo_atendimento),
    FOREIGN KEY (id_atendente) REFERENCES atendente(id_atendente),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

insert into atendimento values (1, 1, 1, 1, '2020-10-01 19:10:25-07', '2020-10-01 09:10:25-07','teste', 'A');
select * from atendimento;






