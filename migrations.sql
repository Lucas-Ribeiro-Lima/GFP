#Tables
CREATE TABLE CONTAS (
	id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL,
	cpf VARCHAR(11) UNIQUE,
	provider VARCHAR(255),
	displayName VARCHAR(255),
	customWppURL VARCHAR(255)
)


CREATE TABLE CARTEIRAS(
	id INT PRIMARY KEY,
	id_conta_dono INT NOT NULL UNIQUE,
	id_grupo_economico INT,
	nome VARCHAR(255) NOT NULL,
	saldo FLOAT DEFAULT 0.0,
	meta  FLOAT,
	compartilhada BOOL DEFAULT false
)


CREATE TABLE REGISTROS(
	uuid VARCHAR(36) PRIMARY KEY,
    id_carteira INT NOT NULL,
    tipo ENUM('renda', 'despesa') NOT NULL,
    categoria ENUM('salario', 'investimento', 'bonus', 'moradia', 'lazer', 'outros'),
    modalidade ENUM('fixa', 'variavel') DEFAULT 'fixa',  
    valor FLOAT NOT NULL,
    fonte VARCHAR(255),
    frequencia ENUM('mensal', 'trimestral', 'semestral', 'anual'),
    parcelado BOOLEAN,
    num_parcelas INT,
    competencia_mes INT NOT NULL,
    competencia_ano INT NOT NULL,
    data_inclusao DATE NOT NULL 
)


CREATE TABLE GRUPOSECONOMICOS (
	id INT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	meta_geral FLOAT
)


#Views
CREATE VIEW DESPESAS_CART AS
	SELECT
		uuid,
		id_carteira,
		tipo
		categoria,
		modalidade,
		valor,
		parcelado,
		num_parcelas,
		competencia_mes,
		competencia_ano,
		data_inclusao
	FROM REGISTROS r 
	WHERE tipo = 'despesa'
	
CREATE VIEW RENDAS_CART AS
	SELECT
		uuid,
		id_carteira,
		tipo
		categoria,
		modalidade,
		valor,
		fonte,
		frequencia,
		competencia_mes,
		competencia_ano,
		data_inclusao
	FROM REGISTROS r 
	WHERE tipo = 'renda'

CREATE VIEW TODOS_REGISTROS AS
	SELECT
		*
	FROM REGISTROS r 
	
#Foreign Keys 
ALTER TABLE CARTEIRAS ADD CONSTRAINT FK_CARTEIRA_CONTA FOREIGN KEY CARTEIRAS(id_conta_dono) REFERENCES CONTAS(id) ON DELETE CASCADE;
ALTER TABLE CARTEIRAS ADD CONSTRAINT FK_CARTEIRA_GRUPO FOREIGN KEY CARTEIRAS(id_grupo_economico) REFERENCES GRUPOSECONOMICOS(id);
ALTER TABLE REGISTROS ADD CONSTRAINT FK_REGISTROS_CARTEIRA FOREIGN KEY REGISTROS(id_carteira) REFERENCES CARTEIRAS(id);