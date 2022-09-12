-- Criação de regras para não aceitar valores negativos
CREATE RULE regra_valores AS @VALOR > 0.00

-- Executar essa regra nas colunas valor_entrada e valor_saida
EXECUTE sp_bindrule regra_valores, 'tABEV3.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tABEV3.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tB3SA3.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tB3SA3.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tBBAS3.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tBBAS3.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tBBDC4.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tBBDC4.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tELET3.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tELET3.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tITUB4.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tITUB4.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tPETR4.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tPETR4.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tVALE3.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tVALE3.valor_saida'
EXECUTE sp_bindrule regra_valores, 'tWEGE3.valor_entrada'
EXECUTE sp_bindrule regra_valores, 'tWEGE3.valor_saida'