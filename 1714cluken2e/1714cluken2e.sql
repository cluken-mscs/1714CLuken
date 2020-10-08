-- Callum Luken
-- Exercise 2E Fuctions, Calculated Fields
-- Property Manager Database

-- 2E.1 Building Name and Location
SELECT        BuildingName, Address, City + N', ' + State + N' ' + Zip AS [City State Zip]
FROM            Building
WHERE        (City = N'Winona')

-- 2E.2 Apartment Estimated Rent
SELECT        Building.BuildingName, Apartment.ApartmentNum, (Apartment.Bathrooms * 100 + ' ') + Apartment.SquareFeet * 0.9 AS [Estimated Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingName, Apartment.ApartmentNum, (Apartment.Bathrooms * 100 + ' ') + Apartment.SquareFeet * 0.9, Building.City
HAVING        (Building.City = N'Red Wing')

-- 2E.3 Estimated Vs. Actual Rent
SELECT        Building.BuildingName, Apartment.ApartmentNum, Apartment.Rent, (Apartment.Bathrooms * 100 + ' ') + Apartment.SquareFeet * 0.9 AS [Estimated Rent], Apartment.Rent - ((Apartment.Bathrooms * 100 + ' ') 
                         + Apartment.SquareFeet * 0.9) AS Difference
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingName, Apartment.ApartmentNum, (Apartment.Bathrooms * 100 + ' ') + Apartment.SquareFeet * 0.9, Building.City, Apartment.Rent, Apartment.Rent - ((Apartment.Bathrooms * 100 + ' ') + Apartment.SquareFeet * 0.9)
HAVING        (Building.City = N'Red Wing')

-- 2E.4 Invoice Total
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS [Invoice Total]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId
GROUP BY Apartment.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName, Invoice.InvoiceDate

-- 2E.5 Invoice Total and Receipt
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS [Invoice Total], Receipt.Amount
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
GROUP BY Apartment.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName, Invoice.InvoiceDate, Receipt.Amount

-- 2E.6 Invoice Total vs Received
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS [Invoice Total], Receipt.Amount AS Received, SUM(LineItem.Amount) 
                         - Receipt.Amount AS Difference
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
GROUP BY Apartment.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName, Invoice.InvoiceDate, Receipt.Amount
HAVING        (SUM(LineItem.Amount) > Receipt.Amount)

-- 2E.7 Late Payments
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Tenant, Invoice.DueDate, Receipt.ReceiptDate, DATEDIFF(Day, Invoice.DueDate, Receipt.ReceiptDate) AS [Days Late]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
WHERE        (DATEDIFF(Day, Invoice.DueDate, Receipt.ReceiptDate) > 0)

-- 2E.8 Next Invoice Date
SELECT        Person.PersonId, Person.FirstName + N' ' + Person.LastName AS Tenant, MAX(Invoice.InvoiceDate) AS [Recent Invoice], MAX(DATEADD(month, 1, Invoice.InvoiceDate)) AS [Next Invoice]
FROM            Person INNER JOIN
                         Apartment ON Person.PersonId = Apartment.TenantId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId
GROUP BY Person.PersonId, Person.FirstName + N' ' + Person.LastName