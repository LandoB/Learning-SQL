SELECT InvoiceId, Count(*) as "Number of Line Items" 
FROM InvoiceLine 
GROUP BY InvoiceId ORDER BY InvoiceId