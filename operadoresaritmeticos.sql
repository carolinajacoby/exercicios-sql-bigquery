  --- Seleção de mil usuários com informação da sua renda mensal e calculo da expectativa mínima de renda anual 
  --- Usamos ROUND quando queremos arredondar e limitamos AS casas decimais

SELECT
  DISTINCT nome AS nome_completo,
  id_usuario,
  renda AS renda_mensal,
  --- utilizamos o'as' para renomear uma coluna 
  ROUND((renda * 12),2) AS renda_anuaL, --- limitação de duas casas decimais
  ROUND((renda / 30),2) AS renda_diaria
FROM
  `ebasql.dados.usuarios`
 ORDER BY 5 ASC
LIMIT
  1000;

--- Calculo de valor total das parcelas multiplicado pela quantidade de parcelas
---Validaçção se o valor total é igual ao calculo realizado
--- Calculo da diferença entre os valores e ordenação das top 10 compras com maior diferença

SELECT
  DISTINCT id_compra,
  data_compra,
  valor_total,
  total_parcelas,
  valor_parcela,
   ROUND((total_parcelas * valor_parcela),2) AS valor_total_calculado,
   (valor_total = (ROUND((total_parcelas * valor_parcela),2))) AS validacao,
   ROUND ((valor_total - (ROUND((total_parcelas* valor_parcela),2))),2) AS diferenca
FROM
  `ebasql.dados.compras`
  ORDER BY 8 desc
LIMIT
  10;