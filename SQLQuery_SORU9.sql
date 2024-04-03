SELECT E.EMPLOYEENAME, E.EMPLOYEESURNAME, T.TITLEEMPLOYE
FROM EMPLOYEE E
INNER JOIN TITLE T ON E.ID = T.EMPLOYETITLEID
WHERE T.TITLEEMPLOYE IN ('Yönetici', 'Müdür');
