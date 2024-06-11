CREATE DATABASE [EXE201]
GO
USE [EXE201]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Color]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Conversations]    Script Date: 6/11/2024 9:23:28 PM ******/
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
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConversationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposit]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Membership]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[MembershipType]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Messages]    Script Date: 6/11/2024 9:23:28 PM ******/
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
	[UpdatedAt] [datetime] NULL,
	[Seen] [bit] NULL,
	[Type] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 6/11/2024 9:23:28 PM ******/
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
	[FullName] [nvarchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [nvarchar](255) NULL,
	[PaymentTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTitle] [nvarchar](100) NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductDescription] [ntext] NULL,
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
/****** Object:  Table [dbo].[ProductColor]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ProductColorID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ColorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Description] [ntext] NULL,
	[AdditionalInformation] [ntext] NULL,
	[ShippingAndReturns] [ntext] NULL,
	[SizeChart] [ntext] NULL,
	[Reviews] [ntext] NULL,
	[Questions] [ntext] NULL,
	[VendorInfo] [ntext] NULL,
	[MoreProducts] [ntext] NULL,
	[ProductPolicies] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ImageID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ProductSizeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[SizeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[RentalOrder]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[RentalOrderDetails]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 6/11/2024 9:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleDescription] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[Token]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 6/11/2024 9:23:28 PM ******/
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
	[Address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/11/2024 9:23:28 PM ******/
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
/****** Object:  Table [dbo].[VerifyCode]    Script Date: 6/11/2024 9:23:28 PM ******/
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

INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (1, 3, 1, 2)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (2, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, N'Đầm', N'Các loại đầm dạ hội, đầm dự tiệc', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'Áo', N'Áo sơ mi, áo thun, áo khoác', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'Quần', N'Quần jeans, quần tây, quần short', N'Active')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (1, N'Xanh dương')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (2, N'Tráng')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (3, N'Xanh lá')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (4, N'Đỏ')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (5, N'Đen')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (6, N'Xám')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Conversations] ON 

INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (1, 1, 3, N'Chào bạn, tôi cần hỗ trợ.', CAST(N'2024-06-10T12:08:10.480' AS DateTime), CAST(N'2024-06-10T12:08:10.480' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (2, 2, 3, N'Tôi muốn biết thêm thông tin về sản phẩm.', CAST(N'2024-06-10T12:08:10.480' AS DateTime), CAST(N'2024-06-10T12:08:10.480' AS DateTime))
SET IDENTITY_INSERT [dbo].[Conversations] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposit] ON 

INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (1, 1, 3, CAST(50000.00 AS Decimal(10, 2)), CAST(N'2024-06-10T12:07:56.113' AS DateTime), N'Completed')
SET IDENTITY_INSERT [dbo].[Deposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (1, 3, 1, N'Đầm rất đẹp, phù hợp cho tiệc tối!', N'/images/feedback1.jpg', N'Public', CAST(N'2024-06-10T12:07:03.033' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (2, 3, 2, N'Áo sơ mi rất thoải mái, chất liệu tốt.', N'/images/feedback2.jpg', N'Public', CAST(N'2024-06-10T12:07:03.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (1, N'/images/dam_du_tiec_xanh.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (2, N'/images/ao_so_mi_trang.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (3, N'/images/quan_jeans_xanh.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (1, 1, 5)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (2, 2, 10)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (3, 3, 8)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Membership] ON 

INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (1, 3, 1, CAST(N'2024-06-10T12:07:15.133' AS DateTime), CAST(N'2025-06-10T12:07:15.133' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Membership] OFF
GO
SET IDENTITY_INSERT [dbo].[MembershipType] ON 

INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (1, N'Gold', N'Thẻ thành viên hạng vàng', N'Giảm giá 10% cho tất cả các sản phẩm')
INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (2, N'Silver', N'Thẻ thành viên hạng bạc', N'Giảm giá 5% cho tất cả các sản phẩm')
SET IDENTITY_INSERT [dbo].[MembershipType] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (1, 1, 3, N'Chào bạn, tôi cần hỗ trợ.', CAST(N'2024-06-10T12:08:14.080' AS DateTime), CAST(N'2024-06-10T12:08:14.080' AS DateTime), 0, N'text')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (2, 1, 1, N'Chào bạn, chúng tôi có thể giúp gì cho bạn?', CAST(N'2024-06-10T12:08:14.080' AS DateTime), CAST(N'2024-06-10T12:08:14.080' AS DateTime), 1, N'text')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (3, 2, 3, N'Tôi muốn biết thêm thông tin về sản phẩm https://example.com/product.', CAST(N'2024-06-10T12:08:14.080' AS DateTime), CAST(N'2024-06-10T12:08:14.080' AS DateTime), 0, N'link')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (4, 2, 2, N'Bạn muốn biết thêm thông tin về sản phẩm nào?', CAST(N'2024-06-10T12:08:14.080' AS DateTime), CAST(N'2024-06-10T12:08:14.080' AS DateTime), 1, N'text')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (1, 3, N'Đơn hàng của bạn đã được hoàn thành', CAST(N'2024-06-10T12:06:59.800' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (2, 3, N'Bạn có một đơn hàng mới', CAST(N'2024-06-10T12:06:59.800' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (1, 1, 3, CAST(400000.00 AS Decimal(10, 2)), 1, N'Completed', N'Hoàng Văn C', N'0912345678', N'789 Đường DEF, Quận 3, TP. HCM', CAST(N'2024-06-10T12:06:56.277' AS DateTime))
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (2, 2, 3, CAST(250000.00 AS Decimal(10, 2)), 2, N'Pending', N'Hoàng Văn C', N'0912345678', N'789 Đường DEF, Quận 3, TP. HCM', CAST(N'2024-06-10T12:06:56.277' AS DateTime))
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (1, N'Thẻ tín dụng')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (2, N'Chuyển khoản ngân hàng')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (3, N'Tiền mặt khi nhận hàng')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (1, N'Đầm dự tiệc xanh', N'Đầm dự tiệc xanh', N'Đầm dài màu xanh, phù hợp cho các buổi tiệc tối.', N'Available', 150000, 1, CAST(N'2024-06-10T12:06:09.920' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (2, N'Áo sơ mi trắng', N'Áo sơ mi trắng', N'Áo sơ mi trắng cổ điển, phù hợp cho công sở.', N'Available', 100000, 2, CAST(N'2024-06-10T12:06:09.920' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (3, N'Quần jeans xanh', N'Quần jeans xanh', N'Quần jeans màu xanh, phong cách trẻ trung.', N'Available', 200000, 3, CAST(N'2024-06-10T12:06:09.920' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColor] ON 

INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID]) VALUES (1, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID]) VALUES (2, 2, 2)
INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[ProductColor] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (1, 1, N'Đầm dự tiệc dài màu xanh, size M, có thể thuê trong vòng 1 tuần.', N'Sản phẩm có thể giặt khô, không ủi trực tiếp.', N'Giao hàng trong vòng 2 ngày, trả hàng trong vòng 7 ngày.', N'Sản phẩm có sẵn size M, L.', N'Trải nghiệm tuyệt vời!', N'Sản phẩm có thể mặc cho tiệc cưới?', N'Cung cấp bởi công ty XYZ.', N'Tương tự: Đầm dạ hội đen, Đầm dự tiệc đỏ.', N'Không được giặt ướt, ủi ở nhiệt độ thấp.')
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (2, 2, N'Áo sơ mi trắng cổ điển, size S, có thể thuê trong vòng 1 tuần.', N'Có thể giặt máy, không ủi trực tiếp.', N'Giao hàng trong vòng 2 ngày, trả hàng trong vòng 7 ngày.', N'Sản phẩm có sẵn size S, M.', N'Sản phẩm chất lượng tốt!', N'Ai có thể mặc được áo này?', N'Cung cấp bởi công ty ABC.', N'Tương tự: Áo sơ mi xanh, Áo khoác đen.', N'Không được ủi trực tiếp.')
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (3, 3, N'Quần jeans xanh phong cách, size L, có thể thuê trong vòng 1 tuần.', N'Giặt bằng tay, không sử dụng chất tẩy mạnh.', N'Giao hàng trong vòng 2 ngày, trả hàng trong vòng 7 ngày.', N'Sản phẩm có sẵn size L, XL.', N'Rất vừa vặn!', N'Có màu khác không?', N'Cung cấp bởi công ty DEF.', N'Tương tự: Quần jeans đen, Quần short.', N'Giặt bằng tay, không dùng chất tẩy mạnh.')
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (1, 1, 1)
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (2, 2, 2)
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSize] ON 

INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (1, 1, 2)
INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (2, 2, 1)
INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[ProductSize] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (1, 3, 1, 1, 5, CAST(N'2024-06-10T12:07:06.407' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (2, 3, 2, 2, 4, CAST(N'2024-06-10T12:07:06.407' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrder] ON 

INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (1, 3, N'Completed', CAST(N'2024-06-10T12:06:41.533' AS DateTime), CAST(N'2024-06-17T12:06:41.533' AS DateTime), CAST(N'2024-06-17T12:06:41.533' AS DateTime), NULL, CAST(400000.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (2, 3, N'Placed', CAST(N'2024-06-10T12:06:41.533' AS DateTime), CAST(N'2024-06-17T12:06:41.533' AS DateTime), NULL, NULL, CAST(250000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[RentalOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] ON 

INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (1, 1, 1, 2, CAST(N'2024-06-10T12:06:45.333' AS DateTime), CAST(N'2024-06-17T12:06:45.333' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (2, 2, 2, 1, CAST(N'2024-06-10T12:06:45.333' AS DateTime), CAST(N'2024-06-17T12:06:45.333' AS DateTime))
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'Quản trị viên có quyền quản lý toàn bộ hệ thống')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (2, N'Staff', N'Nhân viên hỗ trợ khách hàng và quản lý sản phẩm')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (3, N'Customer', N'Khách hàng sử dụng dịch vụ cho thuê đồ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (1, N'S')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (2, N'M')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (3, N'L')
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (4, N'XL')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Token] ON 

INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (1, 3, N'access_token', N'refresh_token', CAST(N'2024-06-10T12:08:03.070' AS DateTime), CAST(N'2024-06-17T12:08:03.070' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Token] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address]) VALUES (1, N'admin1', N'Nguyễn Văn A', N'password_hash', N'0123456789', 1, CAST(N'1980-01-01' AS Date), N'admin1@example.com', N'/images/admin1.jpg', N'Active', N'123 Đường ABC, Quận 1, TP. HCM')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address]) VALUES (2, N'staff1', N'Trần Thị B', N'password_hash', N'0987654321', 0, CAST(N'1990-02-02' AS Date), N'staff1@example.com', N'/images/staff1.jpg', N'Active', N'456 Đường XYZ, Quận 2, TP. HCM')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address]) VALUES (3, N'customer1', N'Hoàng Văn C', N'password_hash', N'0912345678', 1, CAST(N'2000-03-03' AS Date), N'customer1@example.com', N'/images/customer1.jpg', N'Active', N'789 Đường DEF, Quận 3, TP. HCM')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (3, 3)
GO
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'code1', 3, N'customer1@example.com', N'123456', CAST(N'2024-06-10T12:07:59.543' AS DateTime))
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
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([ImageID])
REFERENCES [dbo].[Image] ([ImageID])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD FOREIGN KEY([SizeID])
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
