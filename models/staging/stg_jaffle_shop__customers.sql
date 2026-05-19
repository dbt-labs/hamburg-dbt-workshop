<<<<<<< HEAD
select
        id as customer_id,
        first_name,
        last_name

=======
    select
        id as customer_id,
        first_name,
        last_name

>>>>>>> b215ad9fea315294813c8d9f0ef1f7681c498429
    from {{ source('jaffle_shop', 'customers') }}