-- Callum Luken
-- Exercise 2G Property Manager 2
-- Property Manager 2 Query

-- 1) Buildings, apartments admins
SELECT        Buildings.Id, Buildings.BuildingName, Buildings.City, Apartments.ApartmentNum, People.FirstName + N' ' + People.LastName AS Admin
FROM            Buildings INNER JOIN
                         Apartments ON Buildings.Id = Apartments.Building_Id INNER JOIN
                         People ON Apartments.Admin_Id = People.Id

--2) Apartments, invoices, line items
SELECT        Buildings.Id AS Building_Id, Apartments.ApartmentNum, People.LastName + N', ' + People.FirstName AS Tenant, Invoices.Id AS InvoiceId, LineItems.Description, LineItems.Amount
FROM            Buildings INNER JOIN
                         Apartments ON Buildings.Id = Apartments.Building_Id INNER JOIN
                         People ON Apartments.Tenant_Id = People.Id INNER JOIN
                         Invoices ON Apartments.Id = Invoices.Apartment_Id INNER JOIN
                         LineItems ON Invoices.Id = LineItems.Invoice_Id INNER JOIN
                         Receipts ON Invoices.Id = Receipts.Invoice_Id

--3) Tenants, invoices, receipts
SELECT        People.Id, People.LastName + N', ' + People.FirstName AS Tenant, Invoices.Id AS InvoiceId, Invoices.DueDate, Receipts.ReceiptDate, Receipts.Amount AS [Amount Received]
FROM            People INNER JOIN
                         Apartments ON People.Id = Apartments.Tenant_Id INNER JOIN
                         Invoices ON Apartments.Id = Invoices.Apartment_Id INNER JOIN
                         Receipts ON Invoices.Id = Receipts.Invoice_Id
ORDER BY Tenant