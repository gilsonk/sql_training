select
    ord.ORDER_ID
    , ord.CUSTOMER_ID
    , str.STORE_NAME
    , ord.ORDER_STATUS
from
    co.orders ord
left outer join
    co.stores str
    on (ord.STORE_ID = str.STORE_ID)
order by
    ord.ORDER_ID asc
;
