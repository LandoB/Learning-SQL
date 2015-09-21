SELECT Artist.Name AS "Top3Artists", COUNT(InvoiceLine.Quantity) AS "NumberOfTracksSold", 
printf("$%.2f", SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity)) AS "TotalSales"
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
INNER JOIN Album ON Track.AlbumId == Album.AlbumId
INNER JOIN Artist ON Album.ArtistId == Artist.ArtistId
GROUP BY Artist.Name
ORDER BY "NumberOfTracksSold" DESC
LIMIT 3