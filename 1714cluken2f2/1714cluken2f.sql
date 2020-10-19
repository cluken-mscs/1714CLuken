/*
This query text was retrieved from showplan XML, and may be truncated.
*/

-- Callum Luken
-- Exercise 2F Animal Shelter test queries
-- AnimalShelter db

-- 1) All Animals
SELECT        Animals.AnimalName, AnimalTypes.Type, People.FirstName + N' ' + People.LastName AS Owner
FROM            Animals INNER JOIN
                         AnimalTypes ON Animals.AnimalType_Id = AnimalTypes.Id INNER JOIN
                         People ON Animals.Person_Id = People.Id

-- 2) Cash Donations
SELECT        People.LastName + N', ' + People.FirstName AS Donor, Donations.DonationDate, Donations.Value AS Amount
FROM            People INNER JOIN
                         Donations ON People.Id = Donations.Person_Id INNER JOIN
                         DonationTypes ON Donations.DonationType_Id = DonationTypes.Id
WHERE        (DonationTypes.Description = N'Cash')

-- 3) ToTal Donations for Each Donor
SELECT        Donations.Person_Id AS Id, People.FirstName + N' ' + People.LastName AS Donor, SUM(Donations.Value) AS [Total Donations]
FROM            Donations INNER JOIN
                         People ON Donations.Person_Id = People.Id
GROUP BY People.FirstName + N' ' + People.LastName, Donations.Person_Id

-- 4) Number of Dogs for Each Owner
SELECT        People.Id, People.LastName + N', ' + People.FirstName AS Owner, SUM(Animals.AnimalType_Id) AS [Number of Dogs]
FROM            People INNER JOIN
                         Animals ON People.Id = Animals.Person_Id
GROUP BY People.Id, People.LastName + N', ' + People.FirstName
HAVING        (SUM(Animals.AnimalType_Id) = 1)
ORDER BY People.Id DESC