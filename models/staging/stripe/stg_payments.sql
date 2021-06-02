with payments as (

    select
        orderid as order_id
        ,paymentmethod as payment_method
        ,amount/100 as amount
        ,status
        ,created as created_at
        ,id as payment_id
    from {{ source('stripe','payment' )}}
)

select * from payments