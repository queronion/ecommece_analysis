with stores as (
    select * from {{ ref('stg_stores') }}
)
select
    store_id,
    {{ clean_string("store_name") }} as store_name,
    {{ clean_string("store_location") }} as store_location,
    {{clean_date("store_open_date")}} as store_open_date
from stores
order by store_id