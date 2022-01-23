select
    tbl.COLUMN_ONE
    , tbl.COLUMN_TWO
from
    mydb.my_table tbl
where
    tbl.ID not in
    (
        1
        ,2
        ,3
        ,4
    )
;
