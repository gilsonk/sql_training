select
    itm.ORDER_ID
    , itm.PRODUCT_ID
    , itm.UNIT_PRICE
    , itm.QUANTITY
    , (itm.UNIT_PRICE * itm.QUANTITY) as TOTAL_PRICE
from
    co.order_items itm
order by
    itm.ORDER_ID asc
;
