SELECT Playlist.PlaylistId, Playlist.Name, COUNT(*) AS "Total Number of Tracks" FROM PlaylistTrack
INNER JOIN Playlist ON PlaylistTrack.PlaylistId == Playlist.PlaylistId
GROUP BY Playlist.PlaylistId ORDER BY Playlist.PlaylistId