SELECT 
(SELECT Count(*) FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2009') as [Total Invoices from 2009],
(SELECT Count(*) FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2011') as [Total Invoices from 2011],
(SELECT SUM(Total) FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2009') as [Total Sales from 2009],
(SELECT SUM(Total) FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2011') as [Total Invoices from 2011] FROM Invoice
LIMIT 1