SELECT "FirstName", "LastName", MAX("Total Sales") AS "HighestSalesIn2009" 
FROM (
SELECT Employee.FirstName AS "FirstName", Employee.LastName AS "LastName", PRINTF("$%.2f", SUM(Invoice.Total)) AS "Total Sales" 
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
WHERE strftime('%Y', Invoice.InvoiceDate) == '2009'
GROUP BY Employee.EmployeeId ORDER BY Employee.EmployeeId
)