-- Gold Layer: Sales performance by region
-- Business-ready aggregate for regional reporting

select
    store_region,
    sale_year,
    sale_month,
    count(distinct sale_id)         as total_transactions,
    count(distinct customer_id)     as unique_customers,
    sum(quantity)                   as total_units_sold,
round(sum(total_sale_amount)::numeric, 2) as total_revenue,
round(avg(total_sale_amount)::numeric, 2) as avg_transaction_value
from {{ ref('silver_sales') }}
where record_status = 'VALID'
group by store_region, sale_year, sale_month
order by sale_year, sale_month, total_revenue desc