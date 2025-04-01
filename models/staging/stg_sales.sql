{{
    config(
        materialized = 'view'
    )
}}


with stg_sales as (
    select 
        *
    from {{source('bigquery_data', 'sales')}}
)
select
   `SAlE iD ` as sales_id,
   date as sales_date,
    `STORE ID  ` as store_id,
    `PRODUCT ID` as product_id,
    `units_`  as sales_units
from stg_sales

