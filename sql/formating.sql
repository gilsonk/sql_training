select
    cus.PERIOD
    , cus.ID
    , cus.NAME
    , cus.CITY_CODE
    , lbc.LABEL as CITY_NAME
    , sum(cus.ORDERS_AMOUNT) as ORDERS_AMOUNT
from
    customer.customer_details cus
left outer join
    labels.city lbc
    on (cus.PERIOD = lbc.PERIOD
        and cus.CITY_CODE = lbc.CITY_CODE
        and lbc.PERIOD = :period)
where
    1 = 1
    and cus.PERIOD = :period
    and cus.CITY_CODE like '5%'
group by
    cus.PERIOD
    , cus.ID
    , cus.NAME
    , cus.CITY_CODE
    , lbc.LABEL
order by
    cus.PERIOD asc
    , cus.ID desc
;
