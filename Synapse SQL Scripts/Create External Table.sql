CREATE DATABASE SCOPED CREDENTIAL cred_chamil
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://weatherstoragedatalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_chamil
)    

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://weatherstoragedatalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_chamil
)    

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

CREATE EXTERNAL TABLE gold.extgalle
WITH
(
    LOCATION = 'extgalle',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.galle

CREATE EXTERNAL TABLE gold.extnikaweratiya
WITH
(
    LOCATION = 'extnikaweratiya',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.nikaweratiya