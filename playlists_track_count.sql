SELECT 
    PlaylistTrack.PlaylistId,
    COUNT(PlaylistTrack.TrackId),
    Playlist.Name 
FROM 
    PlaylistTrack 
INNER JOIN 
    Playlist on  Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.PlaylistId 
ORDER BY PlaylistTrack.PlaylistId
