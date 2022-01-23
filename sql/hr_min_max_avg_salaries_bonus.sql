select
    job.JOB_ID
    , job.JOB_TITLE as TITLE
    , job.MIN_SALARY
    , job.MAX_SALARY
    , avg(emp.SALARY) as AVG_SALARY
from
    hr.jobs job
inner join
    hr.employees emp
    on (job.JOB_ID = emp.JOB_ID)
group by
    job.JOB_ID
    , job.JOB_TITLE
    , job.MIN_SALARY
    , job.MAX_SALARY
order by
    AVG_SALARY desc
    , job.JOB_ID asc
;
