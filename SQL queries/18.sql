SELECT Employee.FirstName, Employee.LastName, PRINTF(SUM(Invoice.Total)) AS "Total Sales" 
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
GROUP BY Employee.EmployeeId ORDER BY Employee.EmployeeId