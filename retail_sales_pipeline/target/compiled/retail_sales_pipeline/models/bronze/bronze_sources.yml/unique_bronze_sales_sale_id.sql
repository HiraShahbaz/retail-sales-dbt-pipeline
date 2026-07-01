
    
    

select
    sale_id as unique_field,
    count(*) as n_records

from "dev"."main"."bronze_sales"
where sale_id is not null
group by sale_id
having count(*) > 1


