<<<<<<< HEAD
  select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop','customers')}}
=======
    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers') }}
>>>>>>> b215ad9fea315294813c8d9f0ef1f7681c498429
