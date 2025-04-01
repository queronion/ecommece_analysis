with total_sales as (
    select * from {{ref("fct_sales")}}
)
select 
    round(sum(s.sales_units * p.product_price)) as total_revenue
from total_sales s
left join {{ref("dim_products")}} p
on s.product_id = p.product_id
where s.sales_date between "2022-01-01" and "2022-09-30"