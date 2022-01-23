select
    cus.*
from
    co.customers cus
where
    cus.FULL_NAME like '%O%O%' --Two O everywhere
    or cus.FULL_NAME like '%OO%' --Two consecutive O
    or cus.FULL_NAME like 'COOI%' --COOI0 COOI1 COOI20
    or cus.FULL_NAME like 'COO__' --COOI0 COOB1 COOA2
;
