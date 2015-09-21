SELECT Track.Name, COUNT(*) AS "NumberOfPurchases" FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
GROUP BY Track.Name
ORDER BY COUNT(*) DESC
LIMIT 5