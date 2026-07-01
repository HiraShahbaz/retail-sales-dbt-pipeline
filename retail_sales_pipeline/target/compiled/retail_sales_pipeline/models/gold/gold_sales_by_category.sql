-- Gold Layer: Sales performance by product category
-- Used for merchandising and buying decisions

select
    product_category,
    sale_year,
    sale_month,
    count(distinct sale_id)             as total_transactions,
    sum(quantity)                       as total_units_sold,
    round(sum(total_sale_amount), 2)    as total_revenue,
    round(avg(unit_price), 2)           as avg_unit_price
from "dev"."main"."silver_sales"
where record_status = 'VALID'
group by product_category, sale_year, sale_month
order by total_revenue desc