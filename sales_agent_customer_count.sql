SELECT
    Employee.FirstName,
    Employee.LastName,
    Count(Customer.SupportRepId)
FROM 
    Employee
LEFT JOIN
    Customer on Employee.EmployeeId = Customer.SupportRepId
GROUP BY
    Employee.EmployeeId
