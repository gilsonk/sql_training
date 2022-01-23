select
    prd.CATEGORY_ID
    , prd.PRODUCT_ID
    , prd.PRODUCT_NAME
    , prd.PRODUCT_DESCRIPTION
    , prd.LIST_PRICE
    , min(prd.LIST_PRICE) over
    (
        partition by
            prd.CATEGORY_ID
    ) as CATEGORY_MIN_PRICE
    , max(prd.LIST_PRICE) over
    (
        partition by
            prd.CATEGORY_ID
    ) as CATEGORY_MAX_PRICE
from
    oe.product_information prd
order by
    prd.CATEGORY_ID asc
    , prd.PRODUCT_ID asc
;
