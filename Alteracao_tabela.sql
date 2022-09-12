
-- Adicionar colunas com calculos levando em consideração um capital maximo de 10.000,00 reais

-- dbo.tABEV3
ALTER TABLE dbo.tABEV3
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tABEV3
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tB3SA3
ALTER TABLE dbo.tB3SA3
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tB3SA3
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tBBAS3
ALTER TABLE dbo.tBBAS3
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tBBAS3
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tBBDC4
ALTER TABLE dbo.tBBDC4
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tBBDC4
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tELET3
ALTER TABLE dbo.tELET3
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tELET3
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tITUB4
ALTER TABLE dbo.tITUB4
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tITUB4
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tPETR4
ALTER TABLE dbo.tPETR4
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tPETR4
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tVALE3
ALTER TABLE dbo.tVALE3
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tVALE3
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)

-- dbo.tWEGE3
ALTER TABLE dbo.tWEGE3
ADD resultado_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0))
ALTER TABLE dbo.tWEGE3
ADD porc_10k AS (ROUND(FLOOR(10000/valor_entrada/100)*100*valor_saida-FLOOR(10000/valor_entrada/100)*100*valor_entrada,0)/10000*100)
