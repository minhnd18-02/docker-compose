CREATE DATABASE [EXE201]
GO

USE [EXE201]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 5/23/2024 1:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
	[CategoryDescription] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposit]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Membership]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[MembershipType]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 5/23/2024 1:32:38 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 5/23/2024 1:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[RatingValue] [int] NULL,
	[DateGiven] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrder]    Script Date: 5/23/2024 1:32:38 PM ******/
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
	[OrderTotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrderDetails]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 5/23/2024 1:32:38 PM ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/23/2024 1:32:38 PM ******/
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
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressID], [UserID], [Street], [City], [State], [PostalCode], [Country]) VALUES (1, 3, N'123 Main St', N'Metropolis', N'State', N'12345', N'Country')
INSERT [dbo].[Address] ([AddressID], [UserID], [Street], [City], [State], [PostalCode], [Country]) VALUES (2, 2, N'456 Elm St', N'Smalltown', N'State', N'67890', N'Country')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (1, 3, 4, 1)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (2, 3, 6, 2)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (1, N'Dresses', N'Various styles of dresses')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (2, N'Suits', N'Formal and casual suits')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (3, N'Accessories', N'Fashion accessories')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposit] ON 

INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (1, 1, 3, CAST(100.00 AS Decimal(10, 2)), CAST(N'2024-05-01T10:00:00.000' AS DateTime), N'Completed')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (2, 2, 3, CAST(150.00 AS Decimal(10, 2)), CAST(N'2024-05-02T11:00:00.000' AS DateTime), N'Pending')
SET IDENTITY_INSERT [dbo].[Deposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (1, 3, 1, N'The evening gown was perfect!', NULL, N'Public', CAST(N'2024-05-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (2, 3, 3, N'The business suit was very comfortable.', NULL, N'Public', CAST(N'2024-04-08T12:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (1, 1, 10)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (2, 2, 5)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (3, 3, 15)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (4, 4, 20)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (5, 5, 50)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (6, 6, 30)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Membership] ON 

INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (1, 3, 1, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [MembershipStatus]) VALUES (2, 2, 2, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Membership] OFF
GO
SET IDENTITY_INSERT [dbo].[MembershipType] ON 

INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (1, N'Gold', N'Gold membership with premium benefits', N'Free shipping, Discounts')
INSERT [dbo].[MembershipType] ([MembershipTypeID], [MembershipTypeName], [MembershipDescription], [MembershipBenefits]) VALUES (2, N'Silver', N'Silver membership with standard benefits', N'Discounts, Early access')
SET IDENTITY_INSERT [dbo].[MembershipType] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (1, 3, N'Your rental order has been placed successfully.', CAST(N'2024-05-01T10:05:00.000' AS DateTime))
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent]) VALUES (2, 3, N'Your rental order has been completed.', CAST(N'2024-04-06T09:05:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethod], [PaymentStatus]) VALUES (1, 1, 3, CAST(200.00 AS Decimal(10, 2)), N'Credit Card', N'Pending')
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethod], [PaymentStatus]) VALUES (2, 2, 3, CAST(150.00 AS Decimal(10, 2)), N'Credit Card', N'Completed')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID]) VALUES (1, N'Evening Gown', N'Elegant evening gown perfect for formal events', NULL, N'Available', 100, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID]) VALUES (2, N'Wedding Dress', N'Beautiful wedding dress with lace details', NULL, N'Available', 150, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID]) VALUES (3, N'Business Suit', N'Classic business suit for formal occasions', NULL, N'Available', 120, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID]) VALUES (4, N'Casual Suit', N'Stylish casual suit for everyday wear', NULL, N'Available', 80, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID]) VALUES (5, N'Necklace', N'Elegant necklace to complement any outfit', NULL, N'Available', 20, 3)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [ProductImage], [ProductStatus], [ProductPrice], [CategoryID]) VALUES (6, N'Handbag', N'Chic handbag for all occasions', NULL, N'Available', 50, 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [RatingValue], [DateGiven]) VALUES (1, 3, 1, 5, CAST(N'2024-05-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [RatingValue], [DateGiven]) VALUES (2, 3, 3, 4, CAST(N'2024-04-08T12:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrder] ON 

INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [OrderTotal]) VALUES (1, 3, N'Placed', CAST(N'2024-05-01T10:00:00.000' AS DateTime), CAST(N'2024-05-07T10:00:00.000' AS DateTime), NULL, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [OrderTotal]) VALUES (2, 3, N'Completed', CAST(N'2024-04-01T11:00:00.000' AS DateTime), CAST(N'2024-04-07T11:00:00.000' AS DateTime), CAST(N'2024-04-06T09:00:00.000' AS DateTime), CAST(150.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[RentalOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] ON 

INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (1, 1, 1, 1, CAST(N'2024-05-01T10:00:00.000' AS DateTime), CAST(N'2024-05-07T10:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (2, 1, 2, 1, CAST(N'2024-05-01T10:00:00.000' AS DateTime), CAST(N'2024-05-07T10:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (3, 2, 3, 1, CAST(N'2024-04-01T11:00:00.000' AS DateTime), CAST(N'2024-04-07T11:00:00.000' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (4, 2, 5, 1, CAST(N'2024-04-01T11:00:00.000' AS DateTime), CAST(N'2024-04-07T11:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'Administrator with full access')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (2, N'Staff', N'Staff member with limited access')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (3, N'Customer', N'Regular customer with basic access')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (1, N'admin01', N'Admin User', N'adminpass', N'1234567890', 1, CAST(N'1980-01-01' AS Date), N'admin@example.com', NULL, N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (2, N'staff01', N'Staff User', N'staffpass', N'0987654321', 1, CAST(N'1990-01-01' AS Date), N'staff@example.com', NULL, N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [AccountStatus]) VALUES (3, N'customer01', N'Customer User', N'customerpass', N'1122334455', 2, CAST(N'2000-01-01' AS Date), N'customer@example.com', NULL, N'Active')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (3, 3)
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