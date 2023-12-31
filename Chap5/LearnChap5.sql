DROP DATABASE IF EXISTS LearnSQL
GO
/****** Object:  Database [LearnSQL]    Script Date: 07/12/2022 10:24:02 ******/
CREATE DATABASE [LearnSQL]
GO
ALTER DATABASE [LearnSQL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LearnSQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LearnSQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LearnSQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LearnSQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LearnSQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LearnSQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [LearnSQL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LearnSQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LearnSQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LearnSQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LearnSQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LearnSQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LearnSQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LearnSQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LearnSQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LearnSQL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LearnSQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LearnSQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LearnSQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LearnSQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LearnSQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LearnSQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LearnSQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LearnSQL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LearnSQL] SET  MULTI_USER 
GO
ALTER DATABASE [LearnSQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LearnSQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LearnSQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LearnSQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LearnSQL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LearnSQL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LearnSQL] SET QUERY_STORE = OFF
GO
USE [LearnSQL]
GO
/****** Object:  Schema [sales]    Script Date: 07/12/2022 10:24:02 ******/
CREATE SCHEMA [sales]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 07/12/2022 10:24:02 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 07/12/2022 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MidName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Major] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Gpa] [float] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 07/12/2022 10:24:02 ******/
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
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1025, N'B25DCCN108', N'SUBJ1004', CAST(N'2022-07-01T12:00:05.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1026, N'B25DCCN108', N'SUBJ1001', CAST(N'2022-07-01T15:03:24.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1027, N'B25DCCN108', N'SUBJ1002', CAST(N'2022-06-03T10:24:37.000' AS DateTime))
INSERT [dbo].[Register] ([Id], [StudentId], [SubjectId], [RegisterTime]) VALUES (1028, N'B25DCCN121', N'SUBJ1010', CAST(N'2022-06-03T15:24:31.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Register] OFF
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN101', N'Dũng', N'Trần', N'Anh', N'Hà Nội', N'CNTT', CAST(N'2007-01-01' AS Date), N'0358213597', 3.15)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN102', N'Trang', N'Lê', N'Quỳnh', N'Thanh Hóa', N'CNTT', CAST(N'2007-10-10' AS Date), N'0362126126', 3.36)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN103', N'Hưng', N'Hoàng', N'Văn', N'Quảng Ngãi', N'CNTT', CAST(N'2007-01-21' AS Date), N'0978123123', 3.38)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN104', N'Giang', N'Mai', N'Trường', N'Thái Bình', N'CNTT', CAST(N'2006-05-23' AS Date), N'0987456456', 3.67)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN105', N'Vinh', N'Khúc', N'Bá', N'Cao Bằng', N'CNTT', CAST(N'2007-10-14' AS Date), N'0975123654', 3.18)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN106', N'Hà', N'Ma', N'Thị', N'Bắc Ninh', N'CNTT', CAST(N'2007-04-04' AS Date), N'0962123123', 3.67)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN107', N'Nga', N'Nguyễn', N'Thu', N'Điện Biên', N'CNTT', CAST(N'2006-05-15' AS Date), N'0362145652', 3.67)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN108', N'Trâm', N'Trương', N'Quỳnh', N'Hà Nội', N'CNTT', CAST(N'2006-04-27' AS Date), N'0358123698', 3.96)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN120', N'Vỹ', N'Trần', N'Văn', N'Hồ Chí Minh', N'CNTT', CAST(N'2007-02-23' AS Date), N'0362123123', 3.64)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN121', N'Mai', N'Nguyễn', N'Thị', N'Nam Định', N'CNTT', CAST(N'2006-05-05' AS Date), N'0391234234', 3.37)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN122', N'Anh', N'Đặng', N'Minh', N'Hà Nam', N'CNTT', CAST(N'2006-04-21' AS Date), N'0391234235', 3.67)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN123', N'Bách', N'Ngô', N'Xuân', N'Hà Nội', N'CNTT', CAST(N'2006-09-01' AS Date), N'0391234236', 3.62)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN178', N'Hùng', N'Trương', N'Việt', N'Đồng Nai', N'CNTT', CAST(N'2007-08-09' AS Date), N'0378123654', 3.26)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCCN224', N'Thành', N'Nông', N'Đức', N'Hà Nội', N'CNTT', CAST(N'2006-10-19' AS Date), N'0369123654', 3.56)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCDT106', N'Bình', N'Lê', N'Văn', N'Trà Vinh', N'ĐTVT', CAST(N'2007-06-25' AS Date), N'0956123587', 3.36)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCDT108', N'Hoàng', N'Nguyễn', N'Huy', N'Nam Định', N'ĐTVT', CAST(N'2007-04-20' AS Date), N'0965125456', 3.19)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCDT115', N'Tuấn', N'Lê', N'Văn', N'Đà Nẵng', N'ĐTVT', CAST(N'2007-09-11' AS Date), N'0974133669', 3.64)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCHT100', N'Hoàng', N'Ngô', N'Duy', N'Hà Nội', N'HTTT', CAST(N'2007-10-11' AS Date), N'0351236541', 3.68)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCHT102', N'Vỹ', N'Trần', N'Văn', N'Hải Phòng', N'HTTT', CAST(N'2006-08-09' AS Date), N'0387125126', 3.17)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCQT109', N'Thảo', N'Lưu', N'Thu', N'Hải Dương', N'QTKD', CAST(N'2007-07-16' AS Date), N'0964789512', 3.64)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCQT110', N'Hoa', N'Mai', N'Thị Thanh', N'Nghệ An', N'QTKD', CAST(N'2007-03-30' AS Date), N'0974154145', 3.2)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCQT150', N'Trung', N'Trần', N'Khắc', N'Hồ Chí Minh', N'QTKD', CAST(N'2007-04-25' AS Date), N'0984157845', 3.71)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [MidName], [Address], [Major], [BirthDate], [PhoneNumber], [Gpa]) VALUES (N'B25DCVT101', N'Đình', N'Mai', N'Hắc', N'Đà Nẵng', N'ĐTVT', CAST(N'2006-06-14' AS Date), N'0398123123', 3.14)
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
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1010', N'Lập trình Web', 4, 48, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1011', N'Lập trình mạng', 4, 48, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1012', N'Lập trình nhúng', 3, 36, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1013', N'Lập trình iOS', 5, 60, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1014', N'Phân tích thiết kế hệ thống', 3, 36, N'Cơ sở ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1015', N'Mật mã học', 4, 48, N'Chuyên ngành')
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [NumOfLesson], [Type]) VALUES (N'SUBJ1016', N'Lập trình game Unity', 4, 48, N'Chuyên ngành')
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
ALTER DATABASE [LearnSQL] SET  READ_WRITE 
GO
