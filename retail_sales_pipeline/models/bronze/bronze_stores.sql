-- Bronze Layer: Raw store data

select
    store_id,
    store_name,
    city,
    region,
    country,
    open_date
from {{ ref('raw_stores') }}