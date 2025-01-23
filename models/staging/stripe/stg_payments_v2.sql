
select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents, convert it to dollars
    amount / 100 as payment_amount,
    cast(created as date) as created_at

from {{ source('stripe', 'payment') }}
