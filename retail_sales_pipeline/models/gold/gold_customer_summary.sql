-- Gold Layer: Customer purchase summary
-- Used for customer segmentation and loyalty analysis

select
    customer_id,
    customer_name,
    customer_segment,
    count(distinct sale_id)             as total_orders,
    sum(quantity)                       as total_items_purchased,
    round(sum(total_sale_amount), 2)    as total_spend,
    round(avg(total_sale_amount), 2)    as avg_order_value,
    min(sale_date)                      as first_purchase_date,
    max(sale_date)                      as last_purchase_date
from {{ ref('silver_sales') }}
where record_status = 'VALID'
group by customer_id, customer_name, customer_segment
order by total_spend desc