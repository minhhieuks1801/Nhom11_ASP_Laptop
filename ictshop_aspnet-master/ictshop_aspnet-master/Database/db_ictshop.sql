USE [master]
GO
/****** Object:  Database [QLLaptop]    Script Date: 5/20/2021 9:27:30 PM ******/
CREATE DATABASE [QLLaptop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLLaptop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLLaptop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLLaptop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLLaptop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLLaptop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLLaptop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLLaptop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLLaptop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLLaptop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLLaptop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLLaptop] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLLaptop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLLaptop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLLaptop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLLaptop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLLaptop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLLaptop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLLaptop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLLaptop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLLaptop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLLaptop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLLaptop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLLaptop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLLaptop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLLaptop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLLaptop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLLaptop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLLaptop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLLaptop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLLaptop] SET  MULTI_USER 
GO
ALTER DATABASE [QLLaptop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLLaptop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLLaptop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLLaptop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLLaptop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLLaptop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLLaptop] SET QUERY_STORE = OFF
GO
USE [QLLaptop]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 5/20/2021 9:27:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hedieuhanh]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hedieuhanh](
	[Mahdh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdh] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Bonhotrong] [int] NULL,
	[Sanphammoi] [bit] NULL,
	[Ram] [int] NULL,
	[Anhbia] [nvarchar](10) NULL,
	[Mahang] [int] NULL,
	[Mahdh] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'Mac  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'MSI     ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Asus    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Acer    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Dell    ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Windows   ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'Mac OS       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'Linux       ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyen Minh Hieu', N'Admin@gmail.com', N'0812883636', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Cao Duy Anh', N'khach2@gmail.com', N'0812883636', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Vo van Hoang', N'Khach@gmail.com', N'0812883636', N'12345678', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (2, N'Macbook Air 13 128GB MQD32SA/A (2017)', CAST(2000000 AS Decimal(18, 0)), 9, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 8, N'1.png', 1, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (5, N'Macbook Air 13 256GB MQD42SA/A (2017)', CAST(2000000 AS Decimal(18, 0)), 10, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 1, N'2.png', 1, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (6, N'Macbook 12 256GB (2017)', CAST(2000000 AS Decimal(18, 0)), 10, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 1, N'3.png', 1, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (7, N'Macbook Pro 13 inch 128GB (2017)', CAST(2000000 AS Decimal(18, 0)), 2, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 1, N'4.png', 1, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (8, N'Dell Inspiron N3552', CAST(1000000 AS Decimal(18, 0)), 1, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 2, N'5.png', 5, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (9, N'Dell Inspiron N3567C', CAST(1000000 AS Decimal(18, 0)), 1, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 1, N'6.png', 5, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (10, N'Dell Inspiron N3467', CAST(2000000 AS Decimal(18, 0)), 1, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 2, N'7.png', 5, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (11, N'Dell Vostro 3568', CAST(2000000 AS Decimal(18, 0)), 2, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 2, N'8.png', 5, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (13, N'MSI Creator Z16', CAST(200000 AS Decimal(18, 0)), 10, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 4, N'9.png', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (14, N'MSI Creator Z17', CAST(2000000 AS Decimal(18, 0)), 10, N'Thiết kế sang trọng, màu sắc đa dạng', 16, 0, 6, N'10.png', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (15, N'MSI GF63 Thin 10SC', CAST(20000 AS Decimal(18, 0)), 10, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 6, N'11.png', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (16, N'MSI Creator Z16', CAST(200000 AS Decimal(18, 0)), 10, N'Thiết kế sang trọng, màu sắc đa dạng', 8, 0, 2, N'12.png', 2, 1)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
USE [master]
GO
ALTER DATABASE [QLLaptop] SET  READ_WRITE 
GO
