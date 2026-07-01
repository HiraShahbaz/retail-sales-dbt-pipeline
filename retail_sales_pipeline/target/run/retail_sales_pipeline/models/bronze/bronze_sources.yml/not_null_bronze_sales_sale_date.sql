
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sale_date
from "dev"."main"."bronze_sales"
where sale_date is null



  
  
      
    ) dbt_internal_test