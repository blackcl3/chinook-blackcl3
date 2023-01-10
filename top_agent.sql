SELECT
   Employee.FirstName, 
   Employee.LastName,
   SUM(Invoice.Total) 
FROM Employee
INNER JOIN Customer on Employee.EmployeeId = Customer.SupportRepId INNER JOIN Invoice on Customer.SupportRepId = Invoice.CustomerId
GROUP BY
   EmployeeId
ORDER BY
    SUM(Invoice.Total) DESC
LIMIT
    1
