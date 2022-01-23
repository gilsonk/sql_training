select
    COLUMN_ONE
    , COLUMN_TWO
    , COLUMN_THREE
    , sum(COLUMN_FOUR) as COLUMN_FOUR
from
    schema.table_name
where
    COLUMN_ONE = 'string_one'
    and COLUMN_TWO = number_two
group by
    COLUMN_ONE
    , COLUMN_TWO
    , COLUMN_THREE
order by
    COLUMN_ONE desc
    , COLUMN_TWO asc
;
