
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select store_region
from "dev"."main"."gold_sales_by_region"
where store_region is null



  
  
      
    ) dbt_internal_test