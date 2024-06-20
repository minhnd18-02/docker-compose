CREATE DATABASE [EXE201]
GO
USE [EXE201]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Color]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Conversations]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Deposit]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[MembershipHistory]    Script Date: 6/20/2024 11:20:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipHistory](
	[MembershipHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[OldMembershipLevel] [nvarchar](50) NULL,
	[NewMembershipLevel] [nvarchar](50) NULL,
	[ChangeDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipPolicy]    Script Date: 6/20/2024 11:20:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipPolicy](
	[MembershipPolicyID] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](50) NULL,
	[MinRentalAmount] [decimal](18, 2) NULL,
	[MaxRentalAmount] [decimal](18, 2) NULL,
	[DiscountPercentage] [decimal](5, 2) NULL,
	[FreeShippingThreshold] [decimal](18, 2) NULL,
	[VoucherAmount] [decimal](18, 2) NULL,
	[FreeRentalDescription] [nvarchar](255) NULL,
	[BirthdayGiftDescription] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipPolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/20/2024 11:20:29 AM ******/
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
	[Type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/20/2024 11:20:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NotificationMessage] [ntext] NULL,
	[DateSent] [datetime] NULL,
	[NotificationType] [nvarchar](50) NULL,
	[Seen] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[ProductColor]    Script Date: 6/20/2024 11:20:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ProductColorID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ColorID] [int] NULL,
	[ProductColorImage] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[ProductImage]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[ProductSize]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[RentalOrder]    Script Date: 6/20/2024 11:20:29 AM ******/
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
	[PointsEarned] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrderDetails]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[RewardPoints]    Script Date: 6/20/2024 11:20:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardPoints](
	[RewardPointsID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Points] [int] NULL,
	[LastUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RewardPointsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RewardRedemption]    Script Date: 6/20/2024 11:20:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardRedemption](
	[RewardRedemptionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[PointsRedeemed] [int] NULL,
	[RedemptionDescription] [nvarchar](255) NULL,
	[RedemptionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RewardRedemptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Size]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[Token]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 6/20/2024 11:20:29 AM ******/
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
	[MembershipLevel] [nvarchar](50) NULL,
	[TotalRentalValue] [decimal](18, 2) NULL,
	[RewardPoints] [int] NULL,
	[MembershipPolicyID] [int] NULL,
	[LastMembershipUpdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/20/2024 11:20:29 AM ******/
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
/****** Object:  Table [dbo].[VerifyCode]    Script Date: 6/20/2024 11:20:29 AM ******/
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
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (3, 4, 3, 2)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (4, 5, 4, 1)
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (5, 6, 5, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, N'Đầm dạ hội', N'Các loại đầm dạ hội sang trọng', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'Áo dài', N'Áo dài truyền thống và hiện đại', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'Váy cưới', N'Các loại váy cưới thời trang', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'Áo khoác', N'Các loại áo khoác thời trang', N'Active')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (5, N'Giày dép', N'Các loại giày dép thời trang', N'Active')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (1, N'Vàng')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (2, N'Tráng')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (3, N'Đen')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (4, N'Xanh dương')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (5, N'Đỏ')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Conversations] ON 

INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (1, 3, 4, N'Xin chào, bạn có thể giúp tôi?', CAST(N'2024-06-17T12:18:48.090' AS DateTime), CAST(N'2024-06-17T12:18:48.090' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (2, 3, 5, N'Tôi có câu hỏi về sản phẩm.', CAST(N'2024-06-17T12:18:48.090' AS DateTime), CAST(N'2024-06-17T12:18:48.090' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (3, 4, 5, N'Sản phẩm này có màu gì?', CAST(N'2024-06-17T12:18:48.090' AS DateTime), CAST(N'2024-06-17T12:18:48.090' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (4, 5, 6, N'Khi nào sản phẩm sẽ được giao?', CAST(N'2024-06-17T12:18:48.090' AS DateTime), CAST(N'2024-06-17T12:18:48.090' AS DateTime))
INSERT [dbo].[Conversations] ([ConversationID], [User1ID], [User2ID], [LastMessage], [CreatedAt], [UpdatedAt]) VALUES (5, 6, 3, N'Bạn có mẫu mới không?', CAST(N'2024-06-17T12:18:48.090' AS DateTime), CAST(N'2024-06-17T12:18:48.090' AS DateTime))
SET IDENTITY_INSERT [dbo].[Conversations] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposit] ON 

INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (1, 1, 3, CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-06-17T12:18:35.790' AS DateTime), N'Confirmed')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (2, 2, 3, CAST(600000.00 AS Decimal(10, 2)), CAST(N'2024-06-17T12:18:35.790' AS DateTime), N'Confirmed')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (3, 3, 4, CAST(700000.00 AS Decimal(10, 2)), CAST(N'2024-06-17T12:18:35.790' AS DateTime), N'Pending')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (4, 4, 5, CAST(800000.00 AS Decimal(10, 2)), CAST(N'2024-06-17T12:18:35.790' AS DateTime), N'Refunded')
INSERT [dbo].[Deposit] ([DepositID], [OrderID], [UserID], [DepositAmount], [DateDeposited], [DepositStatus]) VALUES (5, 5, 6, CAST(300000.00 AS Decimal(10, 2)), CAST(N'2024-06-17T12:18:35.790' AS DateTime), N'Confirmed')
SET IDENTITY_INSERT [dbo].[Deposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (1, 3, 1, N'Sản phẩm rất tốt, tôi rất hài lòng!', N'feedback1.jpg', N'Approved', CAST(N'2024-06-17T12:18:26.923' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (2, 4, 2, N'Áo dài rất đẹp và vừa vặn.', N'feedback2.jpg', N'Approved', CAST(N'2024-06-17T12:18:26.923' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (3, 5, 3, N'Váy cưới đẹp nhưng hơi dài.', N'feedback3.jpg', N'Pending', CAST(N'2024-06-17T12:18:26.923' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (4, 6, 4, N'Áo khoác rất thoải mái và ấm áp.', N'feedback4.jpg', N'Rejected', CAST(N'2024-06-17T12:18:26.923' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [FeedbackComment], [FeedbackImage], [FeedbackStatus], [DateGiven]) VALUES (5, 3, 5, N'Giày thể thao rất bền và thoải mái.', N'feedback5.jpg', N'Approved', CAST(N'2024-06-17T12:18:26.923' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (1, N'image1.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (2, N'image2.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (3, N'image3.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (4, N'image4.jpg')
INSERT [dbo].[Image] ([ImageID], [ImageURL]) VALUES (5, N'image5.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (1, 1, 10)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (2, 2, 15)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (3, 3, 5)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (4, 4, 8)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (5, 5, 12)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[MembershipHistory] ON 

INSERT [dbo].[MembershipHistory] ([MembershipHistoryID], [UserID], [OldMembershipLevel], [NewMembershipLevel], [ChangeDate]) VALUES (1, 1, N'Silver', N'Gold', CAST(N'2024-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[MembershipHistory] ([MembershipHistoryID], [UserID], [OldMembershipLevel], [NewMembershipLevel], [ChangeDate]) VALUES (2, 2, N'Bronze', N'Silver', CAST(N'2024-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[MembershipHistory] ([MembershipHistoryID], [UserID], [OldMembershipLevel], [NewMembershipLevel], [ChangeDate]) VALUES (3, 3, N'Bronze', N'Silver', CAST(N'2024-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[MembershipHistory] ([MembershipHistoryID], [UserID], [OldMembershipLevel], [NewMembershipLevel], [ChangeDate]) VALUES (4, 4, N'Bronze', N'Silver', CAST(N'2024-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[MembershipHistory] ([MembershipHistoryID], [UserID], [OldMembershipLevel], [NewMembershipLevel], [ChangeDate]) VALUES (5, 5, N'Gold', N'Ruby', CAST(N'2024-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[MembershipHistory] ([MembershipHistoryID], [UserID], [OldMembershipLevel], [NewMembershipLevel], [ChangeDate]) VALUES (6, 6, N'Bronze', N'Silver', CAST(N'2024-06-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MembershipHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[MembershipPolicy] ON 

INSERT [dbo].[MembershipPolicy] ([MembershipPolicyID], [LevelName], [MinRentalAmount], [MaxRentalAmount], [DiscountPercentage], [FreeShippingThreshold], [VoucherAmount], [FreeRentalDescription], [BirthdayGiftDescription]) VALUES (1, N'Gold', CAST(3000000.00 AS Decimal(18, 2)), CAST(10000000.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(5, 2)), CAST(500000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), N'Miễn phí thuê 2 lần mỗi năm', N'Quà tặng sinh nhật trị giá 500,000 VND')
INSERT [dbo].[MembershipPolicy] ([MembershipPolicyID], [LevelName], [MinRentalAmount], [MaxRentalAmount], [DiscountPercentage], [FreeShippingThreshold], [VoucherAmount], [FreeRentalDescription], [BirthdayGiftDescription]) VALUES (2, N'Silver', CAST(2000000.00 AS Decimal(18, 2)), CAST(3000000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(5, 2)), CAST(300000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), N'Miễn phí thuê 1 lần mỗi năm', N'Quà tặng sinh nhật trị giá 300,000 VND')
INSERT [dbo].[MembershipPolicy] ([MembershipPolicyID], [LevelName], [MinRentalAmount], [MaxRentalAmount], [DiscountPercentage], [FreeShippingThreshold], [VoucherAmount], [FreeRentalDescription], [BirthdayGiftDescription]) VALUES (3, N'Bronze', CAST(0.00 AS Decimal(18, 2)), CAST(2000000.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(200000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'Miễn phí thuê 1 lần khi đạt doanh số', N'Quà tặng sinh nhật trị giá 100,000 VND')
SET IDENTITY_INSERT [dbo].[MembershipPolicy] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (1, 1, 3, N'Xin chào, bạn có thể giúp tôi?', CAST(N'2024-06-17T12:18:52.027' AS DateTime), CAST(N'2024-06-17T12:18:52.027' AS DateTime), 0, N'text')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (2, 1, 4, N'Vâng, tôi có thể giúp gì cho bạn?', CAST(N'2024-06-17T12:18:52.027' AS DateTime), CAST(N'2024-06-17T12:18:52.027' AS DateTime), 0, N'text')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (3, 2, 3, N'Tôi có câu hỏi về sản phẩm.', CAST(N'2024-06-17T12:18:52.027' AS DateTime), CAST(N'2024-06-17T12:18:52.027' AS DateTime), 0, N'text')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (4, 2, 5, N'Bạn muốn hỏi về sản phẩm nào?', CAST(N'2024-06-17T12:18:52.027' AS DateTime), CAST(N'2024-06-17T12:18:52.027' AS DateTime), 0, N'text')
INSERT [dbo].[Messages] ([MessageID], [ConversationID], [SenderID], [Message], [CreatedAt], [UpdatedAt], [Seen], [Type]) VALUES (5, 3, 4, N'Sản phẩm này có màu gì?', CAST(N'2024-06-17T12:18:52.027' AS DateTime), CAST(N'2024-06-17T12:18:52.027' AS DateTime), 0, N'text')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent], [NotificationType], [Seen]) VALUES (1, 3, N'Đơn hàng của bạn đã được hoàn tất.', CAST(N'2024-06-17T12:18:22.627' AS DateTime), N'Order', 0)
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent], [NotificationType], [Seen]) VALUES (2, 4, N'Đơn hàng của bạn đang được xử lý.', CAST(N'2024-06-17T12:18:22.627' AS DateTime), N'Order', 0)
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent], [NotificationType], [Seen]) VALUES (3, 5, N'Bạn đã hủy đơn hàng thành công.', CAST(N'2024-06-17T12:18:22.627' AS DateTime), N'Order', 0)
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent], [NotificationType], [Seen]) VALUES (4, 6, N'Đơn hàng của bạn đang chờ xử lý.', CAST(N'2024-06-17T12:18:22.627' AS DateTime), N'Order', 0)
INSERT [dbo].[Notification] ([NotificationID], [UserID], [NotificationMessage], [DateSent], [NotificationType], [Seen]) VALUES (5, 3, N'Bạn đã nhận được thông báo mới.', CAST(N'2024-06-17T12:18:22.627' AS DateTime), N'General', 0)
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (1, 1, 3, CAST(1500000.00 AS Decimal(10, 2)), 1, N'Completed', N'Trần Văn C', N'0901234569', N'789 Đường GHI, Đà Nẵng', CAST(N'2024-06-17T12:18:12.870' AS DateTime))
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (2, 2, 3, CAST(2000000.00 AS Decimal(10, 2)), 2, N'Pending', N'Trần Văn C', N'0901234569', N'789 Đường GHI, Đà Nẵng', CAST(N'2024-06-17T12:18:12.870' AS DateTime))
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (3, 3, 4, CAST(2500000.00 AS Decimal(10, 2)), 1, N'Completed', N'Phạm Thị D', N'0901234570', N'321 Đường JKL, Cần Thơ', CAST(N'2024-06-17T12:18:12.870' AS DateTime))
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (4, 4, 5, CAST(3000000.00 AS Decimal(10, 2)), 3, N'Cancelled', N'Hoàng Văn E', N'0901234571', N'654 Đường MNO, Hải Phòng', CAST(N'2024-06-17T12:18:12.870' AS DateTime))
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [UserID], [PaymentAmount], [PaymentMethodID], [PaymentStatus], [FullName], [Phone], [Address], [PaymentTime]) VALUES (5, 5, 6, CAST(1000000.00 AS Decimal(10, 2)), 2, N'Pending', N'Vũ Thị F', N'0901234572', N'987 Đường PQR, Nha Trang', CAST(N'2024-06-17T12:18:12.870' AS DateTime))
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (1, N'Thanh toán qua thẻ')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (2, N'Thanh toán bằng tiền mặt')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [PaymentMethodName]) VALUES (3, N'Thanh toán qua chuyển khoản')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (1, N'Đầm dạ hội vàng', N'Đầm dạ hội phong cách sang trọng', N'Chiếc đầm dạ hội màu vàng, thiết kế hiện đại', N'Available', 1500000, 1, CAST(N'2024-06-17T12:16:19.287' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (2, N'Áo dài cưới trắng', N'Áo dài cưới với họa tiết truyền thống', N'Áo dài cưới màu trắng, họa tiết truyền thống', N'Available', 2000000, 2, CAST(N'2024-06-17T12:16:19.287' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (3, N'Váy cưới ren', N'Váy cưới với họa tiết ren tinh tế', N'Chiếc váy cưới với họa tiết ren, màu trắng', N'Available', 2500000, 3, CAST(N'2024-06-17T12:16:19.287' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (4, N'Áo khoác da', N'Áo khoác da thật, phong cách cá tính', N'Chiếc áo khoác da thật, màu đen', N'Available', 3000000, 4, CAST(N'2024-06-17T12:16:19.287' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [ProductTitle], [ProductName], [ProductDescription], [ProductStatus], [ProductPrice], [CategoryID], [CreatedAt]) VALUES (5, N'Giày thể thao', N'Giày thể thao, phong cách năng động', N'Đôi giày thể thao màu trắng, phong cách năng động', N'Available', 1000000, 5, CAST(N'2024-06-17T12:16:19.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColor] ON 

INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID], [ProductColorImage]) VALUES (1, 1, 1, N'image1_color1.jpg')
INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID], [ProductColorImage]) VALUES (2, 2, 2, N'image2_color2.jpg')
INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID], [ProductColorImage]) VALUES (3, 3, 3, N'image3_color3.jpg')
INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID], [ProductColorImage]) VALUES (4, 4, 4, N'image4_color4.jpg')
INSERT [dbo].[ProductColor] ([ProductColorID], [ProductID], [ColorID], [ProductColorImage]) VALUES (5, 5, 5, N'image5_color5.jpg')
SET IDENTITY_INSERT [dbo].[ProductColor] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (1, 1, N'Mô tả chi tiết về sản phẩm 1', N'Thông tin bổ sung về sản phẩm 1', N'Chính sách giao hàng và đổi trả', N'Bảng kích cỡ', N'Đánh giá sản phẩm', N'Câu hỏi thường gặp', N'Thông tin nhà cung cấp', N'Sản phẩm liên quan', N'Chính sách sản phẩm')
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (2, 2, N'Mô tả chi tiết về sản phẩm 2', N'Thông tin bổ sung về sản phẩm 2', N'Chính sách giao hàng và đổi trả', N'Bảng kích cỡ', N'Đánh giá sản phẩm', N'Câu hỏi thường gặp', N'Thông tin nhà cung cấp', N'Sản phẩm liên quan', N'Chính sách sản phẩm')
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (3, 3, N'Mô tả chi tiết về sản phẩm 3', N'Thông tin bổ sung về sản phẩm 3', N'Chính sách giao hàng và đổi trả', N'Bảng kích cỡ', N'Đánh giá sản phẩm', N'Câu hỏi thường gặp', N'Thông tin nhà cung cấp', N'Sản phẩm liên quan', N'Chính sách sản phẩm')
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (4, 4, N'Mô tả chi tiết về sản phẩm 4', N'Thông tin bổ sung về sản phẩm 4', N'Chính sách giao hàng và đổi trả', N'Bảng kích cỡ', N'Đánh giá sản phẩm', N'Câu hỏi thường gặp', N'Thông tin nhà cung cấp', N'Sản phẩm liên quan', N'Chính sách sản phẩm')
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [Description], [AdditionalInformation], [ShippingAndReturns], [SizeChart], [Reviews], [Questions], [VendorInfo], [MoreProducts], [ProductPolicies]) VALUES (5, 5, N'Mô tả chi tiết về sản phẩm 5', N'Thông tin bổ sung về sản phẩm 5', N'Chính sách giao hàng và đổi trả', N'Bảng kích cỡ', N'Đánh giá sản phẩm', N'Câu hỏi thường gặp', N'Thông tin nhà cung cấp', N'Sản phẩm liên quan', N'Chính sách sản phẩm')
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (1, 1, 1)
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (2, 2, 2)
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (3, 3, 3)
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (4, 4, 4)
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [ImageID]) VALUES (5, 5, 5)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSize] ON 

INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (1, 1, 1)
INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (2, 2, 2)
INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (3, 3, 3)
INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (4, 4, 4)
INSERT [dbo].[ProductSize] ([ProductSizeID], [ProductID], [SizeID]) VALUES (5, 5, 5)
SET IDENTITY_INSERT [dbo].[ProductSize] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (1, 3, 1, 1, 5, CAST(N'2024-06-17T12:18:31.783' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (2, 4, 2, 2, 4, CAST(N'2024-06-17T12:18:31.783' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (3, 5, 3, 3, 3, CAST(N'2024-06-17T12:18:31.787' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (4, 6, 4, 4, 2, CAST(N'2024-06-17T12:18:31.787' AS DateTime))
INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [FeedbackID], [RatingValue], [DateGiven]) VALUES (5, 3, 5, 5, 5, CAST(N'2024-06-17T12:18:31.787' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrder] ON 

INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal], [PointsEarned]) VALUES (1, 3, N'Returned', CAST(N'2024-06-17T12:17:58.267' AS DateTime), CAST(N'2024-06-22T12:17:58.267' AS DateTime), CAST(N'2024-06-18T14:10:31.033' AS DateTime), N'Trả lại sau khi sử dụng', CAST(1500000.00 AS Decimal(10, 2)), 150)
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal], [PointsEarned]) VALUES (2, 3, N'Processing', CAST(N'2024-06-17T12:17:58.267' AS DateTime), CAST(N'2024-06-22T12:17:58.267' AS DateTime), NULL, N'Đang xử lý', CAST(2000000.00 AS Decimal(10, 2)), 200)
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal], [PointsEarned]) VALUES (3, 4, N'Shipped', CAST(N'2024-06-17T12:17:58.267' AS DateTime), CAST(N'2024-06-24T12:17:58.267' AS DateTime), NULL, N'Đã giao hàng', CAST(2500000.00 AS Decimal(10, 2)), 250)
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal], [PointsEarned]) VALUES (4, 5, N'Cancelled', CAST(N'2024-06-17T12:17:58.267' AS DateTime), NULL, NULL, N'Khách hàng hủy', CAST(3000000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [ReturnReason], [OrderTotal], [PointsEarned]) VALUES (5, 6, N'Pending', CAST(N'2024-06-17T12:17:58.267' AS DateTime), CAST(N'2024-06-27T12:17:58.267' AS DateTime), NULL, N'Đang chờ xử lý', CAST(1000000.00 AS Decimal(10, 2)), 100)
SET IDENTITY_INSERT [dbo].[RentalOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] ON 

INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (1, 1, 1, 1, CAST(N'2024-06-17T12:18:01.623' AS DateTime), CAST(N'2024-06-22T12:18:01.623' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (2, 2, 2, 1, CAST(N'2024-06-17T12:18:01.627' AS DateTime), CAST(N'2024-06-22T12:18:01.627' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (3, 3, 3, 2, CAST(N'2024-06-17T12:18:01.627' AS DateTime), CAST(N'2024-06-24T12:18:01.627' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (4, 4, 4, 1, CAST(N'2024-06-17T12:18:01.627' AS DateTime), CAST(N'2024-06-20T12:18:01.627' AS DateTime))
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (5, 5, 5, 1, CAST(N'2024-06-17T12:18:01.627' AS DateTime), CAST(N'2024-06-27T12:18:01.627' AS DateTime))
SET IDENTITY_INSERT [dbo].[RentalOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[RewardPoints] ON 

INSERT [dbo].[RewardPoints] ([RewardPointsID], [UserID], [Points], [LastUpdated]) VALUES (1, 3, 100, CAST(N'2024-06-17T12:19:09.290' AS DateTime))
INSERT [dbo].[RewardPoints] ([RewardPointsID], [UserID], [Points], [LastUpdated]) VALUES (2, 4, 50, CAST(N'2024-06-17T12:19:09.290' AS DateTime))
INSERT [dbo].[RewardPoints] ([RewardPointsID], [UserID], [Points], [LastUpdated]) VALUES (3, 5, 30, CAST(N'2024-06-17T12:19:09.290' AS DateTime))
INSERT [dbo].[RewardPoints] ([RewardPointsID], [UserID], [Points], [LastUpdated]) VALUES (4, 6, 20, CAST(N'2024-06-17T12:19:09.290' AS DateTime))
INSERT [dbo].[RewardPoints] ([RewardPointsID], [UserID], [Points], [LastUpdated]) VALUES (5, 3, 150, CAST(N'2024-06-17T12:19:09.290' AS DateTime))
SET IDENTITY_INSERT [dbo].[RewardPoints] OFF
GO
SET IDENTITY_INSERT [dbo].[RewardRedemption] ON 

INSERT [dbo].[RewardRedemption] ([RewardRedemptionID], [UserID], [PointsRedeemed], [RedemptionDescription], [RedemptionDate]) VALUES (1, 3, 50, N'Đổi điểm lấy voucher giảm giá', CAST(N'2024-06-17T12:19:19.833' AS DateTime))
INSERT [dbo].[RewardRedemption] ([RewardRedemptionID], [UserID], [PointsRedeemed], [RedemptionDescription], [RedemptionDate]) VALUES (2, 4, 30, N'Đổi điểm lấy phiếu mua hàng', CAST(N'2024-06-17T12:19:19.837' AS DateTime))
INSERT [dbo].[RewardRedemption] ([RewardRedemptionID], [UserID], [PointsRedeemed], [RedemptionDescription], [RedemptionDate]) VALUES (3, 5, 20, N'Đổi điểm lấy sản phẩm', CAST(N'2024-06-17T12:19:19.837' AS DateTime))
INSERT [dbo].[RewardRedemption] ([RewardRedemptionID], [UserID], [PointsRedeemed], [RedemptionDescription], [RedemptionDate]) VALUES (4, 6, 10, N'Đổi điểm lấy quà tặng', CAST(N'2024-06-17T12:19:19.837' AS DateTime))
INSERT [dbo].[RewardRedemption] ([RewardRedemptionID], [UserID], [PointsRedeemed], [RedemptionDescription], [RedemptionDate]) VALUES (5, 3, 70, N'Đổi điểm lấy dịch vụ miễn phí', CAST(N'2024-06-17T12:19:19.837' AS DateTime))
SET IDENTITY_INSERT [dbo].[RewardRedemption] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'Quản trị viên toàn quyền')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (2, N'Staff', N'Nhân viên hỗ trợ')
INSERT [dbo].[Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (3, N'Customer', N'Khách hàng')
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

INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (1, 3, N'access_token_1', N'refresh_token_1', CAST(N'2024-06-17T12:18:43.897' AS DateTime), CAST(N'2024-06-17T13:18:43.897' AS DateTime), N'Active')
INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (2, 4, N'access_token_2', N'refresh_token_2', CAST(N'2024-06-17T12:18:43.897' AS DateTime), CAST(N'2024-06-17T13:18:43.897' AS DateTime), N'Active')
INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (3, 5, N'access_token_3', N'refresh_token_3', CAST(N'2024-06-17T12:18:43.900' AS DateTime), CAST(N'2024-06-17T13:18:43.900' AS DateTime), N'Active')
INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (4, 6, N'access_token_4', N'refresh_token_4', CAST(N'2024-06-17T12:18:43.900' AS DateTime), CAST(N'2024-06-17T13:18:43.900' AS DateTime), N'Active')
INSERT [dbo].[Token] ([TokenID], [UserID], [AccessToken], [RefreshToken], [IssuedAt], [ExpiresAt], [Status]) VALUES (5, 3, N'access_token_5', N'refresh_token_5', CAST(N'2024-06-17T12:18:43.900' AS DateTime), CAST(N'2024-06-17T13:18:43.900' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Token] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address], [MembershipLevel], [TotalRentalValue], [RewardPoints], [MembershipPolicyID], [LastMembershipUpdate]) VALUES (1, N'admin1', N'Nguyễn Văn A', N'password123', N'0901234567', 1, CAST(N'1990-01-01' AS Date), N'admin1@example.com', N'admin1.jpg', N'Active', N'123 Đường ABC, Hà Nội', N'Gold', CAST(5000000.00 AS Decimal(18, 2)), 100, 1, CAST(N'2024-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address], [MembershipLevel], [TotalRentalValue], [RewardPoints], [MembershipPolicyID], [LastMembershipUpdate]) VALUES (2, N'staff1', N'Lê Thị B', N'password123', N'0901234568', 0, CAST(N'1992-02-02' AS Date), N'staff1@example.com', N'staff1.jpg', N'Active', N'456 Đường DEF, TP.HCM', N'Silver', CAST(3000000.00 AS Decimal(18, 2)), 50, 2, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address], [MembershipLevel], [TotalRentalValue], [RewardPoints], [MembershipPolicyID], [LastMembershipUpdate]) VALUES (3, N'customer1', N'Trần Văn C', N'password123', N'0901234569', 1, CAST(N'1995-03-03' AS Date), N'customer1@example.com', N'customer1.jpg', N'Active', N'789 Đường GHI, Đà Nẵng', N'Bronze', CAST(1000000.00 AS Decimal(18, 2)), 30, 3, CAST(N'2024-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address], [MembershipLevel], [TotalRentalValue], [RewardPoints], [MembershipPolicyID], [LastMembershipUpdate]) VALUES (4, N'customer2', N'Phạm Thị D', N'password123', N'0901234570', 0, CAST(N'1993-04-04' AS Date), N'customer2@example.com', N'customer2.jpg', N'Active', N'321 Đường JKL, Cần Thơ', N'Bronze', CAST(2000000.00 AS Decimal(18, 2)), 20, 3, CAST(N'2024-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address], [MembershipLevel], [TotalRentalValue], [RewardPoints], [MembershipPolicyID], [LastMembershipUpdate]) VALUES (5, N'customer3', N'Hoàng Văn E', N'password123', N'0901234571', 1, CAST(N'1994-05-05' AS Date), N'customer3@example.com', N'customer3.jpg', N'Active', N'654 Đường MNO, Hải Phòng', N'Ruby', CAST(7000000.00 AS Decimal(18, 2)), 150, 1, CAST(N'2024-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [ProfileImage], [UserStatus], [Address], [MembershipLevel], [TotalRentalValue], [RewardPoints], [MembershipPolicyID], [LastMembershipUpdate]) VALUES (6, N'customer4', N'Vũ Thị F', N'password123', N'0901234572', 0, CAST(N'1996-06-06' AS Date), N'customer4@example.com', N'customer4.jpg', N'Active', N'987 Đường PQR, Nha Trang', N'Bronze', CAST(500000.00 AS Decimal(18, 2)), 10, 2, CAST(N'2024-06-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (3, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (4, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (5, 3)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (6, 3)
GO
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'vc1', 3, N'customer1@example.com', N'ABC123', CAST(N'2024-06-17T12:18:40.583' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'vc2', 4, N'customer2@example.com', N'DEF456', CAST(N'2024-06-17T12:18:40.583' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'vc3', 5, N'customer3@example.com', N'GHI789', CAST(N'2024-06-17T12:18:40.587' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'vc4', 6, N'customer4@example.com', N'JKL012', CAST(N'2024-06-17T12:18:40.587' AS DateTime))
INSERT [dbo].[VerifyCode] ([Id], [UserID], [Email], [Code], [CreatedAt]) VALUES (N'vc5', 3, N'customer1@example.com', N'MNO345', CAST(N'2024-06-17T12:18:40.587' AS DateTime))
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
ALTER TABLE [dbo].[MembershipHistory]  WITH CHECK ADD  CONSTRAINT [FK_MembershipHistory_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[MembershipHistory] CHECK CONSTRAINT [FK_MembershipHistory_UserID]
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
ALTER TABLE [dbo].[RewardPoints]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RewardRedemption]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Token]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([MembershipPolicyID])
REFERENCES [dbo].[MembershipPolicy] ([MembershipPolicyID])
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
