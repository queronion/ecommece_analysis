{{
    config(
        materialized = 'view'
    )
}}

WITH stg_inventory AS (
        SELECT *

        FROM {{ source('bigquery_data', 'inventory') }}
)

SELECT
        Store_ID as store_id,
        Product_ID as product_id,
        Stock_On_Hand as storck_in_hand

FROM stg_inventory