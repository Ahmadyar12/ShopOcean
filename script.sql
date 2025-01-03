USE [master]
GO
/****** Object:  Database [ShopOcean]    Script Date: 01/01/2025 19:04:30 ******/
CREATE DATABASE [ShopOcean]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOcean', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER04\MSSQL\DATA\ShopOcean.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOcean_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER04\MSSQL\DATA\ShopOcean_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ShopOcean] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOcean].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOcean] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOcean] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOcean] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOcean] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOcean] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOcean] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOcean] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOcean] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOcean] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOcean] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOcean] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOcean] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOcean] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOcean] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOcean] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopOcean] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOcean] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOcean] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOcean] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOcean] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOcean] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ShopOcean] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOcean] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopOcean] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOcean] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOcean] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOcean] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOcean] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOcean] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOcean] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopOcean', N'ON'
GO
ALTER DATABASE [ShopOcean] SET QUERY_STORE = ON
GO
ALTER DATABASE [ShopOcean] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ShopOcean]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Cnic] [nvarchar](20) NULL,
	[Contact] [nvarchar](15) NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[IsDeleted] [bit] NULL,
	[ZipCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cart]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[SizeId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_Tbl_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Category]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ChatSystem]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChatSystem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[UserType] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Customer]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_OrderPlaced]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_OrderPlaced](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Address] [nvarchar](max) NULL,
	[Country] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NULL,
	[OrderNote] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[Contact] [nvarchar](20) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Price]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Price](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[ProductId] [int] NULL,
	[IsDeleted] [int] NULL,
 CONSTRAINT [PK_Tbl_Price] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Product]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[UnitId] [int] NULL,
	[ColorId] [int] NULL,
	[BrandId] [int] NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[Discount] [int] NULL,
	[Status] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[IsNewArrival] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[SellerId] [int] NULL,
 CONSTRAINT [PK_Tbl_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ReviewAndComments]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ReviewAndComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[Rating] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[status] [int] NULL,
	[Created] [datetime2](7) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_ReviewAndComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Seller]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Seller](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Cnic] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[DOB] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[IsDeleted] [bit] NULL,
	[ZipCode] [int] NULL,
 CONSTRAINT [PK_Tbl_Seller] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Size]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](max) NULL,
	[IsDeleted] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Tbl_Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SubCategory]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[SubCategoryName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
	[SubCategoryImage] [nvarchar](max) NULL,
	[SellerId] [int] NULL,
 CONSTRAINT [PK_Tbl_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_WishList]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_WishList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[CustomerId] [int] NULL,
	[Price] [varchar](255) NULL,
	[Discount] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_ChatSystem] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ADDCartOrder]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_ADDCartOrder]
    @Id INT = NULL,
    @CustomerId INT = NULL,
    @OrderDate DATETIME = NULL,
    @Address NVARCHAR(255) = NULL,
    @Country NVARCHAR(100) = NULL,
    @City NVARCHAR(100) = NULL,
    @State NVARCHAR(100) = NULL,
    @Email NVARCHAR(100) = NULL,
    @OrderNote NVARCHAR(MAX) = NULL,
    @ZipCode NVARCHAR(20) = NULL,
    @Contact NVARCHAR(20) = NULL,
    @Status INT = NULL
AS
BEGIN
    -- Start a transaction to ensure data integrity
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Insert into the Orders table
        INSERT INTO Tbl_OrderPlaced (CustomerId, OrderDate, Address, Country, City, State, Email, OrderNote, ZipCode, Contact, Status) 
        VALUES (@CustomerId, @OrderDate, @Address, @Country, @City, @State, @Email, @OrderNote, @ZipCode, @Contact, 1);
        
        -- Get the newly generated OrderId
        DECLARE @NewOrderId INT = SCOPE_IDENTITY();

        -- Update the Cart table with the new OrderId
        UPDATE Tbl_Cart  -- Make sure this matches your actual cart table name
        SET OrderId = @NewOrderId
        WHERE CustomerId = @CustomerId AND OrderId IS NULL;

        -- Commit the transaction after successful execution
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback transaction in case of an error
        ROLLBACK TRANSACTION;
        
        -- Handle error logging or rethrowing the error
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AdminGraphs]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_AdminGraphs]   
 
