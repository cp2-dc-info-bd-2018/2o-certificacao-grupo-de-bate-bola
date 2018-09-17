Use Companhia_Maritima;

INSERT INTO companhia (cnpj, nome)
VALUES (59300463000111, 'BateBola_s_Sea');


INSERT INTO navio (id, suporta_kg, nome, companhia)
VALUES(00002, 3000, 02015, 59300463000111);


INSERT INTO passageiro (rg, nome, data_nasc)
VALUES (299997825, 'Denisvaldo', '21-05-1990');


INSERT INTO capitao (nome, telefone, id)
VALUES ('Marinildo', 21995685191, 00003);

INSERT INTO servico (id, nome, preco)
VALUES  (00004, 'Café da manhã', 849104);

INSERT INTO viagem (id, navio, data_inicio, data_fim, capitao, servico, porto)
VALUES (00005, 00002, '05-10-2018', '23-12-2321', 00003, 00004,00006);

INSERT INTO porto (id, viagem) 
VALUES (00006, 00005);  

INSERT INTO tipo(id, nome)
VALUES (00007, 'vip');

INSERT INTO passagem (id, passageiro, viagem, tipo)
VALUES (00008, 'Márcio Souza Dos Campos', 00005, 00007);

INSERT INTO quarto (numero, descricao, passagem)
VALUES (109, 'Quarto de luxo à prova de sons com banheira e closet', 00008);
