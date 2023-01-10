SELECT
   Artist.Name,
   COUNT(InvoiceLine.TrackId) as ArtistTracksSoldCount
FROM ARTIST
INNER JOIN
    Album on Artist.ArtistId = Album.ArtistId
INNER JOIN 
    Track on Track.AlbumId = Album.AlbumId
INNER JOIN 
    InvoiceLine on Track.TrackId = InvoiceLine.TrackId
GROUP BY
   Artist.Name
ORDER BY
   ArtistTracksSoldCount DESC
LIMIT 
3