AS BEGIN    
SELECT 
(SELECT COUNT(*) FROM Tbl_Seller) AS TotalSeller, 
(SELECT COUNT(*) FROM Tbl_Seller WHERE Status = 1) AS ActiveSeller, 
(SELECT COUNT(*) FROM Tbl_Seller WHERE Status = 2) AS PendingSeller, 
(SELECT COUNT(*) FROM Tbl_Seller WHERE Status = 3) AS RejectedSeller,

-- Customer counts
(SELECT COUNT(*) FROM Tbl_Customer) AS TotalCustomer, 
(SELECT COUNT(*) FROM Tbl_OrderPlaced WHERE Status = 1) AS ActiveCustomer, 
(SELECT COUNT(*) FROM Tbl_OrderPlaced WHERE Status = 2) AS PendingCustomer, 
(SELECT COUNT(*) FROM Tbl_OrderPlaced WHERE Status = 3) AS ShippedCustomer,
(SELECT COUNT(*) FROM Tbl_Category ) AS TotalCategory ,   
(SELECT COUNT(*) FROM Tbl_Category WHERE Status = 1 ) AS ActiveCategory,    
(SELECT COUNT(*) FROM Tbl_Category WHERE Status = 0 ) AS InActiveCategory,   
(SELECT COUNT(*) FROM Tbl_SubCategory ) AS TotalSubCategory,   
(SELECT COUNT(*) FROM Tbl_SubCategory WHERE Status = 1) AS ActiveSubCategory,   
(SELECT COUNT(*) FROM Tbl_SubCategory WHERE Status = 0) AS InActiveSubCategory,       
(SELECT COUNT(*) FROM Tbl_Product ) AS TotalProduct,   
(SELECT COUNT(*) FROM Tbl_Product WHERE Status = 1) AS ActiveProduct,     
(SELECT COUNT(*) FROM Tbl_Product WHERE Status = 0) AS InActiveProduct;   
  
END; 
GO
/****** Object:  StoredProcedure [dbo].[Sp_cart]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_cart]    
@Id int=null,    
@Sizeid int =null,  
@OrderId int =null,
@Quantity int =null,    
@ProductId int =null,    
@discount money =null,    
@price money=null,    
@totalPrice money=null,    
@DiscountPrice money=null,    
@CustomerId int =null    
as    
begin     
set @discount=(select Discount from Tbl_Product where Id=@ProductId)    
set @price=(select top(1) price from Tbl_Price where ProductId=@ProductId and SizeId=@Sizeid)    
set @DiscountPrice=@price-(@price*(@discount/100))    
set @totalPrice=@DiscountPrice*@Quantity    
insert into Tbl_Cart (CustomerId,ProductId,SizeId,Price,TotalPrice,Quantity,OrderId)    
values(@CustomerId,@ProductId,@Sizeid,@DiscountPrice,@totalPrice,@Quantity,@OrderId)    
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_Graphs]    Script Date: 01/01/2025 19:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE proc [dbo].[Sp_Graphs] 
@SellerId int =null
AS BEGIN  
SELECT    
(SELECT COUNT(*) FROM Tbl_Category where SellerId=@SellerId) AS TotalCategory , 
(SELECT COUNT(*) FROM Tbl_Category WHERE Status = 1 and SellerId=@SellerId) AS ActiveCategory,  
(SELECT COUNT(*) FROM Tbl_Category WHERE Status = 0 and SellerId=@SellerId) AS InActiveCategory, 
(SELECT COUNT(*) FROM Tbl_SubCategory where SellerId=@SellerId) AS TotalSubCategory, 
(SELECT COUNT(*) FROM Tbl_SubCategory WHERE Status = 1 and SellerId=@SellerId) AS ActiveSubCategory, 
(SELECT COUNT(*) FROM Tbl_SubCategory WHERE Status = 0 and SellerId=@SellerId) AS InActiveSubCategory,     
(SELECT COUNT(*) FROM Tbl_Product where SellerId=@SellerId ) AS TotalProduct, 
(SELECT COUNT(*) FROM Tbl_Product WHERE Status = 1 and SellerId=@SellerId) AS ActiveProduct,   
(SELECT COUNT(*) FROM Tbl_Product WHERE Status = 0 and SellerId=@SellerId) AS InActiveProduct; 

END;  
GO
USE [master]
GO
ALTER DATABASE [ShopOcean] SET  READ_WRITE 
GO
