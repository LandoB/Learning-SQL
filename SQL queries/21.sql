SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
WHERE Employee.Title like 'Sales%'