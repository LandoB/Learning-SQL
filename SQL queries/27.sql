SELECT "MediaType", MAX("NumberOfItemsSold") AS "NumberOfItemsSold" 
FROM
(
SELECT MediaType.Name AS "MediaType", COUNT(*) AS "NumberOfItemsSold"
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
INNER JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY "NumberOfItemsSold" DESC
)