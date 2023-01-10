SELECT
   STRFTIME('%Y', InvoiceDate) InvoiceYear, 
   Track.Name,
   COUNT(InvoiceLine.TrackId) as TrackCount
FROM INVOICE
INNER JOIN
    InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
INNER JOIN 
    TRACK on Track.TrackId = InvoiceLine.TrackId
WHERE InvoiceDate 
    BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY
   Track.Name
ORDER BY
   TrackCount DESC
LIMIT 
1
