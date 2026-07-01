-- Bronze Layer: Raw sales data — no transformation, just expose the seed
-- This represents data as it arrives from the source system

select
    sale_id,
    sale_date,
    customer_id,
    product_id,
    product_name,
    category,
    quantity,
    unit_price,
    store_id,
    store_region
from "dev"."main"."raw_sales"