with rev_2022 as(
    select 
        p.product_category,
        round(sum(s.sales_units * p.product_price)) as total_revenue
    from {{ref("fct_sales")}} s
    left join {{ref("dim_products")}} p
    on s.product_id = p.product_id
    where s.sales_date between "2022-01-01" and "2022-09-30"
    group by p.product_category
),
rev_2023 as (
    select 
        p.product_category,
        round(sum(s.sales_units * p.product_price)) as total_revenue
    from {{ref("fct_sales")}} s
    left join {{ref("dim_products")}} p
    on s.product_id = p.product_id
    where s.sales_date between "2023-01-01" and "2023-09-30"
    group by p.product_category
)
select 
    rev_2023.product_category,
    round(((rev_2023.total_revenue / rev_2022.total_revenue) -1) * 100) as yoy_revenue_difference
from rev_2023
left join rev_2022 
on rev_2023.product_category = rev_2022.product_category
order by yoy_revenue_difference desc