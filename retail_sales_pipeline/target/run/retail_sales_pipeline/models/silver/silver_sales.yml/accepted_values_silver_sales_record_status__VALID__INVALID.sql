
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        record_status as value_field,
        count(*) as n_records

    from "neondb"."dbt_hirashahbaz"."silver_sales"
    group by record_status

)

select *
from all_values
where value_field not in (
    'VALID','INVALID'
)



  
  
      
    ) dbt_internal_test