{{
    config(
        materialized = 'view'
    )
}}


with stg_products as (
    select 
        *
    from {{source('bigquery_data', 'products')}}
)

select
    `pRoDucT id` as product_id,
    `Product Name` as product_name,
    `Product Category` as product_category,
    `product COSt` as product_cost,
    `product price  ` as product_price
from stg_products