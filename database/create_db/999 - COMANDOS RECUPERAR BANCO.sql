-- SELECT
SELECT oco_id, oco_tipo FROM ocorrencias; 
SELECT ett_id, jog_id, prt_id, oco_id FROM estatisticas;
-- SELECT prt_id, prt_rodada, prt_data, prt_hora, tme_id_mandante, tme_id_visitante, est_id FROM partidas;
SELECT prt_id, prt_rodada, prt_data, prt_hora, est_id, tme_id_mandante, prt_gols_mandante, tme_id_visitante, prt_gols_visitante, prt_realizada FROM partidas;
SELECT tme_id, tme_nome, tme_sigla, tme_brasao FROM times;
SELECT est_id, est_nome, est_cidade, est_interditado, est_capacidade FROM estadios;
SELECT tme_id, est_id FROM time_estadios; 
SELECT jog_id, jog_nome, jog_apelido, jog_foto, jog_posicao, tme_id FROM jogadores;
SELECT jog_id, jgct_contusao FROM jogador_contundido;

-- DROP
DROP TABLE estatisticas;
DROP TABLE time_estadios;
DROP TABLE partidas;
DROP TABLE ocorrencias;
DROP TABLE jogador_contundido;
DROP TABLE jogadores;
DROP TABLE times;
DROP TABLE estadios; 

-- DESCRIBE
DESCRIBE times;
DESCRIBE estatisticas;
DESCRIBE jogadores;
DESCRIBE estadios;
DESCRIBE partidas;

-- APAGAR REGISTROS
DELETE FROM jogadores;
DELETE FROM ocorrencias;
DELETE FROM partidas;
DELETE FROM estadios;
DELETE FROM times;

-- RESETAR AUTO INCREMENTO (somente para tabelas criadas com Auto-incremento)
ALTER TABLE ocorrencias AUTO_INCREMENT = 1;
ALTER TABLE estatisticas AUTO_INCREMENT = 1;
ALTER TABLE partidas AUTO_INCREMENT = 1;
ALTER TABLE times AUTO_INCREMENT = 1;
ALTER TABLE estadios AUTO_INCREMENT = 1;
ALTER TABLE time_estadios AUTO_INCREMENT = 1;
ALTER TABLE jogadores AUTO_INCREMENT = 1;
ALTER TABLE jogador_contundido AUTO_INCREMENT = 1;

