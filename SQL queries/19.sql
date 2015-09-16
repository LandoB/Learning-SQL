SELECT invoice.InvoiceId, invoice.CustomerId, invoice.InvoiceDate, invoice.BillingAddress, invoice.BillingCity, invoice.BillingState, invoice.BillingCountry, invoice.BillingPostalCode, invoice.Total
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
WHERE Customer.Country == 'Brazil'