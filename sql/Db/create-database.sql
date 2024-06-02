CREATE DATABASE [EXE201]
GO
USE [EXE201]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Street] [varchar](255) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[PostalCode] [varchar](20) NULL,
	[Country] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/2/2024 6:30:30 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
	[CategoryDescription] [text] NULL,
	[CategoryStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposit]    Script Date: 6/2/2024 6:30:30 PM ******/
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
	[DepositStatus] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepositID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[FeedbackComment] [text] NULL,
	[FeedbackImage] [varchar](255) NULL,
	[FeedbackStatus] [varchar](10) NULL,
	[DateGiven] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 6/2/2024 6:30:30 PM ******/
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
/****** Object:  Table [dbo].[Membership]    Script Date: 6/2/2024 6:30:30 PM ******/
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
	[MembershipStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipType]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipType](
	[MembershipTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MembershipTypeName] [varchar](50) NULL,
	[MembershipDescription] [text] NULL,
	[MembershipBenefits] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NotificationMessage] [text] NULL,
	[DateSent] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[UserID] [int] NULL,
	[PaymentAmount] [decimal](10, 2) NULL,
	[PaymentMethod] [varchar](50) NULL,
	[PaymentStatus] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[ProductDescription] [text] NULL,
	[ProductImage] [varchar](255) NULL,
	[ProductStatus] [varchar](15) NULL,
	[ProductPrice] [float] NULL,
	[CategoryID] [int] NULL,
	[ProductSize] [varchar](50) NULL,
	[ProductColor] [varchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[ProductColorImage] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 6/2/2024 6:30:30 PM ******/
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
/****** Object:  Table [dbo].[RentalOrder]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OrderStatus] [varchar](15) NULL,
	[DatePlaced] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[ReturnReason] [varchar](255) NULL,
	[OrderTotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrderDetails]    Script Date: 6/2/2024 6:30:30 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 6/2/2024 6:30:30 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 6/2/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[FullName] [varchar](100) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](15) NULL,
	[Gender] [int] NULL,
	[DateOfBirth] [date] NULL,
	[Email] [varchar](100) NULL,
	[ProfileImage] [varchar](255) NULL,
	[AccountStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/2/2024 6:30:30 PM ******/
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
/****** Object:  Table [dbo].[VerifyCode]    Script Date: 6/2/2024 6:30:30 PM ******/
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
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressID], [UserID], [Street], [City], [State], [PostalCode], [Country]) VALUES (1, 3, N'123 Le Loi', N'Ho Chi Minh City', N'HCMC', N'700000', N'Vietnam')
INSERT [dbo].[Address] ([AddressID], [UserID], [Street], [City], [State], [PostalCode], [Country]) VALUES (2, 4, N'456 Tran Hung Dao', N'Hanoi', N'HN', N'100000', N'Vietnam')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (1, 3, 3, 1)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (2, 4, 4, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, N'Dresses', N'Various types of dresses', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'Suits', N'Various types of suits', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'Shoes', N'Various types of shoes', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'Accessories', N'Various types of accessories', N'Active')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposit] ON 

INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (1, 1, 3, CAST(50000.00 AS Decimal(10, 2)), CAST(N'2024-02-01T00:00:00.000' AS DateTime), N'Completed')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (2, 2, 4, CAST(100000.00 AS Decimal(10, 2)), CAST(N'2024-02-05T00:00:00.000' AS DateTime), N'Completed')
SET IDENTITY_INSERT [dbo].[Deposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (1, 3, 1, N'Loved the red dress! Will rent again.', N'feedback_red_dress.jpg', N'Public', CAST(N'2024-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (2, 4, 2, N'The suit was great, very comfortable.', N'feedback_blue_suit.jpg', N'Public', CAST(N'2024-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (1, 1, 10)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (2, 2, 5)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (3, 3, 20)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (4, 4, 15)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (5, 5, 8)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Membership] ON 

INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (1, 3, 1, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (2, 4, 2, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Membership] OFF
GO
SET IDENTITY_INSERT [dbo].[MembershipType] ON 

INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (1, N'Basic', N'Basic membership with limited benefits.', N'Basic support, 1 free rental per month')
INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (2, N'Premium', N'Premium membership with more benefits.', N'Premium support, 3 free rentals per month')
INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (3, N'VIP', N'VIP membership with maximum benefits.', N'VIP support, unlimited free rentals')
SET IDENTITY_INSERT [dbo].[MembershipType] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (3, 1, N'System maintenance will occur on 2024-06-10.', CAST(N'2024-06-01T10:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (4, 1, N'New security updates have been applied.', CAST(N'2024-06-05T14:30:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (5, 1, N'Monthly performance report is ready.', CAST(N'2024-06-07T08:45:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (6, 2, N'You have a new task assigned.', CAST(N'2024-06-02T09:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (7, 2, N'Weekly meeting scheduled for 2024-06-04.', CAST(N'2024-06-02T16:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (8, 2, N'Please update your work status.', CAST(N'2024-06-03T11:30:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (9, 2, N'Inventory check is due tomorrow.', CAST(N'2024-06-04T15:20:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (10, 3, N'Your order #1001 has been shipped.', CAST(N'2024-06-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (11, 3, N'Your payment for order #1001 is confirmed.', CAST(N'2024-06-01T12:15:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (12, 3, N'Your feedback on product #2001 has been received.', CAST(N'2024-06-03T10:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (13, 4, N'Your membership has been upgraded to Premium.', CAST(N'2024-06-02T14:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (14, 4, N'Your rental period for order #1002 is ending soon.', CAST(N'2024-06-05T18:00:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (15, 4, N'A new product has been added to your favorite category.', CAST(N'2024-06-06T09:30:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (16, 5, N'Your account status is now inactive. Contact support for details.', CAST(N'2024-06-02T11:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethod], [PaymentStatus]) VALUES (1, 1, 3, CAST(150000.00 AS Decimal(10, 2)), N'Credit Card', N'Completed')
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethod], [PaymentStatus]) VALUES (2, 2, 4, CAST(300000.00 AS Decimal(10, 2)), N'Bank Transfer', N'Completed')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [ProductSize], [ProductColor], [CreatedAt], [ProductColorImage]) VALUES (1, N'Red Dress', N'A beautiful red dress.', N'red_dress.jpg', N'Available', 100000, 1, N'M', N'Red', CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'red_dress_color.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [ProductSize], [ProductColor], [CreatedAt], [ProductColorImage]) VALUES (2, N'Blue Suit', N'A stylish blue suit.', N'blue_suit.jpg', N'Available', 200000, 2, N'L', N'Blue', CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'blue_suit_color.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [ProductSize], [ProductColor], [CreatedAt], [ProductColorImage]) VALUES (3, N'Black Shoes', N'Elegant black shoes.', N'black_shoes.jpg', N'Available', 50000, 3, N'42', N'Black', CAST(N'2024-01-03T00:00:00.000' AS DateTime), N'black_shoes_color.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [ProductSize], [ProductColor], [CreatedAt], [ProductColorImage]) VALUES (4, N'Gold Necklace', N'A shiny gold necklace.', N'gold_necklace.jpg', N'Available', 30000, 4, N'One Size', N'Gold', CAST(N'2024-01-04T00:00:00.000' AS DateTime), N'gold_necklace_color.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID], [ProductSize], [ProductColor], [CreatedAt], [ProductColorImage]) VALUES (5, N'White Dress', N'A beautiful white dress.', N'white_dress.jpg', N'Unavailable', 120000, 1, N'S', N'White', CAST(N'2024-01-05T00:00:00.000' AS DateTime), N'white_dress_color.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (1, 3, 1, 1, 5, CAST(N'2024-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (2, 4, 2, 2, 4, CAST(N'2024-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrder] ON 

INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (1, 3, N'Placed', CAST(N'2024-02-01T10:00:00.000' AS DateTime), CAST(N'2024-02-10T00:00:00.000' AS DateTime), NULL, NULL, CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (2, 4, N'Completed', CAST(N'2024-02-05T11:00:00.000' AS DateTime), CAST(N'2024-02-15T00:00:00.000' AS DateTime), CAST(N'2024-02-14T00:00:00.000' AS DateTime), NULL, CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal]) VALUES (3, 5, N'Cancelled', CAST(N'2024-02-10T12:00:00.000' AS DateTime), CAST(N'2024-02-20T00:00:00.000' AS DateTime), NULL, N'Changed mind', CAST(0.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[RentalOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] ON 

INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (1, 1, 1, 1, CAST(N'2024-02-01T10:00:00.000' AS DateTime), CAST(N'2024-02-10T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (2, 2, 2, 1, CAST(N'2024-02-05T11:00:00.000' AS DateTime), CAST(N'2024-02-15T00:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (3, 2, 3, 1, CAST(N'2024-02-05T11:00:00.000' AS DateTime), CAST(N'2024-02-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'Administrator with full access')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (2, N'Staff', N'Staff with limited access')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (3, N'Customer', N'Customer with basic access')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (1, N'admin01', N'Admin User', N'password123', N'0901234567', 1, CAST(N'1980-01-01' AS Date), N'admin@example.com', N'admin.jpg', N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (2, N'staff01', N'Staff User', N'password123', N'0902345678', 1, CAST(N'1990-02-01' AS Date), N'staff@example.com', N'staff.jpg', N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (3, N'customer01', N'Customer One', N'password123', N'0903456789', 2, CAST(N'2000-03-01' AS Date), N'customer1@example.com', N'customer1.jpg', N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (4, N'customer02', N'Customer Two', N'password123', N'0904567890', 2, CAST(N'2001-04-01' AS Date), N'customer2@example.com', N'customer2.jpg', N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (5, N'customer03', N'Customer Three', N'password123', N'0905678901', 2, CAST(N'2002-05-01' AS Date), N'customer3@example.com', N'customer3.jpg', N'Inactive')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (3, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (4, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (5, 3)
GO
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'verify1', 3, N'customer1@example.com', N'123456', CAST(N'2024-02-01T09:00:00.000' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'verify2', 4, N'customer2@example.com', N'654321', CAST(N'2024-02-05T10:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([UserID])
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
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[RentalOrder] ([OrderID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
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
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[VerifyCode]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
