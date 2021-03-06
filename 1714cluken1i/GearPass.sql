USE [master]
GO
/****** Object:  Database [SnowboardingGearPass]    Script Date: 9/23/2020 8:13:55 PM ******/
CREATE DATABASE [SnowboardingGearPass]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SnowboardingGearPass', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SnowboardingGearPass.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SnowboardingGearPass_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SnowboardingGearPass_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SnowboardingGearPass] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SnowboardingGearPass].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SnowboardingGearPass] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET ARITHABORT OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SnowboardingGearPass] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SnowboardingGearPass] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SnowboardingGearPass] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SnowboardingGearPass] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET RECOVERY FULL 
GO
ALTER DATABASE [SnowboardingGearPass] SET  MULTI_USER 
GO
ALTER DATABASE [SnowboardingGearPass] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SnowboardingGearPass] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SnowboardingGearPass] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SnowboardingGearPass] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SnowboardingGearPass] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SnowboardingGearPass', N'ON'
GO
ALTER DATABASE [SnowboardingGearPass] SET QUERY_STORE = OFF
GO
USE [SnowboardingGearPass]
GO
/****** Object:  Table [dbo].[GearPass]    Script Date: 9/23/2020 8:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GearPass](
	[GearPassId] [int] IDENTITY(1,1) NOT NULL,
	[GearPassLevel] [int] NOT NULL,
	[GearPassTier] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[SeasonPassId] [int] NOT NULL,
	[GearPassDescription] [nvarchar](50) NOT NULL,
	[AfterSeasonPurchase] [smallmoney] NULL,
 CONSTRAINT [PK_GearPass] PRIMARY KEY CLUSTERED 
(
	[GearPassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 9/23/2020 8:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](12) NOT NULL,
	[SeasonPassId] [int] NOT NULL,
	[GearPassId] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resort]    Script Date: 9/23/2020 8:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resort](
	[ResortId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Zip] [int] NOT NULL,
 CONSTRAINT [PK_Resort] PRIMARY KEY CLUSTERED 
(
	[ResortId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 9/23/2020 8:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesId] [int] IDENTITY(1000,1) NOT NULL,
	[SeasonPassId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[GearPassId] [int] NULL,
	[Date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonPass]    Script Date: 9/23/2020 8:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonPass](
	[SeasonPassId] [int] IDENTITY(1,1) NOT NULL,
	[GearPassId] [int] NULL,
	[PersonId] [int] NOT NULL,
	[Cost] [smallmoney] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SeasonPass] PRIMARY KEY CLUSTERED 
(
	[SeasonPassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GearPass] ON 

INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (1, 3, 1, 1, 1, N'Board, Boots, Goggles, Helmet', 250.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (2, 3, 3, 2, 2, N'Board, Boots, Goggles, Helmet', 1000.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (4, 1, 3, 3, 3, N'Board', 600.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (5, 2, 2, 6, 6, N'Board, Boots', 450.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (6, 2, 1, 7, 7, N'Board, Boots', 300.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (7, 3, 2, 8, 8, N'Board, Boots, Goggles, Helmet', 600.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (8, 1, 2, 9, 9, N'Board', 250.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (9, 1, 3, 10, 10, N'Board', 600.0000)
INSERT [dbo].[GearPass] ([GearPassId], [GearPassLevel], [GearPassTier], [PersonId], [SeasonPassId], [GearPassDescription], [AfterSeasonPurchase]) VALUES (10, 3, 3, 11, 11, N'Board, Boots, Goggles, Helmet', NULL)
SET IDENTITY_INSERT [dbo].[GearPass] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (1, N'Clark', N'Kent', N'111-111-1111', 1, 1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (2, N'Bruce', N'Banner', N'111-111-1112', 2, 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (3, N'Logan', N'Howlett', N'111-111-1113', 3, 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (4, N'Jack ', N'Sparrow', N'111-111-1114', 4, 4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (5, N'Han', N'Solo', N'111-111-1115', 5, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (6, N'Bruce', N'Wayne', N'111-111-1116', 6, 5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (7, N'Tony', N'Stark', N'111-111-1117', 7, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (8, N'Travis', N'Rice', N'111-111-1118', 8, 7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (9, N'Shaun', N'White', N'111-111-1119', 9, 8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (10, N'Louis', N'Vito', N'111-111-1120', 10, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (11, N'Danny', N'Davis', N'111-111-1121', 11, 10)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [SeasonPassId], [GearPassId]) VALUES (12, N'Nicolas', N'Muller', N'111-111-1122', 12, NULL)
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Resort] ON 

INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (1, N'NorthStar', N'CA', N'Tahoe', 96145)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (2, N'Heavenly', N'CA', N'Tahoe', 96145)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (3, N'Boreal', N'CA', N'Soda Springs', 95278)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (4, N'Tyrol Basin', N'WI', N'Mount Horeb', 53572)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (5, N'Taos', N'NM', N'Taos', 87571)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (6, N'Afton Alps', N'MN', N'Hastings', 6600)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (7, N'Terry Peak', N'SD', N'North Lawrence', 57754)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (8, N'Welch Village', N'MN', N'Welch', 55089)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (9, N'Coffee Mill', N'MN', N'Wabasha', 55981)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (10, N'Ski Cooper', N'CO', N'Leadville', 80461)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (11, N'Copper Mountain', N'CO', N'Frisco', 80443)
INSERT [dbo].[Resort] ([ResortId], [Description], [State], [City], [Zip]) VALUES (12, N'Mount La Crosse', N'WI', N'La Crosse', 54601)
SET IDENTITY_INSERT [dbo].[Resort] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1000, 1, 1, 1, CAST(N'2020-07-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1001, 2, 2, 2, CAST(N'2020-11-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1002, 3, 3, 3, CAST(N'2020-08-10T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1003, 4, 4, 4, CAST(N'2020-06-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1004, 5, 5, NULL, CAST(N'2020-12-02T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1005, 6, 6, 5, CAST(N'2020-12-10T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1006, 7, 7, 6, CAST(N'2020-07-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1007, 8, 8, 7, CAST(N'2020-08-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1008, 9, 9, 8, CAST(N'2020-11-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1009, 10, 10, 9, CAST(N'2020-08-02T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1010, 11, 11, 10, CAST(N'2020-08-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sales] ([SalesId], [SeasonPassId], [PersonId], [GearPassId], [Date]) VALUES (1011, 12, 12, NULL, CAST(N'2020-12-12T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[SeasonPass] ON 

INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (1, 1, 1, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (2, 2, 2, 800.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (3, 3, 3, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (4, 4, 4, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (5, NULL, 5, 800.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (6, 5, 6, 800.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (7, 6, 7, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (8, 7, 8, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (9, 8, 9, 800.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (10, 9, 10, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (11, 10, 11, 400.0000, N'UltraPass')
INSERT [dbo].[SeasonPass] ([SeasonPassId], [GearPassId], [PersonId], [Cost], [Description]) VALUES (12, NULL, 12, 800.0000, N'UltraPass')
SET IDENTITY_INSERT [dbo].[SeasonPass] OFF
GO
USE [master]
GO
ALTER DATABASE [SnowboardingGearPass] SET  READ_WRITE 
GO
