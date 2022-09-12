/*
-- Criando uma tabela que mostre todas as operações realizadas
CREATE PROCEDURE tGeral
AS
SELECT * FROM dbo.tABEV3
UNION
SELECT * FROM dbo.tB3SA3
UNION
SELECT * FROM dbo.tBBAS3
UNION
SELECT * FROM dbo.tBBDC4
UNION
SELECT * FROM dbo.tELET3
UNION
SELECT * FROM dbo.tITUB4
UNION
SELECT * FROM dbo.tPETR4
UNION
SELECT * FROM dbo.tVALE3
UNION
SELECT * FROM dbo.tWEGE3
ORDER BY 2
*/

-- tGeral

/*
-- Tempo medio das operações de BBAS3
SELECT Ativo, AVG(DATEDIFF(day,data_entrada,data_saida)) AS media_dias
FROM tBBAS3
GROUP BY Ativo
*/

/*
-- Analise do resultado financeiro agrupado por ano de BBDC4
SELECT Ativo, DATEPART(YEAR, data_entrada) AS ano
, SUM(resultado_10k) AS resultado_fin, COUNT(ativo) AS entradas
FROM tBBDC4
GROUP BY DATEPART(YEAR, data_entrada), Ativo
*/

/*
-- Analise geral dos ativos estudados
WITH tGERAL AS (
SELECT * FROM dbo.tABEV3
UNION
SELECT * FROM dbo.tB3SA3
UNION
SELECT * FROM dbo.tBBAS3
UNION
SELECT * FROM dbo.tBBDC4
UNION
SELECT * FROM dbo.tELET3
UNION
SELECT * FROM dbo.tITUB4
UNION
SELECT * FROM dbo.tPETR4
UNION
SELECT * FROM dbo.tVALE3
UNION
SELECT * FROM dbo.tWEGE3
)
SELECT ativo, 
COUNT(*) operacoes, 
AVG(DATEDIFF(day,data_entrada,data_saida)) AS media_dias, 
SUM(resultado_10k) AS resultado_fin, 
SUM(porc_10k) AS resultado_porc,
MAX(resultado_10k)+MIN(resultado_10k) AS DrawDown, 
SUM(resultado_10k)-MAX(resultado_10k) AS fin_sem_gainmaior
FROM tGERAL
GROUP BY ativo
*/

/*
-- Analise de todos os ativos compilados separado por ano
WITH tGERAL AS (
SELECT * FROM dbo.tABEV3
UNION
SELECT * FROM dbo.tB3SA3
UNION
SELECT * FROM dbo.tBBAS3
UNION
SELECT * FROM dbo.tBBDC4
UNION
SELECT * FROM dbo.tELET3
UNION
SELECT * FROM dbo.tITUB4
UNION
SELECT * FROM dbo.tPETR4
UNION
SELECT * FROM dbo.tVALE3
UNION
SELECT * FROM dbo.tWEGE3
)
SELECT 
DATEPART(YEAR, data_entrada) AS ano,
COUNT(*) AS operacoes, 
SUM(resultado_10k) AS resultado_fin, 
SUM(porc_10k) AS resultado_porc
FROM tGERAL
GROUP BY DATEPART(YEAR, data_entrada)
ORDER BY 3 DESC
*/

/*
-- Datas que tiveram mais de uma compra
WITH tGERAL AS (
SELECT * FROM dbo.tABEV3
UNION
SELECT * FROM dbo.tB3SA3
UNION
SELECT * FROM dbo.tBBAS3
UNION
SELECT * FROM dbo.tBBDC4
UNION
SELECT * FROM dbo.tELET3
UNION
SELECT * FROM dbo.tITUB4
UNION
SELECT * FROM dbo.tPETR4
UNION
SELECT * FROM dbo.tVALE3
UNION
SELECT * FROM dbo.tWEGE3
)
SELECT 
data_entrada dia, 
COUNT(*) operacoes,
SUM(FLOOR(10000/valor_entrada/100)*100*valor_entrada) capital_total 
FROM tGERAL
GROUP BY data_entrada
HAVING count(*) > 1
ORDER BY 2 DESC, 3 DESC
*/

/*
-- Media financeira das operações positivas
WITH tOposi AS (
SELECT * FROM dbo.tABEV3 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tB3SA3 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tBBAS3 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tBBDC4 WHERE resultado_10K > 0
UNION
SELECT * FROM dbo.tELET3 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tITUB4 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tPETR4 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tVALE3 WHERE resultado_10k > 0
UNION
SELECT * FROM dbo.tWEGE3 WHERE resultado_10k > 0
)
SELECT Ativo, ROUND(AVG(resultado_10k), 2) AS media_fin_oper_positivas
FROM tOposi
GROUP BY Ativo
ORDER BY 2 DESC
*/

/*
-- Media financeira das operações negativas,
WITH tOneg AS (
SELECT * FROM dbo.tABEV3 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tB3SA3 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tBBAS3 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tBBDC4 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tELET3 WHERE resultado_10K < 0
UNION
SELECT * FROM dbo.tITUB4 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tPETR4 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tVALE3 WHERE resultado_10k < 0
UNION
SELECT * FROM dbo.tWEGE3 WHERE resultado_10k < 0
)
SELECT Ativo, ROUND(AVG(resultado_10k),2) AS media_fin_oper_negativas
FROM tOneg
GROUP BY Ativo
ORDER BY 2
*/

/*
-- Analise dos ativos separado por data compilando o resultado financeiro
WITH tGERAL AS (
SELECT * FROM dbo.tABEV3
UNION
SELECT * FROM dbo.tB3SA3
UNION
SELECT * FROM dbo.tBBAS3
UNION
SELECT * FROM dbo.tBBDC4
UNION
SELECT * FROM dbo.tELET3
UNION
SELECT * FROM dbo.tITUB4
UNION
SELECT * FROM dbo.tPETR4
UNION
SELECT * FROM dbo.tVALE3
UNION
SELECT * FROM dbo.tWEGE3
)
SELECT Ativo, 
CAST(YEAR(data_entrada) AS varchar) + ' - ' + CAST(MONTH(data_entrada) AS varchar) AS ano_mes, 
SUM(resultado_10k) AS resultado_fin
FROM tGERAL
GROUP BY Ativo, CAST(YEAR(data_entrada) AS varchar) + ' - ' + CAST(MONTH(data_entrada) AS varchar)
ORDER BY 3 DESC
*/

/*
-- Quantidade de operações positivas e sua porcentagem
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tWEGE3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tWEGE3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tWEGE3
GROUP BY Ativo
*/

/*
-- Quantidade de operações vencedoras e suas porcentagem
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tABEV3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tABEV3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tABEV3
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tB3SA3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tB3SA3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tB3SA3
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tBBAS3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tBBAS3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tBBAS3
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tBBDC4
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tBBDC4 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tBBDC4
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tELET3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tELET3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tELET3
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tITUB4
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tITUB4 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tITUB4
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tPETR4
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tPETR4 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tPETR4
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tVALE3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tVALE3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tVALE3
GROUP BY Ativo
UNION
SELECT Ativo
, (SELECT COUNT(resultado_10k)
	FROM tWEGE3
	WHERE resultado_10k > 0) AS oper_pos, 
ROUND(CAST((SELECT COUNT(resultado_10k) FROM tWEGE3 WHERE resultado_10k > 0) AS float)/CAST(count(*) AS float)*100, 2) AS porc_oper_pos
FROM tWEGE3
GROUP BY Ativo

ORDER BY 3 DESC
*/
