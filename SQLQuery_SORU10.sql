SELECT E.EMPLOYEENAME, E.EMPLOYEESURNAME, E.SALARY
FROM (
    SELECT 
        EMPLOYEENAME, 
        EMPLOYEESURNAME, 
        SALARY, 
        RANK() OVER (PARTITION BY EMPLOYEUNITID ORDER BY SALARY DESC) AS rnk
    FROM EMPLOYEE
) AS E
WHERE E.rnk = 1;
