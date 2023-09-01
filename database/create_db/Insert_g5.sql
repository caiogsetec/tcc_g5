INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (1, 'Gabryell Martins', 'gabryellmartins@gmail.com', 'gabry1104', '543.850.548-52', '(14)99824-5556', '2023-05-14', '2023-05-14', 0);
INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (2, 'Caio Garbin', 'caiogarbin@gmail.com', 'cai1704', '587.865.748-56', '(14)99878-1256', '2023-04-18', '2023-05-18', 0);
INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (3, 'Pedro Henrick', 'henrickpedro@gmail.com', 'ped1111', '528.571.755-56', '(14)99428-8914', '2023-04-25', '2023-05-25', 0);
INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (4, 'Leonardo Felipe', 'leofelipe@gmail.com', 'leofelp777', '544.661.760-58', '(14)99822-4456', '2023-05-28', '2023-05-28', 0);
INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (5, 'Rodrigo Jose', 'zerodri@gmail.com', 'ze999', '144.764.549-12', '(14)99743-8134', '2023-04-08', '2023-06-08', 1);
INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (6, 'Rodrigo Jose', 'zerodri@gmail.com', 'ze999', '141.794.888-10', '(14)99444-1155', '2023-04-07', '2023-07-07', 1);
INSERT INTO USUARIOS (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario) VALUES (7, 'Luis Silva', 'silvaluis@gmail.com', 'luissilv415', '100.554.978-15', '(14)99123-1475', '2023-04-08', '2023-08-08', 1);


-- den_status: 0 enviada, 1 recebida, 2 em andamento, 3 resolvida, 4 publicada

INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (1, 1, '2023-08-17', 'Descarte irregular de lixo', 'R.José Demori', '249', 'Centro', '', 'Em frente à prefeitura', 4, '2023-08-20', 'Limpeza realizada no local');
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (2, 1, '2023-08-18', 'Buracos na rua', 'R. Joaquim V Oliveira', '1', 'Centro', '', 'Proximo a escola EE Prof.ª Auda Malta', 3, '2023-08-21', null);
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (3, 3, '2023-08-18', 'Descarte irregular de poda de arvores', 'R. Nova', '336', 'Centro', '', 'Proximo ao Telecentro', 4, '2023-08-20', 'Limpeza realizada no local');
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (4, 1, '2023-08-17', 'Descarte irregular de lixo', 'R.Brasil', '249', 'Centro', '', '', 4, '2023-08-20', 'Limpeza realizada no local');
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (5, 1, '2023-08-20', 'Buracos na rua', 'Av. Rinópolis', '111', 'Centro', '', 'Esquina', 4, '2023-08-21', 'Reparo realizado');
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (6, 3, '2023-08-21', 'Descarte irregular de poda de arvores', 'R. Acre', '1336', 'Centro', '', '', 4, '2023-08-20', 'Limpeza realizada no local');
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (7, 2, '2023-08-22', 'Rua com buracos', 'R. Joaquim V Oliveira', '186', 'Bairro Norte', '', 'Proximo ao Estadio municipal', 2, null, null);
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (8, 3, '2023-08-22', 'Descarte irregular de material de Construção', 'R. Kenzo Kano', '129', 'Bairro Oeste', '', '', 1, null, null);
INSERT INTO DENUNCIAS (den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao) VALUES (9, 3, '2023-09-25', 'Poste sem luz', 'R José Pimentel Neto', '106', 'Bairro Leste', '', 'Primeiro poste da rua', 0, null, null);

INSERT INTO EQUIPES (eqp_id, eqp_setor, eqp_serv_oferecido) VALUES (1, 'Limpeza', 'Limpeza do ambiente');
INSERT INTO EQUIPES (eqp_id, eqp_setor, eqp_serv_oferecido) VALUES (2, 'Auxiliar de recape', 'Recapiar o asfalto');
INSERT INTO EQUIPES (eqp_id, eqp_setor, eqp_serv_oferecido) VALUES (3, 'Eletricista', 'Arrumar os postes de luz');

INSERT INTO AGENDA_DENUNCIAS (agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio) VALUES (1, 1, 1, 'Limpar descarte irregular', '2023-08-20', 'Manhã', 'Realizada');
INSERT INTO AGENDA_DENUNCIAS (agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio) VALUES (2, 2, 2, 'Tampar Buraco', '2023-08-21', 'Tarde', 'Encaminhado para a SABESP, pois havia um cano quebrado');
INSERT INTO AGENDA_DENUNCIAS (agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio) VALUES (3, 3, 1, 'Limpar Descarte irregular de poda de arvores', '2023-08-20', 'Tarde', 'Realizada'); 
INSERT INTO AGENDA_DENUNCIAS (agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio) VALUES (4, 5, 1, ' Limpar o Descarte irregular de material de Construção', '2023-08-21', 'Manhã', 'Encontrado animal morto'); 
INSERT INTO AGENDA_DENUNCIAS (agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio) VALUES (5, 4, 2, 'Tampar buraco da rua', '2023-08-20', 'Manhã', 'Reparo realizado'); 
INSERT INTO AGENDA_DENUNCIAS (agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio) VALUES (6, 5, 1, ' Limpar o Descarte irregular de material de Construção', '2023-08-21', 'Manhã', 'Encontrado animal morto'); 

INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (1, 1, 'Trabalho de limpeza de descarte irregular finalizado!', 'Foto1.png', false, true);
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (2, 3, 'Limpeza de galhos e folhas feito!', 'Foto2.png', false, true);
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (3, 4, 'Limpeza de galhos e folhas feito!', 'Foto3.png', false, true); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (4, 5, 'Mais um trabalho de recape bem sucedido!', 'Foto4.png', false, true); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (5, 6, 'Materiais de construção em local inadequado', 'Foto5.png', true, false); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (6, 6, 'Foi finalizado uma limpeza de materiais de contrução!', 'Foto6.png', false, true); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (7, 7, 'Buraco da rua', 'Foto7.png', true, false); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (8, 7, 'Outro buraco na rua', 'Foto8.png', true, false); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (9, 7, 'Mais buracos na rua', 'Foto9.png', true, false); 
INSERT INTO ANEXOS (anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois) VALUES (10, 9, 'Rua escura', 'Foto10.png', true, false); 

SELECT * FROM DENUNCIAS;
SELECT * FROM EQUIPES;
SELECT * FROM AGENDA_DENUNCIAS;
SELECT * FROM ANEXOS;
select * from usuarios;
-- Trabalho de recapeação finalizado!

SELECT usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario FROM usuarios; 
SELECT den_id, usu_id, den_data, den_descricao, den_endereco, den_end_num, den_end_bairro, den_end_comp, den_end_refer, den_status, den_data_res, den_txt_publicacao FROM denuncias; 
SELECT eqp_id, eqp_setor, eqp_serv_oferecido FROM equipes; 
SELECT agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio FROM agenda_denuncias; 
SELECT anx_id, den_id, anx_descricao, anx_arquivo, anx_antes, anx_depois FROM anexos; 