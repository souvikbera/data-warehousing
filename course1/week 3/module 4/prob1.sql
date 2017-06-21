For event requests, list the event number, event date (eventrequest.dateheld), and count of the event plans.  
Only include event requests in the result if the event request has more than one related event plan with a work date in December 2013.

select * from eventplan

Select eventno,dateheld,count(*) as eventcount from   eventrequest,eventplan 
where eventrequest.eventno=eventplan.eventno and workdate between '01-DEC-13'and '31-DEC-13'
group by eventno having eventcount > 1;

SELECT eventrequest.eventno, eventplanline.planno, COUNT(*) AS countevent
FROM eventplanline, eventrequest, eventplan
WHERE eventrequest.eventno = eventplan.eventno AND eventplan.planno = eventplanline.planno
AND eventplan.workdate BETWEEN '01-DEC-13' AND '31-DEC-13'
GROUP BY eventplanline.planno, eventrequest.eventno HAVING COUNT(*)>1
