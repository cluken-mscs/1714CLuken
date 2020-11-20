--USE [PropertyManager]
--GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (2, N'Southwest Apartments ', N'1250 Homer Rd', N'Winona ', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (3, N'Northside Apartments', N'6200 Jeffers Dr', N'Madison', N'WI', N'53719     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (5, N'Southside Apartments', N'2900 Snowmist Rd', N'Madison', N'WI', N'53719     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (6, N'Westside Apartments', N'4331 Dorchester Dr', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (7, N'West End Apartments', N'5120 West 7th St', N'Winona ', N'MN', N'55987     ')
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (1, N'Sheela', N'Word', N'111-111-1111', N'sheela.word@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (2, N'John', N'Smith', N'111-111-1112', N'john.smith@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (3, N'Bruce', N'Wayne', N'111-111-1113', N'bruce.wayne@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (4, N'Clark', N'Kent', N'111-111-1114', N'clark.kent@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (5, N'Bruce', N'Banner', N'111-111-1115', N'bruce.banner@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (6, N'Peter ', N'Parker', N'111-111-1116', N'peter.parker@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (7, N'James', N'Howlett', N'111-111-1117', N'james.howlett@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (8, N'Tony', N'Stark', N'111-111-1118', N'tony.stark@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (9, N'Jack', N'Sparrow', N'111-111-1119', N'jack.sparrow@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (10, N'Ash', N'Ketchum', N'111-111-1120', N'ash.ketchum@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (11, N'Anderson', N'Silva', N'111-111-1121', N'anderson.silva@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (12, N'Travis', N'Rice', N'111-111-1122', N'travis.rice@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (13, N'Louis', N'Vito', N'111-111-1123', N'louis.vito@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (14, N'Eric', N'Roner', N'111-111-1124', N'eric.roner@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (15, N'Frodo', N'Baggins', N'111-111-1125', N'frodo.baggins@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (16, N'Gandalf', N'Gray', N'111-111-1126', N'gandalf.gray@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (17, N'Mace', N'Windu', N'111-111-1127', N'mace.windu@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (18, N'Gilgamesh', N'Enkidu', N'111-111-1128', N'gilgamesh.enkidu@gmail.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (19, N'Arthur', N'Pendragon', N'111-111-1129', N'arthur.pendragon@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Apartments] ON 
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (1, 1, N'101', 400, 1, 550.0000, 1, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (2, 1, N'102', 550, 1, 700.0000, 2, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (3, 1, N'103', 450, 1, 600.0000, 3, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (4, 1, N'104', 500, 1, 650.0000, 4, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (5, 1, N'105', 500, 1, 600.0000, 5, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (6, 2, N'102', 700, 2, 800.0000, 6, 17)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (7, 2, N'103', 600, 1, 700.0000, 7, 17)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (8, 2, N'104', 350, 1, 500.0000, 8, 17)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (9, 3, N'101', 500, 1, 650.0000, 9, 18)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (10, 3, N'102', 600, 1, 700.0000, 10, 18)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (11, 3, N'103', 400, 1, 500.0000, 11, 18)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (12, 3, N'104', 450, 1, 550.0000, 12, 18)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (13, 5, N'101', 500, 1, 600.0000, 13, 19)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (14, 5, N'102', 600, 1, 700.0000, 14, 19)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (15, 5, N'103', 900, 2, 1100.0000, 15, 19)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (16, 5, N'104', 800, 2, 1000.0000, 16, 19)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (17, 2, N'105', 500, 2, 1000.0000, 17, 19)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (20, 1, N'106', 600, 1, 600.0000, NULL, 5)
GO
SET IDENTITY_INSERT [dbo].[Apartments] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (1, 1, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (3, 2, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (4, 3, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (5, 4, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (6, 5, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (7, 6, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (9, 7, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10, 8, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (11, 9, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (12, 10, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (13, 11, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (14, 12, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (15, 13, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (16, 14, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (17, 15, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (19, 16, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (20, 17, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItems] ON 
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (1, 1, N'Rent, October 2018', 550.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (2, 1, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (3, 1, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (4, 1, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (5, 1, N'Cable TV/Internet', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (6, 3, N'Rent, October 2018', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (7, 3, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (8, 3, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (9, 3, N'Cable TV/Internet', 90.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10, 4, N'
Rent, October 2018', 600.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (11, 4, N'Electricity', 80.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (13, 4, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (14, 4, N'Garage', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (15, 4, N'Cable TV/Internet', 110.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (16, 5, N'Rent, October 2018', 650.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (17, 5, N'Electricity', 80.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (18, 5, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (19, 5, N'Cable TV/Internet', 110.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (20, 6, N'Rent, October 2018', 600.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (21, 6, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (22, 6, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (23, 6, N'Cable TV/Internet', 110.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (24, 7, N'Rent, October 2018', 800.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (25, 7, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (26, 7, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (27, 7, N'Cable TV/Internet', 110.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (28, 9, N'Rent, October 2018', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (29, 9, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (30, 9, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (31, 9, N'Cable TV/Internet', 120.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (32, 9, N'Garage', 90.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (33, 10, N'Rent, October 2018', 500.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (34, 10, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (35, 10, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (36, 10, N'Cable TV/Internet', 100.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (37, 10, N'Garage', 80.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (39, 11, N'Rent, October 2018', 650.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (40, 11, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (41, 11, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (42, 11, N'Cable TV/Internet', 130.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (43, 11, N'Garage', 80.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (44, 12, N'Rent, October 2018', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (45, 12, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (46, 12, N'Gas ', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (47, 12, N'Cable TV/Internet', 100.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (48, 13, N'Rent, October 2018', 500.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (49, 13, N'Electricity', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (50, 13, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (51, 13, N'Cable TV/Internet', 90.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (52, 14, N'Rent, October 2018', 550.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (53, 14, N'Electricity', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (54, 14, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (55, 14, N'Cable TV/Internet', 100.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (56, 15, N'Rent, October 2018', 600.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (57, 15, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (58, 15, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (59, 15, N'Cable TV/Internet', 120.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (60, 15, N'Garage', 80.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (61, 16, N'Rent, October 2018', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (62, 16, N'Electricity', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (63, 16, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (64, 16, N'Cable TV/Internet', 100.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (65, 17, N'Rent, October 2018', 1100.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (66, 17, N'Electricity', 80.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (67, 17, N'Gas', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (68, 17, N'Cable TV/Internet', 150.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (69, 19, N'Rent, October 2018', 1000.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (70, 19, N'Electricity', 75.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (71, 19, N'Gas', 55.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (72, 19, N'Cable TV/Internet', 130.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (73, 19, N'Garage', 120.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (74, 20, N'Rent, October 2018', 1000.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (75, 20, N'Electricity', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (76, 20, N'Gas', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (77, 20, N'Cable TV/Internet', 120.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (78, 20, N'Garage', 100.0000)
GO
SET IDENTITY_INSERT [dbo].[LineItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (1, 1, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 770.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (2, 3, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 900.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (3, 4, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 880.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (4, 5, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 890.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (5, 6, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 810.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (7, 7, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1020.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (8, 9, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1010.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (9, 10, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 775.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10, 11, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 955.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (11, 12, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 895.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (12, 13, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 675.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (13, 14, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 730.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (14, 15, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 895.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (15, 16, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 885.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (16, 17, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1390.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (17, 19, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1380.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (18, 20, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1360.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (19, 1, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 900.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO

