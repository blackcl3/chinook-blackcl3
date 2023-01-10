SELECT
   Track.Name,
   COUNT(InvoiceLine.TrackId) as TrackCount
FROM INVOICE
INNER JOIN
    InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
INNER JOIN 
    TRACK on Track.TrackId = InvoiceLine.TrackId
GROUP BY
   Track.Name
ORDER BY
   TrackCount DESC
LIMIT 
5
