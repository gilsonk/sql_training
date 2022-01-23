select
    OWNER
    , TABLE_NAME
from
    all_tables
where
    OWNER not in
    (
        'CTXSYS'
        ,'SYS'
        ,'XDB'
    )
order by
    OWNER asc
    , TABLE_NAME asc
;
