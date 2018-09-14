Use Companhia_Maritima;


CREATE TABLE Companhia (
cnpj            INT,
nome            VARCHAR(80),

PRIMARY KEY (cnpj)
);


CREATE TABLE Navio (
id              INT,
suporta_kg      FLOAT,
nome            INT,
companhia       INT NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY (companhia) REFERENCES Companhia(cnpj)
);


CREATE TABLE passageiro (
rg              INT,
nome            VARCHAR(60),
data_nasc       DATE,

PRIMARY KEY (rg)
);

CREATE TABLE  capitao (
nome            VARCHAR(60),
telefone        VARCHAR(11),
id              INT,

PRIMARY KEY (id)
);

CREATE TABLE servico (
id				INT,
nome			INT,
preco			FLOAT,

PRIMARY KEY(id)
);

CREATE TABLE viagem ( 
id              INT,
navio           INT NOT NULL,
data_inicio	    DATE,
data_fim	    DATE,
capitao		    INT NOT NULL,
servico			INT,

PRIMARY KEY (id),
FOREIGN KEY (navio) REFERENCES navio (id),
FOREIGN KEY (capitao) REFERENCES capitao (id),
FOREIGN KEY (servico) REFERENCES servico (id)
);

CREATE TABLE porto (
id               INT,
nome             VARCHAR,
endereco         VARCHAR,

PRIMARY KEY (id)
);
ALTER TABLE viagem
ADD porto		 INT;

ALTER TABLE porto
ADD viagem		 INT;

ALTER TABLE viagem
ADD FOREIGN KEY (porto)	REFERENCES porto(id);

ALTER TABLE porto
ADD FOREIGN KEY (viagem) REFERENCES viagem(id);

CREATE TABLE tipo (
id INT,
nome VARCHAR(50)

PRIMARY KEY(id)
);

CREATE TABLE passagem (
id               INT,
passageiro       INT,
viagem           INT,
tipo			 INT NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY(viagem)	REFERENCES viagem (id), 
FOREIGN KEY(passageiro) REFERENCES passageiro (rg),
FOREIGN KEY(tipo) REFERENCES tipo (id)
);

CREATE TABLE quarto (
numero           INT,
descricao		 VARCHAR(180),
passagem		 INT,

PRIMARY KEY(numero),
FOREIGN KEY(passagem) REFERENCES passagem (id)
);




