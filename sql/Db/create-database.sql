CREATE DATABASE [EXE201]
GO
USE [EXE201]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[CategoryDescription] [ntext] NULL,
	[CategoryStatus] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conversations]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversations](
	[ConversationID] [int] IDENTITY(1,1) NOT NULL,
	[User1ID] [int] NULL,
	[User2ID] [int] NULL,
	[LastMessage] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ConversationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposit]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposit](
	[DepositID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[UserID] [int] NULL,
	[DepositAmount] [decimal](10, 2) NULL,
	[DateDeposited] [datetime] NULL,
	[DepositStatus] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepositID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[FeedbackComment] [ntext] NULL,
	[FeedbackImage] [nvarchar](255) NULL,
	[FeedbackStatus] [nvarchar](10) NULL,
	[DateGiven] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageURL] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[QuantityAvailable] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[MembershipID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[MembershipTypeID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MembershipStatus] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipType]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipType](
	[MembershipTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MembershipTypeName] [nvarchar](50) NULL,
	[MembershipDescription] [ntext] NULL,
	[MembershipBenefits] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[ConversationID] [int] NULL,
	[SenderID] [int] NULL,
	[Message] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [timestamp] NOT NULL,
	[Seen] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NotificationMessage] [ntext] NULL,
	[DateSent] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[UserID] [int] NULL,
	[PaymentAmount] [decimal](10, 2) NULL,
	[PaymentMethodID] [int] NULL,
	[PaymentStatus] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethodName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTitle] [nvarchar](100) NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductDescription] [ntext] NULL,
	[ProductImage] [nvarchar](255) NULL,
	[ProductStatus] [nvarchar](15) NULL,
	[ProductPrice] [float] NULL,
	[CategoryID] [int] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ColorID] [int] NULL,
	[SizeID] [int] NULL,
	[ImageID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[FeedbackID] [int] NULL,
	[RatingValue] [int] NULL,
	[DateGiven] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrder]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NULL,
	[UserID] [int] NULL,
	[OrderStatus] [nvarchar](15) NULL,
	[DatePlaced] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[ReturnReason] [nvarchar](255) NULL,
	[OrderTotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrderDetails]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[RentalStart] [datetime] NULL,
	[RentalEnd] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[TokenID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[AccessToken] [text] NULL,
	[RefreshToken] [text] NULL,
	[IssuedAt] [datetime] NULL,
	[ExpiresAt] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[TokenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](15) NULL,
	[Gender] [int] NULL,
	[DateOfBirth] [date] NULL,
	[Email] [varchar](100) NULL,
	[ProfileImage] [varchar](255) NULL,
	[UserStatus] [varchar](10) NULL,
	[HouseNumber] [nvarchar](50) NULL,
	[StreetName] [nvarchar](255) NULL,
	[District] [nvarchar](100) NULL,
	[CityProvince] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerifyCode]    Script Date: 6/9/2024 6:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerifyCode](
	[Id] [nvarchar](255) NOT NULL,
	[UserID] [int] NULL,
	[Email] [nvarchar](255) NULL,
	[Code] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (1, 3, 1, 1)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (2, 3, 2, 1)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (3, 4, 3, 1)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (4, 5, 4, 2)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, N'Váy dạ hội', N'Các loại váy dạ hội cho sự kiện', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'Đồ vest', N'Bộ vest dành cho nam', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'Áo dài', N'Trang phục truyền thống Việt Nam', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'Đầm dự tiệc', N'Đầm dự tiệc sang trọng', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (5, N'Trang phục dạo phố', N'Trang phục dạo phố hàng ngày', N'Active')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (1, N'Trắng')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (2, N'Đen')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (3, N'Đỏ')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (4, N'Xanh')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (5, N'Vàng')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Conversations] ON 

INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt]) VALUES (1, 3, 2, N'Bạn có thể tư vấn thêm về sản phẩm này không?', CAST(N'2024-01-10T11:00:00.000' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt]) VALUES (2, 4, 2, N'Sản phẩm này có còn size L không?', CAST(N'2024-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt]) VALUES (3, 5, 1, N'Chào admin, mình muốn báo cáo vấn đề.', CAST(N'2024-03-10T13:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Conversations] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposit] ON 

INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (1, 1, 3, CAST(300000.00 AS Decimal(10, 2)), CAST(N'2024-01-15T10:15:00.000' AS DateTime), N'Refundable')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (2, 2, 3, CAST(200000.00 AS Decimal(10, 2)), CAST(N'2024-01-16T10:15:00.000' AS DateTime), N'Non-refundable')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (3, 3, 4, CAST(100000.00 AS Decimal(10, 2)), CAST(N'2024-01-17T11:15:00.000' AS DateTime), N'Refundable')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (4, 4, 5, CAST(150000.00 AS Decimal(10, 2)), CAST(N'2024-01-18T12:15:00.000' AS DateTime), N'Non-refundable')
SET IDENTITY_INSERT [dbo].[Deposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (1, 3, 1, N'Váy rất đẹp, chất lượng tốt!', N'/images/feedback_vay.jpg', N'Approved', CAST(N'2024-01-25T12:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (2, 4, 2, N'Vest rất sang trọng, phù hợp với các sự kiện.', N'/images/feedback_vest.jpg', N'Pending', CAST(N'2024-01-26T13:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (3, 5, 4, N'Đầm rất đẹp, dịch vụ nhanh chóng.', N'/images/feedback_dam.jpg', N'Approved', CAST(N'2024-01-27T14:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (1, N'/images/vay_dahoi_trang.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (2, N'/images/vest_den.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (3, N'/images/ao_dai_do.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (4, N'/images/dam_dutiec_xanh.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (5, N'/images/quan_jean_xanh.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (1, 1, 5)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (2, 2, 10)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (3, 3, 7)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (4, 4, 3)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (5, 5, 8)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Membership] ON 

INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (1, 3, 1, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2025-01-01T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (2, 4, 2, CAST(N'2024-02-01T00:00:00.000' AS DateTime), CAST(N'2025-02-01T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (3, 5, 3, CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2025-03-01T00:00:00.000' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Membership] OFF
GO
SET IDENTITY_INSERT [dbo].[MembershipType] ON 

INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (1, N'Gold', N'Thành viên Gold', N'Giảm 10% trên mọi đơn hàng, ưu tiên giao hàng nhanh')
INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (2, N'Silver', N'Thành viên Silver', N'Giảm 5% trên mọi đơn hàng')
INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (3, N'Bronze', N'Thành viên Bronze', N'Giảm 2% trên mọi đơn hàng')
SET IDENTITY_INSERT [dbo].[MembershipType] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [Seen]) VALUES (1, 1, 3, N'Bạn có thể tư vấn thêm về sản phẩm này không?', CAST(N'2024-01-10T11:01:00.000' AS DateTime), 1)
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [Seen]) VALUES (2, 1, 2, N'Chào bạn, tôi có thể giúp gì cho bạn?', CAST(N'2024-01-10T11:02:00.000' AS DateTime), 0)
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [Seen]) VALUES (3, 2, 4, N'Sản phẩm này có còn size L không?', CAST(N'2024-02-10T12:01:00.000' AS DateTime), 1)
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [Seen]) VALUES (4, 2, 2, N'Chào bạn, sản phẩm này hiện còn size L.', CAST(N'2024-02-10T12:02:00.000' AS DateTime), 0)
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [Seen]) VALUES (5, 3, 5, N'Chào admin, mình muốn báo cáo vấn đề.', CAST(N'2024-03-10T13:01:00.000' AS DateTime), 1)
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [Seen]) VALUES (6, 3, 1, N'Sin chào, vui lòng cho biết chi tiết vấn đề của bạn.', CAST(N'2024-03-10T13:02:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (1, 3, N'Đơn hàng của bạn đã được xác nhận và đang chờ giao hàng.', CAST(N'2024-01-15T10:30:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (2, 4, N'Đơn hàng của bạn đã được giao thành công.', CAST(N'2024-01-17T15:30:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (3, 5, N'Bạn đã nhận được thông báo mới từ hệ thống.', CAST(N'2024-01-18T09:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus]) VALUES (1, 1, 3, CAST(1300000.00 AS Decimal(10, 2)), 1, N'Completed')
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus]) VALUES (2, 2, 3, CAST(1500000.00 AS Decimal(10, 2)), 2, N'Completed')
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus]) VALUES (3, 3, 4, CAST(300000.00 AS Decimal(10, 2)), 3, N'Completed')
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus]) VALUES (4, 4, 5, CAST(1100000.00 AS Decimal(10, 2)), 4, N'Completed')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (1, N'Credit Card')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (2, N'Bank Transfer')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (3, N'Cash')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (4, N'E-wallet')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (1, N'Váy dạ hội trắng', N'Váy dạ hội Elegance', N'Váy dạ hội màu trắng thiết kế thanh lịch', N'/images/vay_dahoi_trang.jpg', N'Available', 500000, 1, CAST(N'2024-06-01T14:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (2, N'Bộ vest đen', N'Vest Black Tie', N'Bộ vest màu đen cho các dịp trang trọng', N'/images/vest_den.jpg', N'Available', 800000, 2, CAST(N'2024-06-02T14:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (3, N'Áo dài đỏ', N'Áo dài Truyền Thống', N'Áo dài đỏ truyền thống với họa tiết hoa', N'/images/ao_dai_do.jpg', N'Available', 300000, 3, CAST(N'2024-06-03T14:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (4, N'Đầm dự tiệc xanh', N'Đầm dự tiệc Grace', N'Đầm dự tiệc màu xanh nhẹ nhàng, tôn dáng', N'/images/dam_dutiec_xanh.jpg', N'Available', 550000, 4, CAST(N'2024-06-04T14:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (5, N'Quần jean xanh', N'Jean Casual', N'Quần jean màu xanh cho ngày thường', N'/images/quan_jean_xanh.jpg', N'Available', 200000, 5, CAST(N'2024-06-05T14:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [SizeID], [ImageID]) VALUES (1, 1, 1, 2, 1)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [SizeID], [ImageID]) VALUES (2, 2, 2, 3, 2)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [SizeID], [ImageID]) VALUES (3, 3, 3, 1, 3)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [SizeID], [ImageID]) VALUES (4, 4, 4, 2, 4)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [SizeID], [ImageID]) VALUES (5, 5, 5, 3, 5)
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (1, 3, 1, 1, 5, CAST(N'2024-01-25T12:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (2, 4, 2, 2, 4, CAST(N'2024-01-26T13:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (3, 5, 4, 3, 5, CAST(N'2024-01-27T14:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrder] ON 

INSERT [dbo].[RentalOrder] ([OrderID], [CartID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (1, 1, 3, N'Pending', CAST(N'2024-01-15T10:00:00.000' AS DateTime), CAST(N'2024-01-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(1300000.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [CartID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (2, 2, 3, N'Completed', CAST(N'2024-01-16T10:00:00.000' AS DateTime), CAST(N'2024-01-22T00:00:00.000' AS DateTime), CAST(N'2024-01-23T00:00:00.000' AS DateTime), N'Sản phẩm không vừa', CAST(1500000.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [CartID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (3, 3, 4, N'Pending', CAST(N'2024-01-17T11:00:00.000' AS DateTime), CAST(N'2024-01-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [CartID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (4, 4, 5, N'Completed', CAST(N'2024-01-18T12:00:00.000' AS DateTime), CAST(N'2024-01-25T00:00:00.000' AS DateTime), CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'Đã sử dụng xong', CAST(1100000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[RentalOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] ON 

INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (1, 1, 1, 1, CAST(N'2024-01-15T00:00:00.000' AS DateTime), CAST(N'2024-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (2, 1, 2, 1, CAST(N'2024-01-15T00:00:00.000' AS DateTime), CAST(N'2024-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (3, 2, 1, 1, CAST(N'2024-01-16T00:00:00.000' AS DateTime), CAST(N'2024-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (4, 2, 2, 1, CAST(N'2024-01-16T00:00:00.000' AS DateTime), CAST(N'2024-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (5, 3, 3, 1, CAST(N'2024-01-17T00:00:00.000' AS DateTime), CAST(N'2024-01-21T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (6, 4, 4, 2, CAST(N'2024-01-18T00:00:00.000' AS DateTime), CAST(N'2024-01-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'Administrator with full system management privileges')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (2, N'Staff', N'Staff member who assists customers and manages orders')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (3, N'Customer', N'Customer who uses the clothing rental service')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (1, N'S')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (2, N'M')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (3, N'L')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (4, N'XL')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (5, N'XXL')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Token] ON 

INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (1, 3, N'access_token_1', N'refresh_token_1', CAST(N'2024-01-10T09:05:00.000' AS DateTime), CAST(N'2024-02-10T09:05:00.000' AS DateTime), N'Active')
INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (2, 4, N'access_token_2', N'refresh_token_2', CAST(N'2024-02-10T09:05:00.000' AS DateTime), CAST(N'2024-03-10T09:05:00.000' AS DateTime), N'Active')
INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (3, 5, N'access_token_3', N'refresh_token_3', CAST(N'2024-03-10T09:05:00.000' AS DateTime), CAST(N'2024-04-10T09:05:00.000' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Token] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [HouseNumber], [StreetName], [District], [CityProvince]) VALUES (1, N'admin123', N'Nguyễn Văn A', N'hashed_password_1', N'0909123456', 1, CAST(N'1985-01-01' AS Date), N'admin@example.com', N'/images/admin.jpg', N'Active', N'123', N'Đường Lê Lợi', N'Quận 1', N'TP. Hồ Chí Minh')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [HouseNumber], [StreetName], [District], [CityProvince]) VALUES (2, N'staff456', N'Trần Thị B', N'hashed_password_2', N'0912345678', 0, CAST(N'1990-02-02' AS Date), N'staff@example.com', N'/images/staff.jpg', N'Active', N'456', N'Đường Hai Bà Trưng', N'Quận 3', N'TP. Hồ Chí Minh')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [HouseNumber], [StreetName], [District], [CityProvince]) VALUES (3, N'customer789', N'Phạm Văn C', N'hashed_password_3', N'0923456789', 1, CAST(N'1995-03-03' AS Date), N'customer@example.com', N'/images/customer.jpg', N'Active', N'789', N'Đường Nguyễn Huệ', N'Quận 1', N'TP. Hồ Chí Minh')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [HouseNumber], [StreetName], [District], [CityProvince]) VALUES (4, N'user001', N'Nguyễn Thị D', N'hashed_password_4', N'0909456781', 0, CAST(N'1988-04-10' AS Date), N'user001@example.com', N'/images/user001.jpg', N'Active', N'12', N'Đường Bạch Đằng', N'Quận Bình Thạnh', N'TP. Hồ Chí Minh')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [HouseNumber], [StreetName], [District], [CityProvince]) VALUES (5, N'user002', N'Trần Văn E', N'hashed_password_5', N'0912567892', 1, CAST(N'1992-05-15' AS Date), N'user002@example.com', N'/images/user002.jpg', N'Active', N'34', N'Đường Cách Mạng Tháng Tám', N'Quận 10', N'TP. Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (3, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (4, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (5, 3)
GO
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'abc123', 3, N'customer@example.com', N'567890', CAST(N'2024-01-10T09:00:00.000' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'def456', 4, N'user001@example.com', N'123456', CAST(N'2024-02-10T09:00:00.000' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'ghi789', 5, N'user002@example.com', N'789123', CAST(N'2024-03-10T09:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Conversations]  WITH CHECK ADD FOREIGN KEY([User1ID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Conversations]  WITH CHECK ADD FOREIGN KEY([User2ID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Deposit]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[RentalOrder] ([OrderID])
GO
ALTER TABLE [dbo].[Deposit]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD FOREIGN KEY([MembershipTypeID])
REFERENCES [dbo].[MembershipType] ([MembershipTypeID])
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([ConversationID])
REFERENCES [dbo].[Conversations] ([ConversationID])
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([SenderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[RentalOrder] ([OrderID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ImageID])
REFERENCES [dbo].[Image] ([ImageID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[Feedback] ([FeedbackID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RentalOrder]  WITH CHECK ADD FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
ALTER TABLE [dbo].[RentalOrder]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RentalOrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[RentalOrder] ([OrderID])
GO
ALTER TABLE [dbo].[RentalOrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Token]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[VerifyCode]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
