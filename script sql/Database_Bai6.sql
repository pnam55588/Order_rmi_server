USE [RmiBai6]
GO
/****** Object:  Table [dbo].[MyOrder]    Script Date: 4/25/2023 1:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOrder](
	[orderDate] [date] NULL,
	[orderID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/25/2023 1:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[productID] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/25/2023 1:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[price] [float] NOT NULL,
	[description] [varchar](255) NULL,
	[productID] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x6B430B00 AS Date), 1)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x6C430B00 AS Date), 2)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x6D430B00 AS Date), 3)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x6E430B00 AS Date), 4)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x6F430B00 AS Date), 5)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x70430B00 AS Date), 6)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x71430B00 AS Date), 7)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x72430B00 AS Date), 8)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x73430B00 AS Date), 9)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x74430B00 AS Date), 10)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x75430B00 AS Date), 11)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x76430B00 AS Date), 12)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x77430B00 AS Date), 13)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x78430B00 AS Date), 14)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x79430B00 AS Date), 15)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x7A430B00 AS Date), 16)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x7B430B00 AS Date), 17)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x7C430B00 AS Date), 18)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x7D430B00 AS Date), 19)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x7E430B00 AS Date), 20)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x7F430B00 AS Date), 21)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x80430B00 AS Date), 22)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x81430B00 AS Date), 23)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x82430B00 AS Date), 24)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x83430B00 AS Date), 25)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x84430B00 AS Date), 26)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x85430B00 AS Date), 27)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x86430B00 AS Date), 28)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x87430B00 AS Date), 29)
INSERT [dbo].[MyOrder] ([orderDate], [orderID]) VALUES (CAST(0x88430B00 AS Date), 30)
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (1, 10, N'1')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (1, 5, N'2')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (1, 3, N'3')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (2, 8, N'2')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (2, 2, N'4')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (2, 6, N'5')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (3, 1, N'1')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (3, 3, N'3')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (3, 4, N'5')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (4, 7, N'2')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (4, 3, N'4')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (5, 9, N'1')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (5, 2, N'5')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (5, 4, N'6')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (6, 6, N'3')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (6, 4, N'4')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (7, 8, N'5')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (7, 1, N'6')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (8, 2, N'1')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (8, 4, N'4')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (8, 6, N'5')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (9, 9, N'2')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (9, 1, N'3')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (9, 3, N'6')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (10, 5, N'1')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (10, 2, N'2')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (10, 7, N'5')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (11, 3, N'3')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (11, 6, N'6')
INSERT [dbo].[OrderDetail] ([orderID], [quantity], [productID]) VALUES (12, 10, N'1')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (10, N'Product A', N'1')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (55, N'Product J', N'10')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (60, N'Product K', N'11')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (65, N'Product L', N'12')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (70, N'Product M', N'13')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (75, N'Product N', N'14')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (80, N'Product O', N'15')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (85, N'Product P', N'16')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (90, N'Product Q', N'17')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (95, N'Product R', N'18')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (100, N'Product S', N'19')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (15, N'Product B', N'2')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (105, N'Product T', N'20')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (110, N'Product U', N'21')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (115, N'Product V', N'22')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (120, N'Product W', N'23')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (125, N'Product X', N'24')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (130, N'Product Y', N'25')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (135, N'Product Z', N'26')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (140, N'Product AA', N'27')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (145, N'Product AB', N'28')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (150, N'Product AC', N'29')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (20, N'Product C', N'3')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (155, N'Product AD', N'30')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (25, N'Product D', N'4')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (30, N'Product E', N'5')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (35, N'Product F', N'6')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (40, N'Product G', N'7')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (45, N'Product H', N'8')
INSERT [dbo].[Product] ([price], [description], [productID]) VALUES (50, N'Product I', N'9')
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKcdfcbdsrfdjfi0bwxa64iif5x] FOREIGN KEY([orderID])
REFERENCES [dbo].[MyOrder] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKcdfcbdsrfdjfi0bwxa64iif5x]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKic1bk0tqco7l3ndtkel36xpcs] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKic1bk0tqco7l3ndtkel36xpcs]
GO
