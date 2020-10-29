USE [master]
GO
/****** Object:  Database [GearPass]    Script Date: 10/28/2020 8:15:51 PM ******/
CREATE DATABASE [GearPass]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SnowboardGearPass', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SnowboardGearPass.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SnowboardGearPass_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SnowboardGearPass_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GearPass] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GearPass].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GearPass] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GearPass] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GearPass] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GearPass] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GearPass] SET ARITHABORT OFF 
GO
ALTER DATABASE [GearPass] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GearPass] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [GearPass] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GearPass] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GearPass] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GearPass] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GearPass] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GearPass] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GearPass] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GearPass] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GearPass] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GearPass] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GearPass] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GearPass] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GearPass] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GearPass] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GearPass] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GearPass] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GearPass] SET  MULTI_USER 
GO
ALTER DATABASE [GearPass] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GearPass] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GearPass] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GearPass] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GearPass] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GearPass', N'ON'
GO
ALTER DATABASE [GearPass] SET QUERY_STORE = OFF
GO
USE [GearPass]
GO
/****** Object:  Table [dbo].[GearPasses]    Script Date: 10/28/2020 8:15:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GearPasses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GearPassLevel] [int] NOT NULL,
	[GearPassTier] [int] NOT NULL,
	[GearPassDescription] [nvarchar](50) NOT NULL,
	[AfterSeasonPurchase] [nvarchar](20) NOT NULL,
	[Sale_Id] [int] NOT NULL,
 CONSTRAINT [PK_GearPasses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 10/28/2020 8:15:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resorts]    Script Date: 10/28/2020 8:15:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resorts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResortName] [nvarchar](max) NOT NULL,
	[State] [nvarchar](30) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Zip] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Resorts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 10/28/2020 8:15:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Person_Id] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonPasses]    Script Date: 10/28/2020 8:15:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonPasses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [datetime] NOT NULL,
	[Cost] [decimal](18, 0) NOT NULL,
	[SeasonPassDescription] [nvarchar](50) NOT NULL,
	[Resort_Id] [int] NOT NULL,
	[Sale_Id] [int] NOT NULL,
 CONSTRAINT [PK_SeasonPasses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GearPasses] ON 
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (5, 3, 1, N'Board, Boots, Goggles, Helmet', N'250', 2)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (6, 3, 3, N'Board, Boots, Goggles, Helmet', N'1000', 3)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (7, 1, 3, N'Board', N'600', 4)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (8, 2, 2, N'Board, Boots', N'450', 5)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (9, 2, 1, N'Board, Boots', N'300', 6)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (10, 3, 2, N'Board, Boots, Goggles, Helmet', N'600', 7)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (11, 1, 2, N'Board', N'250', 8)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (12, 1, 3, N'Board', N'600', 9)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (13, 3, 3, N'Board, Boots, Goggles, Helmet', N'1000', 10)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (15, 2, 3, N'Board, Boots', N'700', 12)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (16, 1, 1, N'Board', N'90', 13)
GO
INSERT [dbo].[GearPasses] ([Id], [GearPassLevel], [GearPassTier], [GearPassDescription], [AfterSeasonPurchase], [Sale_Id]) VALUES (17, 3, 2, N'Board, Boots, Goggles, Helmet', N'600', 14)
GO
SET IDENTITY_INSERT [dbo].[GearPasses] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (1, N'Clark', N'Kent', N'111-111-1111')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (2, N'Bruce', N'Banner', N'111-111-1112')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (3, N'Logan', N'Howlett', N'111-111-1113')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (4, N'Jack', N'Sparrow', N'111-111-1114')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (5, N'Han', N'Solo', N'111-111-1115')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (6, N'Bruce', N'Wayne', N'111-111-1116')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (7, N'Tony', N'Stark', N'111-111-1117')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (8, N'Travis', N'Rice', N'111-111-1118')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (9, N'Shaun', N'White', N'111-111-1119')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (10, N'Louis', N'Vito', N'111-111-1120')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (11, N'Danny', N'Davis', N'111-111-1121')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone]) VALUES (12, N'Nicolas', N'Muller', N'111-111-1122')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Resorts] ON 
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (1, N'NorthStar', N'CA', N'Tahoe', N'96145')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (2, N'Heavenly', N'CA', N'Tahoe', N'96145')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (3, N'Boreal', N'CA', N'Soda Springs', N'95278')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (4, N'Tyrol Basin', N'WI', N'Mount Horeb', N'53572')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (5, N'Taos', N'NM', N'Taos', N'87571')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (6, N'Afton Alps', N'MN', N'Hastings', N'6600')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (7, N'Terry Peak', N'SD', N'North Lawrence', N'57754')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (8, N'Welch Village', N'MN', N'Welch', N'55089')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (9, N'Coffee Mill', N'MN', N'Wabasha', N'55981')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (10, N'Ski Cooper', N'CO', N'Leadville', N'80461')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (11, N'Copper Mountain', N'CO', N'Frisco', N'80443')
GO
INSERT [dbo].[Resorts] ([Id], [ResortName], [State], [City], [Zip]) VALUES (12, N'Mount La Crosse', N'WI', N'La Crosse', N'54601')
GO
SET IDENTITY_INSERT [dbo].[Resorts] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (2, CAST(N'2020-07-20T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (3, CAST(N'2020-11-01T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (4, CAST(N'2020-08-10T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (5, CAST(N'2020-06-15T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (6, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 5)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (7, CAST(N'2020-10-12T00:00:00.000' AS DateTime), 6)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (8, CAST(N'2020-07-15T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (9, CAST(N'2020-08-01T00:00:00.000' AS DateTime), 8)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (10, CAST(N'2020-11-20T00:00:00.000' AS DateTime), 9)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (12, CAST(N'2020-08-02T00:00:00.000' AS DateTime), 10)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (13, CAST(N'2020-08-25T00:00:00.000' AS DateTime), 11)
GO
INSERT [dbo].[Sales] ([Id], [Date], [Person_Id]) VALUES (14, CAST(N'2020-12-12T00:00:00.000' AS DateTime), 12)
GO
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[SeasonPasses] ON 
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 1, 2)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(800 AS Decimal(18, 0)), N'UltraPass', 2, 3)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (3, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 3, 4)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (4, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 4, 5)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (5, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(800 AS Decimal(18, 0)), N'UltraPass', 5, 6)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (6, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(800 AS Decimal(18, 0)), N'UltraPass', 6, 7)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (7, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 7, 8)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (8, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 8, 9)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (9, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(800 AS Decimal(18, 0)), N'UltraPass', 9, 10)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (10, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 10, 12)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (11, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)), N'UltraPass', 11, 13)
GO
INSERT [dbo].[SeasonPasses] ([Id], [Year], [Cost], [SeasonPassDescription], [Resort_Id], [Sale_Id]) VALUES (12, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(800 AS Decimal(18, 0)), N'UltraPass', 12, 14)
GO
SET IDENTITY_INSERT [dbo].[SeasonPasses] OFF
GO
/****** Object:  Index [IX_FK_SalesGearPass]    Script Date: 10/28/2020 8:15:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SalesGearPass] ON [dbo].[GearPasses]
(
	[Sale_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonSales]    Script Date: 10/28/2020 8:15:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonSales] ON [dbo].[Sales]
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_ResortSeasonPass]    Script Date: 10/28/2020 8:15:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ResortSeasonPass] ON [dbo].[SeasonPasses]
(
	[Resort_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_SalesSeasonPass]    Script Date: 10/28/2020 8:15:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SalesSeasonPass] ON [dbo].[SeasonPasses]
(
	[Sale_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GearPasses]  WITH CHECK ADD  CONSTRAINT [FK_SalesGearPass] FOREIGN KEY([Sale_Id])
REFERENCES [dbo].[Sales] ([Id])
GO
ALTER TABLE [dbo].[GearPasses] CHECK CONSTRAINT [FK_SalesGearPass]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_PersonSales] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_PersonSales]
GO
ALTER TABLE [dbo].[SeasonPasses]  WITH CHECK ADD  CONSTRAINT [FK_ResortSeasonPass] FOREIGN KEY([Resort_Id])
REFERENCES [dbo].[Resorts] ([Id])
GO
ALTER TABLE [dbo].[SeasonPasses] CHECK CONSTRAINT [FK_ResortSeasonPass]
GO
ALTER TABLE [dbo].[SeasonPasses]  WITH CHECK ADD  CONSTRAINT [FK_SalesSeasonPass] FOREIGN KEY([Sale_Id])
REFERENCES [dbo].[Sales] ([Id])
GO
ALTER TABLE [dbo].[SeasonPasses] CHECK CONSTRAINT [FK_SalesSeasonPass]
GO
USE [master]
GO
ALTER DATABASE [GearPass] SET  READ_WRITE 
GO
