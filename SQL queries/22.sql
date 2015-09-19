SELECT Employee.FirstName, Employee.LastName, COUNT(*) AS "Customers Assigned" FROM Customer
INNER JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
GROUP BY Customer.SupportRepId 
ORDER BY Employee.LastName