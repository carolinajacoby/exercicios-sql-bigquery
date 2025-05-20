      --- Encontre os usuários com renda > 5000

SELECT
  DISTINCT id_usuario,
  nome,
  renda
FROM
  `ebasql.dados.usuarios`
WHERE
  renda> 5000; 

--- Filtrar pessoas que moram em sp e recebem exatamente 12180,87
  
SELECT DISTINCT 
  id_usuario,
  nome,
  renda,
  estado
FROM
  `ebasql.dados.usuarios`
WHERE
  renda = 12180.87
  AND estado = 'SP';

--- Filtrar compras com valor menor do que 1000

SELECT
  id_compra,       -- ID da compra
  id_usuario,      -- ID do usuário que fez a compra
  data_compra,     -- Data em que a compra foi realizada
  valor_total      -- Valor total da compra
FROM
  `ebasql.dados.compras` -- Tabela completa no formato projeto.dataset.tabela (BigQuery)
WHERE
  valor_total < 1000;     -- Filtra apenas as compras com valor menor que 1000


--- Lista de compras realizadas com status completo

SELECT
  id_usuario,
  id_compra,
  data_compra,
  forma_pagamento,
  status
  
FROM  
`ebasql.dados.compras`
WHERE status ='Completa'; --- Selecionamos apenas as compras completas, ou seja pagamento realizado com sucesso.

--- listar as compras que possuem status completo mas n tem data completa, ou seja, são registros que precisam ser analisados

SELECT
  *
FROM
  `ebasql.dados.compras`
WHERE
  date_completed IS NULL AND status = 'Completa';


--- Lista de usuarios com a renda cadastrada (renda IS NOT NULL) que moram NO estado DO RJ (estado ='RJ') e é um afiliado

SELECT
  id_usuario,
  nome,
  estado,
  renda,
  afiliado
FROM
  `ebasql.dados.usuarios`
WHERE
  renda IS NOT NULL
  AND estado = 'RJ'
  AND afiliado = TRUE;

--- Encontrar os tickets que não foram resolvidos e que possuem o status em aberto

SELECT
  status_ticket,
  tipo_atendimento,
  cliente_name
FROM
  `ebasql.dados.zendesk_api`
WHERE
  ticket_resolvido = FALSE
  AND status_ticket = 'Aberto';

--- Diferença (Quais clientes tem não são do estado de SP)

SELECT
  *
FROM
  `ebasql.dados.usuarios`
WHERE
  estado <> 'SP'


  --- Quais compras foram realizadas acima de 2000 reais e o product_type é diferente de mentoria

SELECT *
FROM
  `ebasql.dados.compras`
WHERE
  product_type <> 'Mentoria'
  AND valor_total >= 2000;


  --- Quais usuários moram em MG e tem renda maior e igual a 2000
  
  SELECT
  id_usuario,
  nome,
  estado,
  renda
FROM
  `ebasql.dados.usuarios`
WHERE
  estado ='MG'
  AND renda >= 2000;