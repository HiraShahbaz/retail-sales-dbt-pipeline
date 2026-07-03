
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_revenue
from "neondb"."dbt_hirashahbaz"."gold_sales_by_region"
where total_revenue is null



  
  
      
    ) dbt_internal_test