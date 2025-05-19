--- 1 Listar todo os nomes dos usuários cadastrados na tabela usuarios.

SELECT nome FROM `ebasql.dados.usuarios`;

--- 2 Listar os tipos distintos de produtos registrados na tabela zendesk_api

SELECT DISTINCT product_type FROM `ebasql.dados.compras`;

---3 Selecionar os 10 registros da tabela zedesk_API

SELECT * FROM `ebasql.dados.zendesk_api` LIMIT 10;

--- 4 Liste os email unicos cadastrados na tabela usuarios

SELECT DISTINCT email FROM `ebasql.dados.usuarios`;

--- 5 Selecione 5 registros da tabela compras

SELECT * FROM `ebasql.dados.compras` LIMIT 5;

---6 Selecione todos os tipos de atendimento da tabela zendesk_api

SELECT DISTINCT tipo_atendimento FROM `ebasql.dados.zendesk_api`;

---7 Liste os valores totaos registrados na tabela compras (sem duplicatas)

SELECT DISTINCT valor_total FROM `ebasql.dados.compras`;

---8 Selecione os 15 registros de usuarios cadastrados

SELECT * FROM `ebasql.dados.usuarios` LIMIT 15;

--- 9 Liste todos os diferentes status de tickets na tabela zendesk_api

SELECT DISTINCT status_ticket FROM `ebasql.dados.zendesk_api`;

---10 Selecione os 20 registros da tabela compras

SELECT * FROM `ebasql.dados.compras` LIMIT 20;

