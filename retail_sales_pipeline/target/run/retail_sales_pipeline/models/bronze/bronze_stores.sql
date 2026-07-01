
  
  create view "dev"."main"."bronze_stores__dbt_tmp" as (
    -- Bronze Layer: Raw store data

select
    store_id,
    store_name,
    city,
    region,
    country,
    open_date
from "dev"."main"."raw_stores"
  );
