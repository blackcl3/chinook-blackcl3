SELECT InvoiceLine.InvoiceLineId, Track.Name FROM InvoiceLine INNER JOIN Track on Track.trackId = InvoiceLine.TrackId ORDER BY InvoiceLine.InvoiceLineId
