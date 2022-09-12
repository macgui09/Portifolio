/*
-- Checar os dados de todas as tabelas
SELECT * FROM dbo.tABEV3;
SELECT * FROM dbo.tB3SA3;
SELECT * FROM dbo.tBBAS3;
SELECT * FROM dbo.tELET3;
SELECT * FROM dbo.tITUB4;
SELECT * FROM dbo.tPETR4;
SELECT * FROM dbo.tVALE3;
SELECT * FROM dbo.tWEGE3;
*/


-- Atualizando o formato das tabelas

-- dbo.tABEV3
ALTER TABLE dbo.tABEV3
ALTER COLUMN Ativo varchar(5)
ALTER TABLE dbo.tABEV3
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tABEV3
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tABEV3
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tABEV3
ALTER COLUMN valor_saida float;

-- dbo.tB3SA3
ALTER TABLE dbo.tB3SA3
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tB3SA3
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tB3SA3
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tB3SA3
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tB3SA3
ALTER COLUMN valor_saida float;

-- dbo.tBBAS3
ALTER TABLE dbo.tBBAS3
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tBBAS3
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tBBAS3
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tBBAS3
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tBBAS3
ALTER COLUMN valor_saida float;

-- dbo.tBBDC4
ALTER TABLE dbo.tBBDC4
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tBBDC4
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tBBDC4
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tBBDC4
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tBBDC4
ALTER COLUMN valor_saida float;

-- dbo.tELET3
ALTER TABLE dbo.tELET3
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tELET3
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tELET3
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tELET3
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tELET3
ALTER COLUMN valor_saida float;

-- dbo.tITUB4
ALTER TABLE dbo.tITUB4
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tITUB4
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tITUB4
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tITUB4
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tITUB4
ALTER COLUMN valor_saida float;

-- dbo.tPETR4
ALTER TABLE dbo.tPETR4
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tPETR4
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tPETR4
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tPETR4
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tPETR4
ALTER COLUMN valor_saida float;

-- dbo.tVALE3
ALTER TABLE dbo.tVALE3
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tVALE3
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tVALE3
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tVALE3
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tVALE3
ALTER COLUMN valor_saida float;

-- dbo.tWEGE3
ALTER TABLE dbo.tWEGE3
ALTER COLUMN Ativo varchar(5);
ALTER TABLE dbo.tWEGE3
ALTER COLUMN data_entrada date;
ALTER TABLE dbo.tWEGE3
ALTER COLUMN data_saida date;
ALTER TABLE dbo.tWEGE3
ALTER COLUMN valor_entrada float;
ALTER TABLE dbo.tWEGE3
ALTER COLUMN valor_saida float;
