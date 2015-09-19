SELECT BillingCountry, printf("$%.2f", SUM(Total)) AS "TotalSalesPerCountry"
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC