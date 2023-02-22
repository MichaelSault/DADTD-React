USE [master]
GO
/****** Object:  Database [DataDog]    Script Date: 2023-02-21 11:42:08 PM ******/
CREATE DATABASE [DataDog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DataDog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DataDog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DataDog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DataDog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DataDog] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataDog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataDog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataDog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DataDog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataDog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataDog] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataDog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataDog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataDog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataDog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataDog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataDog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataDog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataDog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DataDog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataDog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DataDog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataDog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataDog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataDog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataDog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataDog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DataDog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataDog] SET RECOVERY FULL 
GO
ALTER DATABASE [DataDog] SET  MULTI_USER 
GO
ALTER DATABASE [DataDog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataDog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataDog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataDog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DataDog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DataDog] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DataDog', N'ON'
GO
ALTER DATABASE [DataDog] SET QUERY_STORE = ON
GO
ALTER DATABASE [DataDog] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DataDog]
GO
/****** Object:  Table [dbo].[GoodBoys]    Script Date: 2023-02-21 11:42:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodBoys](
	[DogID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[FeedTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_GoodBoys] PRIMARY KEY CLUSTERED 
(
	[DogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OwnerDogLinks]    Script Date: 2023-02-21 11:42:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnerDogLinks](
	[OwnerID] [int] NOT NULL,
	[DogID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 2023-02-21 11:42:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owners](
	[OwnerID] [int] NOT NULL,
	[Name] [nchar](15) NOT NULL,
	[Email] [nchar](25) NOT NULL,
	[Password] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DataDog] SET  READ_WRITE 
GO
