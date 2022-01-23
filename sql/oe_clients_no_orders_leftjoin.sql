select
    cus.CUSTOMER_ID
    , cus.CUST_FIRST_NAME
    , cus.CUST_LAST_NAME
    , cus.DATE_OF_BIRTH
    , cus.MARITAL_STATUS
    , cus.GENDER
    , cus.INCOME_LEVEL
from
    oe.customers cus
left outer join
    oe.orders ord
    on (cus.CUSTOMER_ID = ord.CUSTOMER_ID)
where
    ord.CUSTOMER_ID is null
order by
    cus.INCOME_LEVEL desc
    , cus.CUSTOMER_ID asc
;
