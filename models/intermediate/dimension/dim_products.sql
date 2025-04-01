with products as (
    select * from {{ref("stg_products")}}
)
select
    product_id,
    {{clean_string('product_name')}} as product_name,
    {{clean_string('product_category')}} as product_category,
    {{clean_number('product_cost')}} as product_cost,
    {{clean_number('product_price')}} as product_price
from products
order by product_id
