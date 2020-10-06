-- Callum Luken
-- Exercise 2C Summary Queries, Groups, Joins
-- Property Manager Database

-- 1. Group by State, City - Count Buildings
SELECT        State, City, COUNT(*) AS [Count Buildings]
FROM            Building
GROUP BY State, City

--2. Group by City in MN - Count Buildings
SELECT        City, COUNT(*) AS [Count Buildings]
FROM            Building
GROUP BY City, State
HAVING        (State = N'MN')

--3. Group by BuildingID, Building Name
SELECT        Building.BuildingId, Building.BuildingName, AVG(Apartment.Rent) AS [Average Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingId, Building.BuildingName
ORDER BY Building.BuildingId, Building.BuildingName

--4. Group by City, Building Name in MN
SELECT        Building.City, Building.BuildingName, SUM(Apartment.Rent) AS [Total Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City, Building.BuildingName, Building.State
HAVING        (Building.State = N'MN')

--5. Group by City, Cheapest Rent
SELECT        Building.City, MIN(Apartment.Rent) AS [Lowest Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City

--6. Group by BuildingName, Smallest to Largest Size Available in Winona
SELECT        Building.BuildingName, MIN(Apartment.SquareFeet) AS [Smallest Size], AVG(Apartment.SquareFeet) AS [Average Size], MAX(Apartment.SquareFeet) AS [Largest Size]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
WHERE        (Building.City = N'Winona')
GROUP BY Building.BuildingName, Apartment.TenantId
HAVING        (Apartment.TenantId IS NULL)

--7. Group by InvoiceID, Cheapest Garage Price in September 2018
SELECT        MIN(LineItem.Amount) AS [Cheapest Garage in September 2018]
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY Invoice.InvoiceDate, LineItem.Description
HAVING        (LineItem.Description = N'Garage') AND (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-01 00:00:00', 102) AND CONVERT(DATETIME, '2018-09-30 00:00:00', 102))

--8. Group by InvoiceID, Total Amount Billed in September 2018
SELECT        Invoice.InvoiceId, SUM(LineItem.Amount) AS [Total Amount]
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY Invoice.InvoiceId, Invoice.InvoiceDate
HAVING        (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-01 00:00:00', 102) AND CONVERT(DATETIME, '2018-09-30 00:00:00', 102))