SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId FROM EMPLOYEE INNER JOIN Customer on Employee.EmployeeId = Customer.SupportRepId INNER JOIN Invoice on Customer.SupportRepId = Invoice.CustomerId
