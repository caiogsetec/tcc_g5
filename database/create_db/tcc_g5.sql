CREATE TABLE `USUARIOS` (
	`usu_id` int NOT NULL AUTO_INCREMENT,
	`usu_nome` varchar(48) NOT NULL,
	`usu_email` varchar(64) NOT NULL,
	`usu_senha` varchar(128) NOT NULL,
	`usu_cpf` char(14) NOT NULL UNIQUE,
	`usu_telefone` varchar(14) NOT NULL,
	`usu_aceite_termos` DATE NOT NULL,
	`usu_aceite_politicas` DATE NOT NULL,
	`usu_funcionario` bit NOT NULL,
	PRIMARY KEY (`usu_id`)
);

CREATE TABLE `DENUNCIAS` (
	`den_id` int NOT NULL AUTO_INCREMENT,
	`usu_id` int NOT NULL,
	`den_data` DATE NOT NULL,
	`den_descricao` varchar(512) NOT NULL,
	`den_endereco` varchar(128) NOT NULL,
	`den_end_num` varchar(12) NOT NULL,
	`den_end_bairro` varchar(48) NOT NULL,
	`den_end_comp` varchar(48),
	`den_end_refer` varchar(48),
	`den_status` tinyint NOT NULL,
	`den_data_res` DATE,
	`den_txt_publicacao` varchar(512),
	PRIMARY KEY (`den_id`)
);

CREATE TABLE `ANEXOS` (
	`anx_id` int NOT NULL AUTO_INCREMENT,
	`den_id` int NOT NULL,
	`anx_descricao` varchar(64) NOT NULL,
	`anx_arquivo` varchar(512) NOT NULL,
	`anx_antes` bit NOT NULL,
	`anx_depois` bit NOT NULL,
	PRIMARY KEY (`anx_id`)
);

CREATE TABLE `AGENDA_DENUNCIAS` (
	`agd_id` int NOT NULL AUTO_INCREMENT,
	`den_id` int NOT NULL,
	`eqp_id` INT NOT NULL,
	`agd_instrucoes` varchar(128) NOT NULL,
	`agd_data` DATE NOT NULL,
	`adg_periodo` varchar(10) NOT NULL,
	`agd_relatorio` varchar(128) NOT NULL,
	PRIMARY KEY (`agd_id`)
);

CREATE TABLE `EQUIPES` (
	`eqp_id` int NOT NULL AUTO_INCREMENT,
	`eqp_setor` varchar(64) NOT NULL,
	`eqp_serv_oferecido` varchar(256) NOT NULL,
	PRIMARY KEY (`eqp_id`)
);

ALTER TABLE `DENUNCIAS` ADD CONSTRAINT `DENUNCIAS_fk0` FOREIGN KEY (`usu_id`) REFERENCES `USUARIOS`(`usu_id`);

ALTER TABLE `ANEXOS` ADD CONSTRAINT `ANEXOS_fk0` FOREIGN KEY (`den_id`) REFERENCES `DENUNCIAS`(`den_id`);

ALTER TABLE `AGENDA_DENUNCIAS` ADD CONSTRAINT `AGENDA_DENUNCIAS_fk0` FOREIGN KEY (`den_id`) REFERENCES `DENUNCIAS`(`den_id`);

ALTER TABLE `AGENDA_DENUNCIAS` ADD CONSTRAINT `AGENDA_DENUNCIAS_fk1` FOREIGN KEY (`eqp_id`) REFERENCES `EQUIPES`(`eqp_id`);

-- select
SELECT usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario FROM usuarios; 
SELECT den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao FROM denuncias; 
SELECT eqp_id, eqp_setor, eqp_serv_oferecido FROM equipes; 
SELECT agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio FROM agenda_denuncias; 
SELECT anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois FROM anexos; 

-- DROP
DROP TABLE usuarios;
DROP TABLE denuncias;
DROP TABLE equipes;
DROP TABLE agenda_denuncias;
DROP TABLE anexos;

-- DESCRIBE
DESCRIBE usuarios;
DESCRIBE denuncias;
DESCRIBE equipes;
DESCRIBE agenda_denuncias;
DESCRIBE anexos;

-- APAGAR REGISTROS
DELETE FROM usuarios;
DELETE FROM denuncias;
DELETE FROM equipes;
DELETE FROM agenda_denuncias;
DELETE FROM anexos;

use bd_tcc_etim_121_g5




