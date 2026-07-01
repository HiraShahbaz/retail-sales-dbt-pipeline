-- Bronze Layer: Raw store data

select
    store_id,
    store_name,
    city,
    region,
    country,
    open_date
from "dev"."main"."raw_stores"