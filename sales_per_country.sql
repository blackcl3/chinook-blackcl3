SELECT
    Invoice.BillingCountry,
    SUM(Invoice.Total)
FROM
    Invoice
GROUP BY
    Invoice.BillingCountry
