select 
    id,
    orderid as order_id, 
    PAYMENTMETHOD,
    STATUS,
    AMOUNT,
    CREATED,
    _BATCHED_AT
from {{ source('stripe', 'payment') }}