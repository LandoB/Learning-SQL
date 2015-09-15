SELECT inv.Total, cust.FirstName, cust.LastName, cust.Country, emp.FirstName, emp.LastName 
FROM Invoice inv
JOIN Customer cust ON inv.CustomerId == cust.CustomerId
JOIN Employee emp ON cust.SupportRepId == emp.EmployeeId
ORDER By emp.FirstName, emp.LastName