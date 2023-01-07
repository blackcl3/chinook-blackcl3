SELECT
    Album.Title as "Album Title",
    Track.Name as "Track Title",
    MediaType.Name as "Media Type",
    Genre.Name as "Genre Name"
FROM 
    Track
INNER JOIN 
    Album on Track.AlbumId = Album.AlbumId,
    MediaType on MediaType.MediaTypeId = Track.MediaTypeId,
    Genre on Genre.GenreId = Track.GenreId
GROUP BY 
    Album.Title
