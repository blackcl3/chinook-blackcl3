SELECT
    Invoice.InvoiceId,
    Count(InvoiceLine.InvoiceId) as NumInvoiceLines
FROM
    Invoice
INNER JOIN
    InvoiceLine on InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId
