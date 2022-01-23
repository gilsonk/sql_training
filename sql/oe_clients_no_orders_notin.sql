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
where
    cus.CUSTOMER_ID not in
    (
        select distinct
            ord.CUSTOMER_ID
        from
            oe.orders ord
    )
order by
    cus.INCOME_LEVEL desc
    , cus.CUSTOMER_ID asc
;
