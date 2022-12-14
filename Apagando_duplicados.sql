-- Apagando dados duplicados das tabelas
-- tABEV3
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tABEV3
) AS T
WHERE DupRank > 1

-- tB3SA3
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tB3SA3
) AS T
WHERE DupRank > 1

-- tBBAS3
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tBBAS3
) AS T
WHERE DupRank > 1

-- tBBDC4
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tBBDC4
) AS T
WHERE DupRank > 1

-- tELET3
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tELET3
) AS T
WHERE DupRank > 1

-- tITUB4
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tITUB4
) AS T
WHERE DupRank > 1

-- tPETR4
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tPETR4
) AS T
WHERE DupRank > 1

-- tVALE3
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tVALE3
) AS T
WHERE DupRank > 1

-- tWEGE3
DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY data_entrada
              ORDER BY (SELECT NULL)
            )
FROM tWEGE3
) AS T
WHERE DupRank > 1