USE [duan]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 04/04/2022 02:46:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameVN] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 04/04/2022 02:46:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 04/04/2022 02:46:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Telephone] [int] NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Amount] [float] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 04/04/2022 02:46:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[ProductDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[Special] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/04/2022 02:46:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Telephone] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (1, N'Nhập khẩu', N'Nhập khẩu')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (2, N'Nội địa', N'Nội địa')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1, 1, 2, 100000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2, 1, 3, 100000, 4, 0.05)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (3, 1, 4, 100000, 1, 0.05)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Telephone], [Address], [Amount], [Description], [Status]) VALUES (1, N'1', CAST(N'2022-04-04T00:00:00.000' AS DateTime), 1232113251, N'Long Thành, Đồng Nai', 575000, N'', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (1, N'Nho Mẫu Đơn', 100000, N'NhoMauDon.jpg', CAST(N'2020-02-11' AS Date), 1, 1, 50, N'<p>Xuất sứ: H&agrave;n Quốc</p>

<p>Thơm ngon mời bạn ăn nha t&ocirc;i đ&acirc;y kh&ocirc;ng chờ bạn nữa giờ t&ocirc;i ăn liền!!!</p>
', 0.5, 1016, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (2, N'Cherry Mỹ', 100000, N'CherryMy.png', CAST(N'2020-02-11' AS Date), 1, 1, 50, N'<p>Xuất sứ: Mỹ</p>
', 0, 6, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (3, N'Cam Úc', 100000, N'CamUc.jpg', CAST(N'2020-02-11' AS Date), 1, 1, 50, N'', 0.05, 7, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (4, N'Táo Envy', 100000, N'TaoEnvy.jpg', CAST(N'2020-02-11' AS Date), 1, 1, 50, N'', 0.05, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (5, N'Xoài Úc', 100000, N'XoaiUc.png', CAST(N'2020-02-11' AS Date), 1, 1, 50, N'', 0.05, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (6, N'Bưởi Da Xanh', 200000, N'BuoiDaXanh.jpg', CAST(N'2020-02-11' AS Date), 1, 1, 50, N'', 0.05, 4, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (7, N'Măng Cục', 250000, N'MangCuc.jpg', CAST(N'2020-02-05' AS Date), 1, 1, 100, N'', 0.05, 10, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (8, N'Quýt Đường', 185000, N'QuytDuong.jpg', CAST(N'2020-02-05' AS Date), 1, 1, 100, N'', 0.05, 3, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (9, N'Xoài Cát Hòa Lộc', 325400, N'XoaiCatHoaLoc.jpg', CAST(N'2020-02-05' AS Date), 1, 1, 100, N'', 0.05, 1, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'1', N'123456', N'Nguyễn Thành Luận', 543838193, N'thanhluanxhxh2000@gmail.com', N'luan.jpg', 1, 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'123123', N'123123', N'123123', 1233131, N'honhatphi44@gmail.com', N'quylao.png', 0, 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'123456', N'123456', N'123456', 1232113251, N'honhatphi44@gmail.com', N'quylao.png', 1, 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'2', N'123456', N'Nguyễn Thành Hưng', 352616273, N'thanhluan2000@gmail.com', N'luan.jpg', 1, 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'phi123', N'123456', N'phi123', 113, N'honhatphi44@gmail.com', N'logo1.png', 0, 0)
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_order]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
