SELECT eventplanline.planno, lineno, resname, numberfid, locname, timestart, timeend
FROM eventplanline,location, resourcetbl, facility, eventplan
WHERE  facility.facno = location.facno
AND location.locno = eventplanline.locno  
AND eventplanline.resno = resourcetbl.resno
AND eventplan.planno = eventplanline.planno
AND facname = 'Basketball arena'
AND activity = 'Operation'
AND workdate BETWEEN '01-OCT-13' AND '31-DEC-13'














SELECT  eventrequest.EventNo,DateHeld,Status,EstCost
FROM eventrequest, eventplan, facility, employee
WHERE eventrequest.EventNo = eventplan.EventNo
AND facility.FacNo = eventrequest.FaciNo
AND employee.EmpNo = eventplan.EmpNo
AND EmpName = 'Mary Manager'
AND FacName = 'Basketball arena'
AND DateHeld BETWEEN '01-OCT-13' AND '31-DEC-13'

SELECT planno, eventplan.eventno, workdate, activity
FROM eventplan, eventrequest, facility
WHERE facility.facno = eventrequest.facno AND eventrequest.eventno = eventplan.eventno
AND workdate BETWEEN '1-December-2013' AND '31-December-2013'
AND facname = 'Basketball arena'

Select eventplan.eventno,dateheld,COUNT(eventplan.eventno) as countevents from EventRequest,eventplan
where EventRequest.eventno = EventPlan.eventno
and workdate Between '1-December-2013' AND '31-December-2013' 
group by  eventplan.eventno,dateheld
having count(eventplan.eventno) > 1 

