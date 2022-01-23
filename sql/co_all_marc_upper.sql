select
    cus.*
from
    co.customers cus
where
    upper(cus.FULL_NAME) like 'MARC%'
;
