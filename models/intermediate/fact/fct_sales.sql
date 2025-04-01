with sales as (
    select * from {{ref("stg_sales")}}
)
select
    sales_id,
    {{clean_date('sales_date')}} as sales_date,
     store_id,
     product_id,
     sales_units
from sales
order by sales_date desc


/* 

/*
-- this table can be incremental 


-- when sales order added, this table will be updated and add the new row when re-execute the dbt


*/