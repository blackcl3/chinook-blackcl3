SELECT
   MediaType.Name,
   COUNT(InvoiceLine.TrackId) as MediaTypeSold
FROM MediaType
INNER JOIN
    Track on MediaType.MediaTypeId = Track.MediaTypeId
INNER JOIN 
    InvoiceLine on Track.TrackId = InvoiceLine.TrackId
GROUP BY
   MediaType.Name
ORDER BY
   MediaTypeSold DESC
LIMIT
1
