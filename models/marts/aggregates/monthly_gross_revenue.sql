select
    DATE_TRUNC('month', to_date(order_date, 'YYYY-MM-DD')) as order_month,
    sum(gross_item_sales_amount) as gross_revenue

from {{ ref('fct_order_items') }}
    group by 
        order_month
    order by 
        order_month