-- Bronze Layer: Raw customer data from source system

select
    customer_id,
    first_name,
    last_name,
    email,
    join_date,
    customer_segment
from {{ ref('raw_customers') }}