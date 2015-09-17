SELECT Track.Name AS "Track Name", Album.Title AS "Album Title", MediaType.Name AS "Media Type", Genre.Name AS "Genre" FROM Track
INNER JOIN Album ON Track.AlbumId == Album.AlbumId
INNER JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId
INNER JOIN Genre ON Track.GenreId == Genre.GenreId