-- Silver Layer: Cleaned and enriched sales data
-- Joins sales with customer and store data
-- Calculates derived fields

with sales as (
    select * from "neondb"."dbt_hirashahbaz"."bronze_sales"
),

customers as (
    select * from "neondb"."dbt_hirashahbaz"."bronze_customers"
),

stores as (
    select * from "neondb"."dbt_hirashahbaz"."bronze_stores"
)

select
    -- Sale identifiers
    s.sale_id,
    cast(s.sale_date as date)                           as sale_date,
date_part('year', cast(s.sale_date as date))   as sale_year,
date_part('month', cast(s.sale_date as date))  as sale_month,

    -- Customer info
    s.customer_id,
    c.first_name || ' ' || c.last_name                 as customer_name,
    c.customer_segment,

    -- Product info
    s.product_id,
    s.product_name,
    s.category                                          as product_category,

    -- Store info
    s.store_id,
    st.store_name,
    st.city                                             as store_city,
    st.region                                           as store_region,

    -- Sales metrics
    s.quantity,
    s.unit_price,
    s.quantity * s.unit_price                           as total_sale_amount,

    -- Data quality flag
    case
        when s.quantity <= 0 then 'INVALID'
        when s.unit_price <= 0 then 'INVALID'
        else 'VALID'
    end                                                 as record_status

from sales s
left join customers c on s.customer_id = c.customer_id
left join stores st   on s.store_id = st.store_id