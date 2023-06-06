select
    date_trunc('day', date(order_date)) as order_month,

    sum(gross_item_sales_amount) as gross_revenue

from {{ ref('fct_order_items') }}
    group by 
        date_trunc('day', date(order_date))
    order by 
        date_trunc('day', date(order_date))