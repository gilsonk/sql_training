select
    OWNER
    , TABLE_NAME
from
    all_tables
where
    OWNER not like '%SYS%'
order by
    OWNER asc
    , TABLE_NAME asc
;
