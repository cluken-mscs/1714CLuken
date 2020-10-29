
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/27/2020 22:42:15
-- Generated from EDMX file: C:\Users\callu\OneDrive\Documents\1714cluken2020\1714CLuken\1714cluken2h\GearPassModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SnowboardGearPass];
--GO
--IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ResortSeasonPass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SeasonPasses] DROP CONSTRAINT [FK_ResortSeasonPass];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesSeasonPass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SeasonPasses] DROP CONSTRAINT [FK_SalesSeasonPass];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesGearPass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GearPasses] DROP CONSTRAINT [FK_SalesGearPass];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonSales]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_PersonSales];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Resorts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Resorts];
GO
IF OBJECT_ID(N'[dbo].[GearPasses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GearPasses];
GO
IF OBJECT_ID(N'[dbo].[Sales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sales];
GO
IF OBJECT_ID(N'[dbo].[SeasonPasses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SeasonPasses];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(30)  NOT NULL,
    [LastName] nvarchar(30)  NOT NULL,
    [Phone] nvarchar(15)  NOT NULL
);
GO

-- Creating table 'Resorts'
CREATE TABLE [dbo].[Resorts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ResortName] nvarchar(max)  NOT NULL,
    [State] nvarchar(30)  NOT NULL,
    [City] nvarchar(30)  NOT NULL,
    [Zip] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GearPasses'
CREATE TABLE [dbo].[GearPasses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GearPassLevel] int  NOT NULL,
    [GearPassTier] int  NOT NULL,
    [GearPassDescription] nvarchar(50)  NOT NULL,
    [AfterSeasonPurchase] nvarchar(20)  NOT NULL,
    [Sale_Id] int  NOT NULL
);
GO

-- Creating table 'Sales'
CREATE TABLE [dbo].[Sales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'SeasonPasses'
CREATE TABLE [dbo].[SeasonPasses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Year] datetime  NOT NULL,
    [Cost] decimal(18,0)  NOT NULL,
    [SeasonPassDescription] nvarchar(50)  NOT NULL,
    [Resort_Id] int  NOT NULL,
    [Sale_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Resorts'
ALTER TABLE [dbo].[Resorts]
ADD CONSTRAINT [PK_Resorts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GearPasses'
ALTER TABLE [dbo].[GearPasses]
ADD CONSTRAINT [PK_GearPasses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [PK_Sales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SeasonPasses'
ALTER TABLE [dbo].[SeasonPasses]
ADD CONSTRAINT [PK_SeasonPasses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Resort_Id] in table 'SeasonPasses'
ALTER TABLE [dbo].[SeasonPasses]
ADD CONSTRAINT [FK_ResortSeasonPass]
    FOREIGN KEY ([Resort_Id])
    REFERENCES [dbo].[Resorts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ResortSeasonPass'
CREATE INDEX [IX_FK_ResortSeasonPass]
ON [dbo].[SeasonPasses]
    ([Resort_Id]);
GO

-- Creating foreign key on [Sale_Id] in table 'SeasonPasses'
ALTER TABLE [dbo].[SeasonPasses]
ADD CONSTRAINT [FK_SalesSeasonPass]
    FOREIGN KEY ([Sale_Id])
    REFERENCES [dbo].[Sales]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesSeasonPass'
CREATE INDEX [IX_FK_SalesSeasonPass]
ON [dbo].[SeasonPasses]
    ([Sale_Id]);
GO

-- Creating foreign key on [Sale_Id] in table 'GearPasses'
ALTER TABLE [dbo].[GearPasses]
ADD CONSTRAINT [FK_SalesGearPass]
    FOREIGN KEY ([Sale_Id])
    REFERENCES [dbo].[Sales]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesGearPass'
CREATE INDEX [IX_FK_SalesGearPass]
ON [dbo].[GearPasses]
    ([Sale_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [FK_PersonSales]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonSales'
CREATE INDEX [IX_FK_PersonSales]
ON [dbo].[Sales]
    ([Person_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------