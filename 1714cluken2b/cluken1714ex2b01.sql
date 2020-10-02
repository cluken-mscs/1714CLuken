-- Callum luken
-- Exercise 2B: Summary Queries, Min, Max, Sum, Average, Count
-- Property Manager db

-- 1) Count All Buildings
SELECT        COUNT(*) AS [Count All Buildings]
FROM            Building

--2) Count Buildings in Winona
SELECT        COUNT(*) AS [Buildings in Winona]
FROM            Building
GROUP BY City
HAVING        (City = N'Winona')

--3) Average Rent of All Apartments
SELECT        AVG(Rent) AS [Average Rent of Apartments]
FROM            Apartment

--4) Total Apartment Rent
SELECT        SUM(Rent) AS [Total Rent Building 1]
FROM            Apartment
WHERE        (BuildingId = 1)

--5) Building 2 Cheapest Rent
SELECT        MIN(Rent) AS [Cheapest Rent Builiding 2]
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 2)

--6) Apartment Sizes
SELECT        MIN(SquareFeet) AS [Smallest Size], AVG(SquareFeet) AS [Average Size], MAX(SquareFeet) AS [Largest Size]
FROM            Apartment
WHERE        (BuildingId = 1)

--7) Cheapest Price
SELECT        MIN(Amount) AS [Cheapest Garage]
FROM            LineItem
WHERE        (Description = N'Garage')

--8) Total Gas Amount Billed
SELECT        SUM(Amount) AS [Gas Billed]
FROM            LineItem
WHERE        (Description = N'Gas')

--9) Total Rent for October
SELECT        SUM(Amount) AS [October Rent]
FROM            LineItem
WHERE        (Description = N'Rent, October 2018')