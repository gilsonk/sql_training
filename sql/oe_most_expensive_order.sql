with max_order as
(
    select
        max(ord.ORDER_TOTAL) as ORDER_TOTAL
    from
        oe.orders ord
)
select
    ord.ORDER_ID
    , itm.PRODUCT_ID
    , prd.PRODUCT_NAME
    , prd.PRODUCT_DESCRIPTION
    , itm.UNIT_PRICE
    , itm.QUANTITY
from
    oe.orders ord
inner join
    max_order mxo
    on (ord.ORDER_TOTAL = mxo.ORDER_TOTAL)
left outer join
    oe.order_items itm
    on (ord.ORDER_ID = itm.ORDER_ID)
left outer join
    oe.product_information prd
    on (itm.PRODUCT_ID = prd.PRODUCT_ID)
;
