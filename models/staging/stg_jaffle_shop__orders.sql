<<<<<<< HEAD
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

=======
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

>>>>>>> b215ad9fea315294813c8d9f0ef1f7681c498429
    from {{ source('jaffle_shop', 'orders') }}