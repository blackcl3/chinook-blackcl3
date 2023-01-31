SELECT
   STRFTIME('%Y', Invoice.InvoiceDate) InvoiceYear,
   Employee.FirstName, 
   Employee.LastName,
   SUM(Invoice.Total) 
FROM Employee
INNER JOIN Customer on Employee.EmployeeId = Customer.SupportRepId INNER JOIN Invoice on Customer.CustomerId = Invoice.CustomerId
WHERE InvoiceDate 
    BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY
   EmployeeId
ORDER BY
    SUM(Invoice.Total) DESC
LIMIT
    1
