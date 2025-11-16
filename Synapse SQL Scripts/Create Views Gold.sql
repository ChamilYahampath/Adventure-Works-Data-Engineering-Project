-- CREATE VIEW NIKAWERATIYA
CREATE VIEW gold.nikaweratiya
AS
SELECT
    *
FROM
    OPENROWSET
    (
                BULK 'https://weatherstoragedatalake.blob.core.windows.net/silver/Nikaweratiya/',
                FORMAT = 'PARQUET'
    ) as query1 

-- CREATE VIEW GALLE
CREATE VIEW gold.galle
AS
SELECT
    *
FROM
    OPENROWSET(
                BULK 'https://weatherstoragedatalake.blob.core.windows.net/silver/Galle/',
                FORMAT = 'PARQUET'
    ) as query1  