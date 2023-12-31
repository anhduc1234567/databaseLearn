USE [master]
GO
/****** Object:  Database [testSQL]    Script Date: 30/07/2023 8:57:51 CH ******/
CREATE DATABASE [testSQL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testSQL_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\testSQL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'testSQL_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\testSQL.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [testSQL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testSQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testSQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testSQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testSQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testSQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testSQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [testSQL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [testSQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testSQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testSQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testSQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testSQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testSQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testSQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testSQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testSQL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [testSQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testSQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testSQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testSQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testSQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testSQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testSQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testSQL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testSQL] SET  MULTI_USER 
GO
ALTER DATABASE [testSQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testSQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testSQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testSQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testSQL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testSQL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [testSQL] SET QUERY_STORE = OFF
GO
USE [testSQL]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 30/07/2023 8:57:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MidName] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Address] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 30/07/2023 8:57:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[StudentId] [varchar](50) NOT NULL,
	[SubjectId] [varchar](50) NOT NULL,
	[RegisterTime] [datetime] NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 30/07/2023 8:57:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Major] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[PhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 30/07/2023 8:57:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Credit] [int] NULL,
	[NumOfLesson] [int] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (100, N'Nam', N'Nguyễn', N'Văn', 20, N'Hà Nội')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (101, N'Mai', N'Phạm', N'Thị', 21, N'Thanh Hóa')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (102, N'Minh', N'Lê', N'Đình', 22, N'Hải Dương')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (103, N'Khánh', N'Nguyễn', N'Ngọc', 24, N'Bắc Giang')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (104, N'Hương', N'Mai', N'Thị Diệu', 20, N'Thái Nguyên')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (110, N'Nhân', N'Nguyễn', N'Thành', 20, N'Hà Nội')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (111, N'Minh', N'Nguyễn', N'Đức', 20, N'Hà Nội')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (112, N'Lành', N'Nguyễn', N'Thị', 21, N'Hà Nội')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (120, N'Long', N'Phạm', N'Đình', 20, N'Nghệ An')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (121, N'Linh', N'Trần', N'Hạo', 20, N'Hà Nam')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (122, N'Liên', N'Ngô', N'Thu', 20, N'Cà Mau')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (123, N'Hồng', N'Lê', N'Thị Minh', 21, N'Bình Dương')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (124, N'Luyến', N'Nông', N'Thị Lưu', 20, N'Tây Ninh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (125, N'Nga', N'Vũ', N'Thị Thu', 21, N'Hà Tĩnh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (130, N'Long', N'Phạm', N'Đình', 20, N'Nghệ An')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (131, N'Linh', N'Trần', N'Hạo', 20, N'Hà Nam')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (132, N'Liên', N'Ngô', N'Thu', 20, N'Cà Mau')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (133, N'Hồng', N'Lê', N'Thị Minh', 21, N'Bình Dương')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (134, N'Luyến', N'Nông', N'Thị Lưu', 20, N'Tây Ninh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (135, N'Nga', N'Vũ', N'Thị Thu', 21, N'Hà Tĩnh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (140, N'Long', N'Phạm', N'Đình', 20, N'Nghệ An')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (141, N'Linh', N'Trần', N'Hạo', 20, N'Hà Nam')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (142, N'Liên', N'Ngô', N'Thu', 20, N'Cà Mau')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (143, N'Hồng', N'Lê', N'Thị Minh', 21, N'Bình Dương')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (144, N'Luyến', N'Nông', N'Thị Lưu', 20, N'Tây Ninh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (145, N'Nga', N'Vũ', N'Thị Thu', 21, N'Hà Tĩnh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (204, N'Hoàng', N'Vũ', N'Đình', 20, N'Đà Nẵng')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (205, N'Oanh', N'Trần', N'Thị Thu', 19, N'Nam Định')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (206, N'Linh', N'Mai', N'Thùy', 20, N'Vĩnh Long')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (207, N'Hòa', N'Trịnh', N'Khánh', 21, N'Đà Nẵng')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (208, N'Bắc', N'Ngô', N'Văn', 22, N'Bình Dương')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (209, N'Hường', N'Lê', N'Thị', 20, N'Hồ Chí Minh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (210, N'Dũng', N'Trần', N'Hoàng', 21, N'Hồ Chí Minh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (211, N'Quang', N'Huỳnh', N'Văn', 20, N'Cà Mau')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (212, N'Hạnh', N'Lưu', N'Hồng', 19, N'Bến Tre')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (214, N'Anh', N'Nguyễn', N'Hoàng', 21, N'Điện Biên')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (215, N'Mạnh', N'Nông', N'Đức', 24, N'Long An')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (216, N'truong', N'viet', N'hoang', 23, N'Hồ Chí Minh')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (219, N'Pía', N'Giàng', N'Alinh', 25, N'Long An')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (220, N'Hung', N'Le', N'Nguyen Van', 21, N'Ha Nam')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (221, N'Hoang', N'Luu', N'Tran Ngo', 23, N'Nghe An')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (222, N'Lam', N'Nguyen', N'Van', NULL, N'Bac Giang')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (223, N'Khanh', N'Ngo', N'Gia', 0, N'Hai Duong')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MidName], [Age], [Address]) VALUES (224, N'Truong', N'Le', N'Quang', 21, N'Phu Yen')
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1000, N'B25DCCN101', N'SUBJ1001', CAST(N'2022-04-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1001, N'B25DCCN102', N'SUBJ1002', CAST(N'2022-04-19T00:01:24.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1002, N'B25DCCN103', N'SUBJ1003', CAST(N'2022-04-19T00:10:20.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1003, N'B25DCDT108', N'SUBJ1004', CAST(N'2022-04-19T00:11:11.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1004, N'B25DCCN101', N'SUBJ1003', CAST(N'2022-04-19T00:01:01.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1005, N'B25DCQT109', N'SUBJ1005', CAST(N'2022-04-19T00:05:23.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1006, N'B25DCQT150', N'SUBJ1003', CAST(N'2022-04-19T00:03:45.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1007, N'B25DCCN178', N'SUBJ1007', CAST(N'2022-04-19T00:06:27.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1008, N'B25DCDT108', N'SUBJ1009', CAST(N'2022-04-19T00:07:12.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1009, N'B25DCQT150', N'SUBJ1007', CAST(N'2022-04-19T00:12:15.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1011, N'B25DCCN101', N'SUBJ1002', CAST(N'2022-04-19T01:00:01.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1012, N'B25DCCN104', N'SUBJ1005', CAST(N'2022-04-19T01:01:05.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1013, N'B25DCCN101', N'SUBJ1005', CAST(N'2022-04-19T01:02:32.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1014, N'B25DCCN102', N'SUBJ1006', CAST(N'2022-04-19T01:03:25.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1016, N'B25DCCN103', N'SUBJ1001', CAST(N'2022-04-19T01:05:36.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1017, N'B25DCCN102', N'SUBJ1001', CAST(N'2022-04-19T02:23:00.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1018, N'B25DCCN101', N'SUBJ1004', CAST(N'2022-04-19T02:21:13.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1019, N'B25DCQT150', N'SUBJ1001', CAST(N'2022-04-19T02:25:31.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1022, N'B25DCQT150', N'SUBJ1002', CAST(N'2022-04-19T02:26:20.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1023, N'B25DCQT150', N'SUBJ1004', CAST(N'2022-04-19T02:27:36.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1024, N'B25DCDT108', N'SUBJ1005', CAST(N'2022-04-19T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Register] OFF
GO
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN101', N'Trần Anh Dũng', N'Hà Nội', N'CNTT', CAST(N'2007-01-01' AS Date), N'0358213597')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN102', N'Lê Quỳnh Trang', N'Thanh Hóa', N'CNTT', CAST(N'2007-10-10' AS Date), N'0362126126')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN103', N'Hoàng Văn Hưng', N'Quảng Ngãi', N'CNTT', CAST(N'2007-01-21' AS Date), N'0978123123')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN104', N'Mai Trường Giang', N'Thái Bình', N'CNTT', CAST(N'2006-05-23' AS Date), N'0987456456')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN105', N'Khúc Bá Vinh', N'Cao Bằng', N'CNTT', CAST(N'2007-10-14' AS Date), N'0975123654')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN106', N'Ma Thị Hà', N'Bắc Ninh', N'CNTT', CAST(N'2007-04-04' AS Date), N'0962123123')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN120', N'Trần Văn Vỹ', N'Điện Biên', N'CNTT', CAST(N'2007-02-23' AS Date), N'0971245632')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCCN178', N'Trương Việt Hùng', N'Đồng Nai', N'CNTT', CAST(N'2007-08-09' AS Date), N'0378123654')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCDT106', N'Lê Văn Bình', N'Trà Vinh', N'ĐTVT', CAST(N'2007-06-25' AS Date), N'0956123587')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCDT108', N'Nguyễn Huy Hoàng', N'Nam Định', N'ĐTVT', CAST(N'2007-04-20' AS Date), N'0965125456')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCDT115', N'Lê Văn Tuấn', N'Đà Nẵng', N'ĐTVT', CAST(N'2007-09-11' AS Date), N'0974133669')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCQT109', N'Lưu Thu Thảo', N'Hải Dương', N'QTKD', CAST(N'2007-07-16' AS Date), N'0964789512')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCQT110', N'Mai Thị Hoa', N'Nghệ An', N'QTKD', CAST(N'2007-03-30' AS Date), N'0974154145')
INSERT [dbo].[Student] ([Id], [FullName], [Address], [Major], [BirthDate], [PhoneNumber]) VALUES (N'B25DCQT150', N'Trần Khắc Trung', N'Hồ Chí Minh', N'QTKD', CAST(N'2007-04-25' AS Date), N'0984157845')
GO
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1001', N'C++', 3, 36, N'Cơ bản')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1002', N'C#', 4, 48, N'Nâng cao')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1003', N'Java', 4, 48, N'Nâng cao')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1004', N'SQL', 3, 36, N'Cơ sở ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1005', N'Trí tuệ nhân tạo', 4, 48, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1006', N'Lập trình Android', 4, 48, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1007', N'Thiết kế đồ họa', 3, 36, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1008', N'Cơ sở dữ liệu phân tán', 3, 36, N'Cơ sở ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1009', N'Cấu trúc dữ liệu và giải thuật', 3, 36, N'Cơ bản')
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT ((0)) FOR [Age]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Student]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Subject]
GO
USE [master]
GO
ALTER DATABASE [testSQL] SET  READ_WRITE 
GO
