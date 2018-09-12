/* Lógico_1: */

CREATE TABLE UNIDADE (
	id_unidade int PRIMARY KEY,
    cnpj varchar(15),
    razão social varchar(45),
    endereco varchar(45)    
    FK_FUNCIONARIO_id_funcionario
);

CREATE TABLE SUBESTACAO (
    id_subestacao int PRIMARY KEY,
    unidade_id int, 
    FK_UNIDADE_id_unidade
);

CREATE TABLE FUNCIONARIO (
    id_func int PRIMARY KEY,
	nome_func varchar(45)
);

CREATE TABLE CDC (
	id_cdc int PRIMARY KEY,
    tag varchar(15),
    local_cdc varchar(15),
    tipo_cdc varchar(15)
);

CREATE TABLE CCM (
	id_ccm int PRIMARY KEY,
    tag_ccm varchar(15),
    local_ccm varchar(15),
    tipo_ccm varchar(15)
);

CREATE TABLE GAVETA (
id_gaveta int PRIMARY KEY,
nome_gaveta varchar(15)
);

CREATE TABLE SALA_ELETRICA (
	id_sala int PRIMARY KEY,
    tag_sala varchar(15),
    local_sala varchar(15)
);

CREATE TABLE GAVETA_MOTOR(
    id_gmotor int PRIMARY KEY,
	tag_gmotor varchar(15),
    tipo_gmotor varchar(15),
    local_gmotor varchar(15)
);

CREATE TABLE GAVETA_PAINEL (
	id_gaveta_painel int primary key,
    tipo_gaveta_painel varchar(25)
);

CREATE TABLE MOTOR (
    modelo_motor varchar(25),
    fabricante_motor varchar(25),
    local_motor varchar(25),
    tipo_motor varchar(25),
    serial_motor varchar(25)
);

CREATE TABLE PAINEL (
	id painel int PRIMARY KEY,
    tag varchar(25),
    fabricante varchar(25),
    local_painel varchar(25)
);
 
ALTER TABLE UNIDADE ADD CONSTRAINT FK_UNIDADE_1
    FOREIGN KEY (FK_FUNCIONARIO_id_funcionario)
    REFERENCES FUNCIONARIO (id_funcionario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SUBESTACAO ADD CONSTRAINT FK_SUBESTACAO
    FOREIGN KEY (FK_UNIDADE_id_unidade)
    REFERENCES UNIDADE (id_unidade)
    ON DELETE RESTRICT ON UPDATE RESTRICT;