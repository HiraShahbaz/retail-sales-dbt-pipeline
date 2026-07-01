
    
    

with all_values as (

    select
        record_status as value_field,
        count(*) as n_records

    from "dev"."main"."silver_sales"
    group by record_status

)

select *
from all_values
where value_field not in (
    'VALID','INVALID'
)


