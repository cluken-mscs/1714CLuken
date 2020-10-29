SELECT        Sales.Id AS SaleId, People.FirstName + N' ' + People.LastName AS Customer, GearPasses.GearPassDescription AS Description, GearPasses.Id AS SalesId, Sales.Date
FROM            GearPasses INNER JOIN
                         Sales ON GearPasses.Sale_Id = Sales.Id INNER JOIN
                         People ON Sales.Person_Id = People.Id

SELECT        Resorts.Id AS ResortId, Resorts.ResortName AS Resort, Sales.Id AS SaleId, SeasonPasses.Year AS Season, SeasonPasses.Cost
FROM            SeasonPasses INNER JOIN
                         Sales ON SeasonPasses.Sale_Id = Sales.Id INNER JOIN
                         Resorts ON SeasonPasses.Resort_Id = Resorts.Id

SELECT        Sales.Id AS SaleId, GearPasses.Id AS GearPassId, GearPasses.GearPassDescription, SeasonPasses.Id AS SeasonPassId, SeasonPasses.SeasonPassDescription
FROM            Sales INNER JOIN
                         SeasonPasses ON Sales.Id = SeasonPasses.Sale_Id INNER JOIN
                         GearPasses ON Sales.Id = GearPasses.Sale_Id