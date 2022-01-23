select
    cus.CUSTOMER_ID
    , cus.CUST_FIRST_NAME
    , cus.CUST_LAST_NAME
    , cus.CREDIT_LIMIT
    , to_char(ord.ORDER_DATE,'YYYYMM') as ORDER_MONTH
    , sum(ord.ORDER_TOTAL) as MONTHLY_ORDER_TOTAL
from
    oe.customers cus
inner join
    oe.orders ord
    on (cus.CUSTOMER_ID = ord.CUSTOMER_ID)
group by
    cus.CUSTOMER_ID
    , cus.CUST_FIRST_NAME
    , cus.CUST_LAST_NAME
    , cus.CREDIT_LIMIT
    , to_char(ord.ORDER_DATE,'YYYYMM')
having
    sum(ord.ORDER_TOTAL) > cus.CREDIT_LIMIT
order by
    sum(ord.ORDER_TOTAL) desc
    , cus.CREDIT_LIMIT asc
    , cus.CUSTOMER_ID asc
;
