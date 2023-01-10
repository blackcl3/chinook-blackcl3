SELECT
    Invoice.BillingCountry,
    SUM(Invoice.Total)
FROM
    Invoice
GROUP BY
    Invoice.BillingCountry
ORDER BY
    Invoice.Total DESC
LIMIT 1
