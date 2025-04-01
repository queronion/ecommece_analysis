with inventory as (
    select * from {{ref("stg_inventory")}}
)
select 
    *
from inventory
order by store_id asc



