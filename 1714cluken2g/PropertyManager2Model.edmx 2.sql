
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/23/2020 16:52:42
-- Generated from EDMX file: C:\Users\callu\OneDrive\Documents\1714cluken2020\1714CLuken\1714cluken2g\PropertyManager2Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PropertyManager2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Buildings'
CREATE TABLE [dbo].[Buildings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BuildingName] nchar(30)  NOT NULL,
    [Address] nvarchar(20)  NOT NULL,
    [City] nvarchar(30)  NOT NULL,
    [State] nvarchar(30)  NOT NULL,
    [Zip] int  NOT NULL
);
GO

-- Creating table 'Apartments'
CREATE TABLE [dbo].[Apartments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ApartmentNum] int  NOT NULL,
    [SquareFeet] int  NOT NULL,
    [Bathrooms] int  NOT NULL,
    [Rent] decimal(18,0)  NOT NULL,
    [Building_Id] int  NOT NULL,
    [Tenant_Id] int  NOT NULL,
    [Admin_Id] int  NOT NULL
);
GO

-- Creating table 'Persons'
CREATE TABLE [dbo].[Persons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(15)  NOT NULL,
    [LastName] nvarchar(15)  NOT NULL,
    [Phone] nvarchar(15)  NOT NULL,
    [Email] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'LineItems'
CREATE TABLE [dbo].[LineItems] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [Invoice_Id] int  NOT NULL
);
GO

-- Creating table 'Invoices'
CREATE TABLE [dbo].[Invoices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InvoiceDate] datetime  NOT NULL,
    [DueDate] datetime  NOT NULL,
    [Apartment_Id] int  NOT NULL
);
GO

-- Creating table 'Receipts'
CREATE TABLE [dbo].[Receipts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReceiptDate] datetime  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [Invoice_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Buildings'
ALTER TABLE [dbo].[Buildings]
ADD CONSTRAINT [PK_Buildings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Apartments'
ALTER TABLE [dbo].[Apartments]
ADD CONSTRAINT [PK_Apartments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Persons'
ALTER TABLE [dbo].[Persons]
ADD CONSTRAINT [PK_Persons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [PK_LineItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [PK_Invoices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Receipts'
ALTER TABLE [dbo].[Receipts]
ADD CONSTRAINT [PK_Receipts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Building_Id] in table 'Apartments'
ALTER TABLE [dbo].[Apartments]
ADD CONSTRAINT [FK_BuildingApartment]
    FOREIGN KEY ([Building_Id])
    REFERENCES [dbo].[Buildings]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BuildingApartment'
CREATE INDEX [IX_FK_BuildingApartment]
ON [dbo].[Apartments]
    ([Building_Id]);
GO

-- Creating foreign key on [Tenant_Id] in table 'Apartments'
ALTER TABLE [dbo].[Apartments]
ADD CONSTRAINT [FK_TenantApartment]
    FOREIGN KEY ([Tenant_Id])
    REFERENCES [dbo].[Persons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TenantApartment'
CREATE INDEX [IX_FK_TenantApartment]
ON [dbo].[Apartments]
    ([Tenant_Id]);
GO

-- Creating foreign key on [Admin_Id] in table 'Apartments'
ALTER TABLE [dbo].[Apartments]
ADD CONSTRAINT [FK_AdminApartment]
    FOREIGN KEY ([Admin_Id])
    REFERENCES [dbo].[Persons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdminApartment'
CREATE INDEX [IX_FK_AdminApartment]
ON [dbo].[Apartments]
    ([Admin_Id]);
GO

-- Creating foreign key on [Apartment_Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [FK_ApartmentInvoiceId]
    FOREIGN KEY ([Apartment_Id])
    REFERENCES [dbo].[Apartments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ApartmentInvoiceId'
CREATE INDEX [IX_FK_ApartmentInvoiceId]
ON [dbo].[Invoices]
    ([Apartment_Id]);
GO

-- Creating foreign key on [Invoice_Id] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [FK_InvoiceIdLineItem]
    FOREIGN KEY ([Invoice_Id])
    REFERENCES [dbo].[Invoices]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceIdLineItem'
CREATE INDEX [IX_FK_InvoiceIdLineItem]
ON [dbo].[LineItems]
    ([Invoice_Id]);
GO

-- Creating foreign key on [Invoice_Id] in table 'Receipts'
ALTER TABLE [dbo].[Receipts]
ADD CONSTRAINT [FK_InvoiceIdReceipt]
    FOREIGN KEY ([Invoice_Id])
    REFERENCES [dbo].[Invoices]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceIdReceipt'
CREATE INDEX [IX_FK_InvoiceIdReceipt]
ON [dbo].[Receipts]
    ([Invoice_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------