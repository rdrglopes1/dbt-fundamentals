with orders as (
    select * from {{ ref('stg_orders') }}
)

select 
 customer_id
from orders
where customer_id NOT IN (select customer_id from {{ ref('stg_customers') }})