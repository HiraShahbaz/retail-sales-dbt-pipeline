-- Bronze Layer: Raw store data

select
    store_id,
    store_name,
    city,
    region,
    country,
    open_date
from "neondb"."dbt_hirashahbaz"."raw_stores"