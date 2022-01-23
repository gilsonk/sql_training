with lastname_occurences as
(
    select
        emp.LAST_NAME
        , count(*) as NB_LAST_NAME
    from
        hr.employees emp
    group by
        emp.LAST_NAME
)
, common_lastname as
(
    select
        max(lnn.NB_LAST_NAME) as MAX_NB_LAST_NAME
    from
        lastname_occurences lnn
)
select
    emp.LAST_NAME
    , emp.FIRST_NAME
    , emp.HIRE_DATE
    , emp.JOB_ID
from
    hr.employees emp
inner join
    lastname_occurences occ
    on (emp.LAST_NAME = occ.LAST_NAME)
inner join
    common_lastname com
    on (occ.NB_LAST_NAME = com.MAX_NB_LAST_NAME)
order by
    emp.LAST_NAME asc
    , emp.FIRST_NAME asc
;
