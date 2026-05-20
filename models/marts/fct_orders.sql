{% set payment_statuses = ["success","fail"] %}

with orders as  (
    select * from {{ ref('stg_jaffle_shop__orders' )}}
),

payments as (
    select * from {{ ref('stg_stripe__payment') }}
),

{% set payment_statuses = ["success","fail"] %}
 
order_payments as (
    select
        order_id,
<<<<<<< HEAD
 
=======
>>>>>>> 9eedd8d3370fa4b9957d421b295f72310cd32086
        --sum(case when status = 'success' then amount_usd end) as amount_usd
        {% for payment_status in payment_statuses %}
        sum(case when status = '{{payment_status}}' then amount_usd end) as {{payment_status}}_amount_usd,
        {% endfor %}

    from payments
    group by 1
),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        --coalesce(order_payments.amount_usd, 0) as amount_usd
        {% for payment_status in payment_statuses %}
        coalesce(order_payments.{{payment_status}}_amount_usd, 0) as {{payment_status}}_amount_usd,
        {% endfor %}
<<<<<<< HEAD
=======

>>>>>>> 9eedd8d3370fa4b9957d421b295f72310cd32086
    from orders
    left join order_payments using (order_id)
)

select * from final
