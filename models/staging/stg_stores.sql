with stg_stores as (
    select
        *
    from {{source('bigquery_data', 'stores')}}
)
select
    `store id ` as store_id,
    `store name ` as store_name,
    `STORE CITY  ` as store_city,
    `store location` as store_location,
    `stoRE OpeN dAtE_` store_open_date
from stg_stores
