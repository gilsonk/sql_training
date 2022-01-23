select
    tbl.COLUMN_ONE
    , tbl.COLUMN_TWO
from
    mydb.my_table tbl
where
    tbl.AMOUNT between 10000 and tbl.AMOUNT <= 20000
;
