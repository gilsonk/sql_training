select
    emp.JOB_ID
    , min(emp.SALARY) as MIN_SALARY
    , max(emp.SALARY) as MAX_SALARY
    , avg(emp.SALARY) as AVG_SALARY
from
    hr.employees emp
group by
    emp.JOB_ID
;
