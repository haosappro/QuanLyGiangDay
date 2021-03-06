USE [TechDB]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 4/14/2022 11:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [int] NOT NULL,
	[HotenGiangVien] [nvarchar](100) NULL,
	[NgayThangNamSinh] [datetime] NULL,
	[DanToc] [nvarchar](100) NULL,
	[QueQuan] [nvarchar](100) NULL,
	[QuocTich] [nvarchar](100) NULL,
	[CMND] [int] NULL,
	[DienThoai] [int] NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 4/14/2022 11:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] NOT NULL,
	[DienTich] [nvarchar](100) NULL,
	[SuaChua] [nvarchar](100) NULL,
	[MaCoSo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/14/2022 11:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] NOT NULL,
	[StudentName] [nvarchar](100) NULL,
	[Marks] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/14/2022 11:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Password] [varbinary](50) NULL,
	[Mobile] [nvarchar](200) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Phong] ([MaPhong], [DienTich], [SuaChua], [MaCoSo]) VALUES (1, N'50', N'khong', N'khong')
INSERT [dbo].[Phong] ([MaPhong], [DienTich], [SuaChua], [MaCoSo]) VALUES (2, N'50', N'không', N'không')
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [Marks]) VALUES (1, N'Hao', 10)
INSERT [dbo].[Student] ([StudentId], [StudentName], [Marks]) VALUES (2, N'Hau', 10)
GO
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Mobile]) VALUES (1, N'Hao', N'haop7078@gmail.com', NULL, NULL)
GO
