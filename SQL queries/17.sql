SELECT Invoice.*, COUNT(*) AS "NumberOfLineItems" FROM Invoice
INNER JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId ORDER BY Invoice.InvoiceId