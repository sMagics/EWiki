USE [EWiki]
GO
/****** Object:  Table [dbo].[Archives]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveComment] [nvarchar](max) NULL,
	[ArchiveLength] [int] NOT NULL,
	[ArchivePageId] [int] NULL,
	[ArchiveParentId] [int] NULL,
	[BelongToUserId] [nvarchar](450) NULL,
	[ContentId] [int] NULL,
	[ContentText] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[ReversionId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Archives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlockedIps]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedIps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnonymousOnly] [bit] NOT NULL,
	[BlockByUserId] [nvarchar](450) NULL,
	[BlockCreateAccount] [bit] NOT NULL,
	[BlockExpiry] [decimal](18, 2) NOT NULL,
	[BlockReason] [nvarchar](max) NULL,
	[BlockUserEdit] [bit] NOT NULL,
	[BlockedIpId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IpAddress] [nvarchar](max) NULL,
	[IpRangeEnd] [nvarchar](max) NULL,
	[IpRangeStart] [nvarchar](max) NULL,
	[ParentBlock] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserBlockedId] [nvarchar](450) NULL,
 CONSTRAINT [PK_BlockedIps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatPages] [int] NULL,
	[CatTitle] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NumberOfSubcat] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[CatTitleVI] [nvarchar](max) NULL,
	[CatImageId] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfoGroups]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterInfoGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterInfoGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfos]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterInfos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterInfoGroupId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsMain] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterInfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Characters]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Attack] [int] NOT NULL,
	[CPGain] [real] NOT NULL,
	[Candy] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Defense] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EvolveFromId] [int] NOT NULL,
	[Height] [real] NOT NULL,
	[MaxCP] [real] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Species] [nvarchar](max) NULL,
	[Stamina] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Weight] [real] NOT NULL,
	[EvolveIntos] [nvarchar](max) NULL,
	[AvatarImageId] [int] NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterSectionGroups]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSectionGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterSectionGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterSections]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[CharacterSectionGroupId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterSections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileArchives]    Script Date: 9/25/2016 10:09:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileArchives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveName] [nvarchar](max) NULL,
	[BitDepth] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[DeletedReason] [nvarchar](max) NULL,
	[FileDescription] [nvarchar](max) NULL,
	[FileMediaType] [nvarchar](max) NULL,
	[FileMime] [nvarchar](max) NULL,
	[FileSize] [int] NOT NULL,
	[FileSource] [nvarchar](max) NULL,
	[Height] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UploadedUserId] [nvarchar](450) NULL,
	[Width] [int] NOT NULL,
 CONSTRAINT [PK_FileArchives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InfoValues]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterInfoId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[LinkTo] [int] NOT NULL,
	[LinkToId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UrlFormat] [nvarchar](max) NULL,
 CONSTRAINT [PK_InfoValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[LocationType] [int] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moves]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moves](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cooldown] [real] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[CritChange] [real] NOT NULL,
	[DPS] [real] NOT NULL,
	[Energy] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Power] [real] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[WithSTAB] [real] NOT NULL,
	[MoveCategoryId] [int] NULL,
	[MoveType] [int] NULL,
 CONSTRAINT [PK_Moves] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageContents]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageContents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentFlags] [ntext] NULL,
	[ContentText] [ntext] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageContents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageLangs]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageLangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Language] [nvarchar](max) NULL,
	[PageId] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageLangs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageMetas]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[PageId] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageRestrictions]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsCascade] [bit] NOT NULL,
	[PageRestrictedId] [int] NOT NULL,
	[ResLevel] [int] NOT NULL,
	[ResType] [int] NOT NULL,
	[ResctrictionExpiry] [decimal](18, 2) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[PageId] [int] NULL,
 CONSTRAINT [PK_PageRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentLanguage] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsNewPage] [bit] NOT NULL,
	[IsRedirect] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[NewestContent] [int] NULL,
	[PageLength] [decimal](18, 2) NOT NULL,
	[TagId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[FeatureImageId] [int] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PokemonLocation]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonLocation](
	[CharacterId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [PK_PokemonLocation] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PokemonMove]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonMove](
	[CharacterId] [int] NOT NULL,
	[MoveId] [int] NOT NULL,
 CONSTRAINT [PK_PokemonMove] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PokemonSpecialMove]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonSpecialMove](
	[CharacterId] [int] NOT NULL,
	[MoveId] [int] NOT NULL,
 CONSTRAINT [PK_PokemonSpecialMove] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProtectedTitles]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtectedTitles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NameSpace] [int] NOT NULL,
	[ProtectExpiry] [decimal](18, 2) NOT NULL,
	[ProtectReason] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NULL,
	[UserProtectedId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ProtectedTitles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecentChanges]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentChanges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChangeComment] [nvarchar](max) NULL,
	[ChangeFromIpAddress] [nvarchar](max) NULL,
	[ChangeNewLength] [decimal](18, 2) NULL,
	[ChangeOldLength] [decimal](18, 2) NULL,
	[ChangeType] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsCreateNew] [bit] NOT NULL,
	[IsDeletedAction] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[PageId] [int] NULL,
	[PageTitle] [nvarchar](max) NULL,
	[RevisionId] [int] NULL,
	[RevisionParentId] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserMakeChangeId] [nvarchar](450) NULL,
 CONSTRAINT [PK_RecentChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[References]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[References](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[LinkTo] [int] NOT NULL,
	[LinkToId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UrlFormat] [nvarchar](max) NULL,
 CONSTRAINT [PK_References] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Revisions]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revisions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BelongToUserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[PageContentId] [int] NOT NULL,
	[PageId] [int] NOT NULL,
	[RevParentId] [int] NULL,
	[RevisionComment] [nvarchar](max) NULL,
	[RevivsionIsDeleted] [bit] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Revisions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sites]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[SiteConfig] [nvarchar](max) NULL,
	[SiteDomain] [nvarchar](max) NULL,
	[SiteGroup] [nvarchar](max) NULL,
	[SiteKey] [nvarchar](max) NULL,
	[SiteLanguage] [nvarchar](max) NULL,
	[SiteProtocol] [nvarchar](max) NULL,
	[SiteSource] [nvarchar](max) NULL,
	[SiteType] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Sites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](max) NULL,
	[Level] [smallint] NOT NULL,
	[NickName] [nvarchar](max) NULL,
	[SearchCount] [int] NOT NULL,
	[ShortName] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[CharacterId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMetas]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserInUseId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNewtalks]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNewtalks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserIp] [nvarchar](max) NULL,
	[UserLastSeen] [datetime2](7) NOT NULL,
	[UserSeenId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserNewtalks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WatchLists]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NameSpace] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[WatchTitle] [nvarchar](max) NULL,
	[WatchedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WatchLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WikiImages]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BitDepth] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[ImageDescription] [nvarchar](max) NULL,
	[ImageHeight] [int] NOT NULL,
	[ImageMediaType] [nvarchar](max) NULL,
	[ImageMime] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[ImageSize] [int] NOT NULL,
	[ImageWidth] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_WikiImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WikiVideos]    Script Date: 9/25/2016 10:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiVideos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Url] [nvarchar](max) NULL,
	[VideoType] [int] NOT NULL,
 CONSTRAINT [PK_WikiVideos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160828184740_EWiki', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160904101855_EWiki', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160911100857_UpdateRelationship', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160911171833_UpdateEntity', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160911172356_UpdateForgeinKey', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160919171755_UpdateEntityRelationship', N'1.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160925145647_UpdateForImageCategory', N'1.0.1')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'07fe1bca-c975-4234-ab2c-2e1449197585', N'ca598b0b-041a-442a-9926-99656315096f', N'StandardUser', N'STANDARDUSER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'10c92da5-eed9-40ee-af5b-6b0005197c55', N'6d7146e2-8b3e-4c45-addb-122860759150', N'SysAdmin', N'SYSADMIN')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0c108b6-2a80-42d7-bf9e-28646e08811e', N'10c92da5-eed9-40ee-af5b-6b0005197c55')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Discriminator], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'f0c108b6-2a80-42d7-bf9e-28646e08811e', 0, N'857fdefd-fa97-46a4-86e6-766cacb44754', N'User', N'sysadmin.ewiki@gmail.com', 1, 1, NULL, N'SYSADMIN.EWIKI@GMAIL.COM', N'EWIKIADMIN', N'AQAAAAEAACcQAAAAEPC4QgYbPHZddyWVZwCiX9fm+6zUahjgok1CWW2gy0EE/CnxtOisxVt7rfhJk6gp7Q==', NULL, 0, N'647e7b58-fea6-4407-ab7b-57aec924dbf7', 0, N'EwikiAdmin')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (20, 1, N'Normal', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Thường', 200)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (21, 1, N'Fire', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Lửa', 194)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (22, 1, N'Water', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Nước', 206)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (23, 1, N'Electric', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Điện', 193)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (24, 1, N'Grass', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Cỏ', 199)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (25, 1, N'Ice', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Băng', 201)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (26, 1, N'Fighting', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Giác Đấu', 195)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (27, 1, N'Poison', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Độc', 202)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (28, 1, N'Ground', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Đất', 198)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (29, 1, N'Flying', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bay', 197)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (30, 1, N'Psychic', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tâm Linh', 203)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (31, 1, N'Bug', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bọ', 189)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (32, 1, N'Rock', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Đá', 204)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (33, 1, N'Ghost', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Ma', 196)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (34, 1, N'Dragon', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Rồng', 191)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (35, 1, N'Dark', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bóng Tối', 190)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (36, 1, N'Steel', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Thép', 205)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (37, 1, N'Fairy', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tiên', 192)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (38, 1, N'Fast', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Nhanh', NULL)
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI], [CatImageId]) VALUES (39, 1, N'Charge', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tập Kích', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1002, 164, 23.1, 0, CAST(N'2016-09-12T01:22:27.6515218' AS DateTime2), NULL, 152, N'Khi bị tác động, rễ trên người Tangela rất dễ đứt ra. Việc này không gây đau đớn cho Tangela và giúp nó tẩu thoát nhanh chóng. Những rễ bị mất sẽ được rễ mới mọc thế chỗ ngay hôm sau.', 0, 1, 1739, N'Tangela', N'#114', N'tangela', N'Pokémon Dây Leo', 130, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 35, N'', 158)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1003, 190, 30.2, 0, CAST(N'2016-09-12T01:22:27.6145289' AS DateTime2), NULL, 198, N'Weezing sống và phát triển nhờ hấp thụ bụi, vi trùng và khí gas có trong các chất thải độc hại và rác. Khi Weezing hít khí độc từ rác, cơ thể Pokémon này căng phồng lên và bên trong cơ thể nó bốc mùi khủng khiếp.', 1062, 1.2, 2250, N'Weezing', N'#110', N'weezing', N'Pokémon Khí Độc', 130, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 9.5, N'', 161)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1004, 156, 22.4, 0, CAST(N'2016-09-12T01:22:27.8110481' AS DateTime2), NULL, 158, N'Porygon có thể chuyển cơ thể về dạng mã và di chuyển tự do trong không gian mạng máy tính. Porygon có chương trình chặn copy nên nó không thể bị nhân bản.', 0, 0.8, 1691, N'Porygon', N'#137', N'porygon', N'Pokémon Ảo', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 36.5, N'', 134)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1005, 232, 40.1, 0, CAST(N'2016-09-12T01:22:27.5464702' AS DateTime2), NULL, 164, N'Exeggutor có nguồn gốc từ vùng nhiệt đới. Những chiếc đầu của nó lớn lên từ từ khi được tiếp xúc với ánh nắng mặt trời.', 1144, 2, 2955, N'Exeggutor', N'#103', N'exeggutor', N'Pokémon Dừa', 190, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 120, N'', 170)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1006, 222, 34.1, 0, CAST(N'2016-09-12T01:22:26.9963517' AS DateTime2), NULL, 152, N'Victreebel có những sợi dây leo dài trên đầu giúp nó hấp dẫn con mồi và nuốt chửng chúng.', 1124, 1.7, 2530, N'Victreebel', N'#071', N'victreebel', N'Pokémon Đớp Ruồi', 160, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 15.5, N'', 106)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1007, 220, 44.9, 0, CAST(N'2016-09-12T01:22:27.9019161' AS DateTime2), NULL, 220, N'Người ta nói DNA của Mew chứa tất cả các mã di truyền của mọi Pokémon, vì vậy nó có thể sử dụng mọi loại kĩ năng. Mew có khả năng tàng hình theo ý thích, vì vậy nó hoàn toàn tránh được sự chú ý khi tiếp cận con người.', 0, 0.4, 3299, N'Mew', N'#151', N'mew', N'Pokémon Giống Loài Mới', 200, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 4, N'', 121)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1008, 202, 33.6, 0, CAST(N'2016-09-12T01:22:26.8008934' AS DateTime2), NULL, 190, N'Vileplume thường thả ra phấn độc gây dịnh ứng mỗi khi bị tiếp cận từ bông hoa xinh đẹp trên đầu nó. Vì vậy, tốt nhất nên tránh xa các bông hoa lớn và đẹp trong rừng.', 1105, 1.2, 2492, N'Vileplume', N'#045', N'vileplume', N'Pokémon Hoa', 150, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 18.6, N'', 78)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1009, 242, 44.1, 0, CAST(N'2016-09-12T01:22:27.8678907' AS DateTime2), NULL, 194, N'Moltres là pokémon chim huyền thoại có khả năng điều khiển lửa. Nếu bị thương, Moltres đầm mình trong magma nóng chảy của núi lửa để tự hồi phục.', 0, 2, 3240, N'Moltres', N'#146', N'moltres', N'Pokémon Bốc Cháy', 180, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 60, N'', 125)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1010, 148, 14.2, 50, CAST(N'2016-09-12T01:22:27.8315828' AS DateTime2), NULL, 142, N'Pokémon được tái tạo lại từ hóa thạch. Có vài con Kabuto vẫn còn sống trong tự nhiên từ thời cổ đại đến nay, chúng hầu như không thay đổi gì kể từ 300 triệu năm trước.', 0, 0.5, 1104, N'Kabuto', N'#140', N'kabuto', N'Pokémon Giáp Xác', 60, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 11.5, N'#141', 130)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1011, 168, 20, 50, CAST(N'2016-09-12T01:22:27.0458001' AS DateTime2), NULL, 138, N'Ponyta khá yếu khi còn nhỏ và dần trở nên mạnh hơn sau nhiều cố gắng để chạy theo mẹ của chúng.', 0, 1, 1516, N'Ponyta', N'#077', N'ponyta', N'Pokémon Ngựa Lửa', 100, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 30, N'#078', 112)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1012, 160, 20.5, 100, CAST(N'2016-09-12T01:22:26.4541520' AS DateTime2), NULL, 140, N'Charmeleon rất hiếu chiến với bộ vuốt sắc nhọn của nó. Ở trạng thái hưng phấn khi đối đầu với đối thủ mạnh, ngọn lửa trên đuôi của Charmeleon chuyển sang màu trắng xanh.', 1069, 1.1, 1557, N'Charmeleon', N'#005', N'charmeleon', N'Pokémon Lửa', 116, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 19, N'#006', 37)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1013, 214, 30.4, 0, CAST(N'2016-09-12T01:22:27.7492247' AS DateTime2), NULL, 158, N'Khi chiến đấu, Magmar phun lửa nóng từ toàn bộ cơ thể để làm kẻ thù khiếp sợ. Các vụ nổ lửa của Magmar sản sinh sóng nhiệt, có thể kích nổ thực vật trong khu vực lân cận.', 0, 1.3, 2265, N'Magmar', N'#126', N'magmar', N'Pokémon Phun Lửa', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 44.5, N'', 145)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1014, 250, 47.7, 0, CAST(N'2016-09-12T01:22:27.8869132' AS DateTime2), NULL, 212, N'Dragonite có thể bay vòng quanh trái đất trong vòng 16 tiếng dù có thân hình to lớn. Dragonite là một pokémon tốt bụng và thường dẫn đường cho các con tàu bị lạc hay thủy thủ bị đắm tàu quay trờ về đất liền an toàn.', 1018, 2.2, 3500, N'Dragonite', N'#149', N'dragonite', N'Pokémon Rồng', 182, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 210, N'', 123)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1015, 164, 25.6, 0, CAST(N'2016-09-12T01:22:26.7803160' AS DateTime2), NULL, 164, N'Golbat thường hút máu của động vật sống và nó thường hoạt động về đêm.', 1103, 1.6, 1921, N'Golbat', N'#042', N'golbat', N'Pokémon Dơi', 150, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 55, N'', 74)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1016, 190, 28.5, 0, CAST(N'2016-09-12T01:22:27.8385839' AS DateTime2), NULL, 190, N'Kabutops bơi rất nhanh giúp nó dễ dàng săn mồi dưới nước. Pokémon này tiến hóa từ sinh vật định cư hoàn toàn dưới nước thành loài sống trên cạn. Bằng chứng thể hiện ở vây và chân của nó.', 1010, 1.3, 2130, N'Kabutops', N'#141', N'kabutops', N'Pokémon Giáp Xác', 120, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 40.5, N'', 131)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1017, 122, 10, 50, CAST(N'2016-09-12T01:22:27.6685267' AS DateTime2), NULL, 100, N'Horsea ăn côn trùng và tảo trong kẽ đá. Nếu dòng hải lưu của biển chảy nhanh hơn, Pokémon này neo mình lại bằng cách cuốn đuôi vào đá hay san hô để tránh bị cuốn trôi.', 0, 0.4, 794, N'Horsea', N'#116', N'horsea', N'Pokémon Rồng', 60, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 8, N'#117', 156)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1018, 170, 23.2, 100, CAST(N'2016-09-12T01:22:27.8798889' AS DateTime2), NULL, 152, N'Dragonair sở hữu một nguồn năng lượng khổng lồ bên trong người nó. Người ta nói rằng pokémon này thay đổi điều kiện thời tiết ở khu vực lân cận nó bằng cách giải phóng năng lượng từ những viên ngọc cầu trên cổ và đuôi.', 1031, 4, 1747, N'Dragonair', N'#148', N'dragonair', N'Pokémon Rồng', 122, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 16.5, N'#149', 122)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1019, 180, 30, 0, CAST(N'2016-09-12T01:22:27.8255961' AS DateTime2), NULL, 202, N'Pokémon thời tiền sử đã tuyệt chủng. Chiếc vỏ xoắn ốc nặng nề của nó khiến nó di chuyển chậm chạp và vụng về. Điều lý giải sự tuyệt chủng của Omastar', 1065, 1, 2233, N'Omastar', N'#139', N'omastar', N'Pokémon Xoắn Ốc', 140, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 35, N'', 133)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1020, 182, 29, 0, CAST(N'2016-09-12T01:22:27.8452541' AS DateTime2), NULL, 162, N'Aerodactyl đã tuyệt chủng từ thời kì khủng long và được tái sinh nhờ DNA lưu lại trong đá hổ phách. Aerodactyl được cho là vua của bầu trời thời cổ đại.', 0, 1.8, 2165, N'Aerodactyl', N'#142', N'aerodactyl', N'Pokémon Hóa Thạch', 160, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 59, N'', 128)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1021, 198, 40.4, 0, CAST(N'2016-09-12T01:22:27.8572344' AS DateTime2), NULL, 242, N'Articuno là pokémon chim huyền thoại có khả năng điều khiển băng. Khi đang bay, động tác đập cánh của nó cũng làm lạnh hơi ẩm trong không khí và tạo ra bão tuyết.', 0, 1.7, 2978, N'Articuno', N'#144', N'articuno', N'Pokémon Đóng Băng', 180, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 55.4, N'', 127)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1022, 184, 28.4, 0, CAST(N'2016-09-12T01:22:27.7552251' AS DateTime2), NULL, 186, N'Pinsir có thể kẹp một đối thủ nặng gấp đôi người nó bằng sừng và nhấc lên dễ dàng. Pokémon này săn mồi bằng cách kẹp chặt con mồi trong cặp sừng và ép mạnh.', 0, 1.5, 2121, N'Pinsir', N'#127', N'pinsir', N'Pokémon Bọ Cánh Cứng', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 55, N'', 144)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1023, 172, 25.2, 0, CAST(N'2016-09-12T01:22:26.8269590' AS DateTime2), NULL, 154, N'Venomoth sống về đêm và thường săn bắt côn trùng nhỏ. Nó thường bị hấp dẫn bởi những đốm ánh sáng vào ban đêm.', 1107, 1.5, 1890, N'Venomoth', N'#049', N'venomoth', N'Pokémon Bướm Đêm', 140, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 12.5, N'', 83)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1024, 110, 11.8, 0, CAST(N'2016-09-12T01:22:27.7830632' AS DateTime2), NULL, 110, N'Ditto có khả năng sao chép mã di truyền của đối thủ để lập tức biến hình thành một bản sao y đúc. Nếu Ditto cố gắng biến hình theo trí nhớ thì sẽ có vài chi tiết không chuẩn so với bản gốc.', 0, 0.3, 919, N'Ditto', N'#132', N'ditto', N'Pokémon Biến Hình', 96, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 4, N'', 139)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1025, 284, 56.8, 0, CAST(N'2016-09-12T01:22:27.8924034' AS DateTime2), NULL, 202, N'Mewtwo được tạo ra bởi các nhà khoa học bằng kĩ thuật gen di truyền. Mặc dù sức mạnh khoa học của con người tạo ra cơ thể cho pokémon này, họ lại thất bại trong việc trao cho nó một trái tim ấm áp. Ngược lại, Mewtwo có trái tim độc ác nhất trong các pokémon.', 0, 2, 4144, N'Mewtwo', N'#150', N'mewtwo', N'Pokémon Di Truyền', 212, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 122, N'', 119)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1026, 176, 27.7, 0, CAST(N'2016-09-12T01:22:27.7311250' AS DateTime2), NULL, 180, N'Tốc độ kinh khủng của Scyther giúp tăng độ hiệu quả của hai lưỡi hái. Chúng có thể chém đứt khúc gỗ dày chỉ với một lần ra đòn và gần như không thể né được cặp lưỡi hái này.', 0, 1.5, 2073, N'Scyther', N'#123', N'scyther', N'Pokémon Bọ Ngựa', 140, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 56, N'', 149)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1027, 106, 11.6, 50, CAST(N'2016-09-12T01:22:27.0042505' AS DateTime2), NULL, 136, N'Cơ thể của Tentacool được cấu thành từ nước và dễ dàng khô lại rong không khí nên chúng chỉ có thể sống dưới biển.', 0, 0.9, 905, N'Tentacool', N'#072', N'tentacool', N'Pokémon Sứa', 80, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 45.5, N'#073', 105)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1028, 172, 27.3, 0, CAST(N'2016-09-12T01:22:27.6985390' AS DateTime2), NULL, 160, N'Vào mùa thu, Seaking trống có thể bị bắt gặp lúc đang biểu diễn điệu nhảy tán tỉnh ở đáy sông để ve vãn cá mái. Vào mùa này, màu sắc cơ thể của Seaking trở nên rực rỡ hơn bao giờ hết.', 1148, 1.3, 2043, N'Seaking', N'#119', N'seaking', N'Pokémon Cá Vàng', 160, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 39, N'', 152)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1029, 182, 24.4, 0, CAST(N'2016-09-12T01:22:27.2042910' AS DateTime2), NULL, 150, N'Khi mà ba đầu của Dodrio nhìn theo ba hướng khác nhau thì tốt nhất không nên lại gần vì chúng đang rất cảnh giác xung quanh và có thể tấn công bạn.', 1133, 1.8, 1836, N'Dodrio', N'#085', N'dodrio', N'Pokémon Tam Điểu', 120, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 85.2, N'', 178)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1030, 180, 42.2, 0, CAST(N'2016-09-12T01:22:27.8512335' AS DateTime2), NULL, 180, N'Snorlax rất lười, chỉ ăn và ngủ. Snorlax rất hiền lành dễ bảo, có trẻ em còn dùng bụng khổng lồ của nó làm sân chơi.', 0, 2.1, 3112, N'Snorlax', N'#143', N'snorlax', N'Pokémon Ham Ngủ', 320, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 460, N'', 129)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1031, 128, 12.6, 25, CAST(N'2016-09-12T01:22:27.8738924' AS DateTime2), NULL, 110, N'Dratini từng được cho là chỉ tồn tại trong thần thoại. Nó phải liên tục lột da vì nguồn năng lượng trong cơ thể đang tích tụ dần, đến mức độ không thể kiểm soát.', 0, 1.8, 983, N'Dratini', N'#147', N'dratini', N'Pokémon Rồng', 82, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 3.3, N'#148', 124)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1032, 114, 13.9, 25, CAST(N'2016-09-12T01:22:27.7882990' AS DateTime2), NULL, 128, N'Eevee dễ đột biến để điều chỉnh cơ thể sao cho thích hợp với môi trường sống khắc nghiệt. Nó tiến hóa nhờ phóng xạ phát ra từ các loại đá tiến hóa hoặc nhờ kích thích từ môi trường.', 0, 0.3, 1077, N'Eevee', N'#133', N'eevee', N'Pokémon Tiến Hóa', 110, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 6.5, N'#134,#135,#136', 138)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1033, 146, 19, 0, CAST(N'2016-09-12T01:22:26.6137685' AS DateTime2), NULL, 150, N'Với cặp răng nanh lớn, Raticate có khả năng gặm nhấm gỗ, đá và thậm chí là bức tường nhà.', 1083, 0.7, 1444, N'Raticate', N'#020', N'raticate', N'Pokémon Chuột', 110, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 18.5, N'', 53)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1034, 180, 35.1, 0, CAST(N'2016-09-12T01:22:27.2852118' AS DateTime2), NULL, 188, N'Toàn bộ cơ thể của Muk được bao quanh bởi một lớp bùn quánh độc hại. Chỉ một giọt dịch cơ thể của nó cũng đủ làm ô nhiễm một hồ nước.', 1050, 1.2, 2602, N'Muk', N'#089', N'muk', N'Pokémon Bùn', 210, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 30, N'', 181)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1035, 204, 27.8, 0, CAST(N'2016-09-12T01:22:27.3723742' AS DateTime2), NULL, 156, N'Vào buổi tối, Gengar có sở thích bắt chước cử động của bóng người và cười đắc chí khi thấy nạn nhân sợ hãi.', 1138, 1.5, 2078, N'Gengar', N'#094', N'gengar', N'Pokémon Bóng', 120, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 40.5, N'', 188)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1036, 232, 42.3, 0, CAST(N'2016-09-12T01:22:27.8628910' AS DateTime2), NULL, 194, N'Zapdos là pokémon chim huyền thoại có khả năng điều khiển điện. Pokémon này thường sống trong những đám mây tích và được tiếp thêm sức mạnh nếu bị sấm sét đánh trúng.', 0, 1.6, 3114, N'Zapdos', N'#145', N'zapdos', N'Pokémon Điện', 180, CAST(N'2016-09-25T18:28:45.9086801' AS DateTime2), NULL, 52.6, N'', 126)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1037, 150, 21.8, 0, CAST(N'2016-09-12T01:22:27.5101097' AS DateTime2), NULL, 174, N'Pokémon này ăn điện trong bầu khí quyển. Vào những ngày có sấm sét, bạn có thể nhìn thấy Electrode phát nổ khắp mọi nơi vì ăn quá nhiều điện.', 1143, 1.2, 1646, N'Electrode', N'#101', N'electrode', N'Pokémon Bóng', 120, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 66.6, N'', 172)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1038, 142, 27.3, 0, CAST(N'2016-09-12T01:22:27.6605184' AS DateTime2), NULL, 178, N'Nếu bạn có bắt gặp một con Kangaskhan non đang chơi một mình, đừng bao giờ làm phiền hay có ý định bắt nó, vì chắc chắn Kangaskhan mẹ đang ở gần đấy, và nó sẽ nổi khùng với bạn.', 0, 2.2, 2043, N'Kangaskhan', N'#115', N'kangaskhan', N'Pokémon Phụ Mẫu', 210, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 80, N'', 157)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1039, 198, 28.3, 0, CAST(N'2016-09-12T01:22:27.7432251' AS DateTime2), NULL, 160, N'Khi có bão sấm, từng nhóm Pokémon này tranh nhau leo lên những nơi dễ bị sét đánh nhất để ăn điện. Một vài thị trấn dùng Electabuzz thay cột thu lôi.', 0, 1.1, 2119, N'Electabuzz', N'#125', N'electabuzz', N'Pokémon Điện', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 30, N'', 147)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1040, 166, 30.1, 0, CAST(N'2016-09-12T01:22:27.6345320' AS DateTime2), NULL, 160, N'Bằng cách xoay chiếc sừng giống chiếc mũi khoan, nó có thể cắt cả kim cương thô. Nó thường dùng chiếc sừng để khoan đá mở đường đi. Một cú quất đuôi của Rhydon có thể đánh sập một tòa nhà cao tầng.', 1042, 1.9, 2243, N'Rhydon', N'#112', N'rhydon', N'Pokémon Mũi Khoan', 210, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 120, N'', 160)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1041, 178, 24.2, 0, CAST(N'2016-09-12T01:22:27.4689223' AS DateTime2), NULL, 168, N'Kingler vẫy chiếc càng to để giao tiếp với nhau, nhưng vì nó quá nặng nên Pokémon này nhanh chóng bị mệt.', 1142, 1.3, 1823, N'Kingler', N'#099', N'kingler', N'Pokémon Càng', 110, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 60, N'', 174)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1042, 110, 15.4, 50, CAST(N'2016-09-12T01:22:27.6235314' AS DateTime2), NULL, 116, N'Rhyhorn chỉ có thể nhằm một hướng mà lao đi. Nếu có chướng ngại trên đường, Rhyhorn cũng không thèm để ý mà cứ xông thẳng vào, thậm chí đó có là một khối thép.', 0, 1, 1182, N'Rhyhorn', N'#111', N'rhyhorn', N'Pokémon Gai Góc', 160, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 115, N'#112', 162)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1043, 148, 24.5, 0, CAST(N'2016-09-12T01:22:27.7610326' AS DateTime2), NULL, 184, N'Tauros chiến đấu với nhau bằng cách khóa sừng để chứng tỏ sức mạnh. Nếu không có đối thủ để chiến đấu, Tauros sẽ húc đổ cây cối để bình tâm lại.', 0, 1.4, 1844, N'Tauros', N'#128', N'tauros', N'Pokémon Bò Hoang', 150, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 88.4, N'', 143)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1044, 154, 19.6, 0, CAST(N'2016-09-12T01:22:27.7261168' AS DateTime2), NULL, 196, N'Mr.Mime luôn ra sức luyện tập kịch câm. Nó làm kẻ thù tin có gì đó tồn tại xung quanh mình. Một khi kẻ địch đã tin thì vật đó sẽ tồn tại giống như thật vậy.', 0, 1.3, 1494, N'Mr. Mime', N'#122', N'mr. mime', N'Pokémon Kết Giới', 80, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 54.5, N'', 148)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1045, 98, 11.6, 50, CAST(N'2016-09-12T01:22:26.7584252' AS DateTime2), NULL, 54, N'Bằng vào khả năng điều chỉnh giọng của mình, giọng hát của Jigglypuff có khả năng ru ngủ đối thủ.', 0, 0.5, 917, N'Jigglypuff', N'#039', N'jigglypuff', N'Pokémon Bóng Bay', 230, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 5.5, N'#040', 73)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1046, 40, 8, 0, CAST(N'2016-09-12T01:22:27.6435196' AS DateTime2), NULL, 60, N'Chansey đẻ ra những quả trứng đầy dinh dưỡng mỗi ngày. Trứng hấp dẫn đến nỗi dễ dàng làm người chán ăn cũng phải ghiền.', 0, 1.1, 675, N'Chansey', N'#113', N'chansey', N'Pokémon Trứng', 500, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 34.6, N'', 159)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1047, 156, 21.6, 0, CAST(N'2016-09-12T01:22:26.8561738' AS DateTime2), NULL, 146, N'Bộ ria của Persian giúp nó trông mạnh mẽ hơn và giúp nó cảm nhận không khí xung quanh. Nhưng bộ ria cũng là điểm yếu của nó khi bị chạm vào.', 1110, 1, 1631, N'Persian', N'#053', N'persian', N'Pokémon Mèo', 130, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 32, N'', 86)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1048, 136, 10.1, 25, CAST(N'2016-09-12T01:22:27.3417366' AS DateTime2), NULL, 82, N'Phần lớn cơ thể của Gastly là các loại khí gas. Nhưng vì vậy mà nó cũng có thể bị gió cuốn đi.', 0, 1.3, 804, N'Gastly', N'#092', N'gastly', N'Pokémon Khí Độc', 60, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 0.1, N'#093', 185)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1049, 162, 23.2, 0, CAST(N'2016-09-12T01:22:26.8137252' AS DateTime2), NULL, 170, N'Parasect thường tàn phá các cây lớn bằng việc sống và hút chất dinh dưỡng từ các gốc cây.', 1106, 1, 1747, N'Parasect', N'#047', N'parasect', N'Pokémon Nấm', 120, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 29.5, N'', 80)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1050, 124, 16.8, 50, CAST(N'2016-09-12T01:22:27.2647404' AS DateTime2), NULL, 110, N'Cơ thể nhớt nhợt của Grimer có thể lách qua bất cứ khe hở nào, cho dù nó có nhỏ đến đâu. Nó thích uống nước thải từ các cống rãnh.', 0, 0.9, 1284, N'Grimer', N'#088', N'grimer', N'Pokémon Bùn', 160, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 30, N'#089', 182)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1051, 194, 29.2, 0, CAST(N'2016-09-12T01:22:27.7181342' AS DateTime2), NULL, 192, N'Phần lõi của Starmie phát sáng bảy sắc. Một số người xem phần lõi này là đá quý. Vì có tập tính phát sáng nên Pokémon này có biệt danh “Viên Đá Quý Của Biển”.', 1056, 1.1, 2182, N'Starmie', N'#121', N'starmie', N'Pokémon Bí Ẩn', 120, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 80, N'', 151)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1052, 198, 35, 0, CAST(N'2016-09-12T01:22:26.9720789' AS DateTime2), NULL, 180, N'Machamp có đủ sức mạnh để quăng bất cứ thứ gì. Nhưng do có bốn tay mà không suy nghĩ trước khi làm khiến tay của nó thường vướng với nhau.', 1122, 1.6, 2594, N'Machamp', N'#068', N'machamp', N'Pokémon Sức Mạnh', 180, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 130, N'', 102)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1053, 138, 19.9, 0, CAST(N'2016-09-12T01:22:27.5849852' AS DateTime2), NULL, 204, N'Người ta nói rằng Hitmonchan sở hữu tinh thần của một võ sĩ đám bốc chuyên nghiệp với mục tiêu vô địch thế giới và không bao giờ bỏ cuộc dù gặp khó khăn.', 0, 1.4, 1516, N'Hitmonchan', N'#107', N'hitmonchan', N'Pokémon Nắm Đấm', 100, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 50.2, N'', 166)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1054, 148, 19.6, 0, CAST(N'2016-09-12T01:22:27.5744747' AS DateTime2), NULL, 172, N'Khi chiến đấu Hitmonlee tung cước với sức công phá lớn liên tục về phía đối thủ. Nó thậm chí còn kéo dài chân thêm để tấn công nếu đối thủ bỏ chạy.', 0, 1.5, 1492, N'Hitmonlee', N'#106', N'hitmonlee', N'Pokémon Cước Phá', 100, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 49.8, N'', 165)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1055, 230, 40.5, 0, CAST(N'2016-09-12T01:22:26.9010681' AS DateTime2), NULL, 180, N'Arcanine được biết đến với khả năng chạy kì nhanh dựa vào nguồn năng lượng lửa bên trong cơ thể nó.', 1115, 1.9, 2983, N'Arcanine', N'#059', N'arcanine', N'Pokémon Huyền Thoại', 180, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 155, N'', 93)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1056, 130, 12, 50, CAST(N'2016-09-12T01:22:27.7071336' AS DateTime2), NULL, 128, N'Vào ban đêm, phần lõi trung tâm của Staryu phát ra ánh đỏ kì lạ. Nếu bạn đến biển vào khoảng cuối mùa hè, bạn sẽ thấy phần lõi phát sáng của Pokémon này trông giống như các ngôi sao.', 0, 0.8, 937, N'Staryu', N'#120', N'staryu', N'Pokémon Hình Sao', 60, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 34.5, N'#121', 150)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1057, 132, 17.6, 100, CAST(N'2016-09-12T01:22:26.9161061' AS DateTime2), NULL, 132, N'Bề mặt da của Poliwhirl khá trơn và nhầy giúp nó có thể trượt và tránh đòn dễ dàng trong chiến đấu.', 1116, 1, 1340, N'Poliwhirl', N'#061', N'poliwhirl', N'Pokémon Nòng Nọc', 130, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 20, N'#062', 95)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1058, 172, 22.8, 0, CAST(N'2016-09-12T01:22:27.7372251' AS DateTime2), NULL, 134, N'Pokémon này có thể khiến mọi người nhảy đồng bộ với nó vì cảm xúc Jynx thể hiện khi nhảy có sức mời gọi rất cao, người nhảy gần như không ý thức được việc họ đang làm.', 0, 1.4, 1716, N'Jynx', N'#124', N'jynx', N'Pokémon Nhân Dạng', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 40.6, N'', 146)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1059, 138, 16.5, 0, CAST(N'2016-09-12T01:22:27.1609893' AS DateTime2), NULL, 132, N'Farfetch''d thường cầm một cây hành bên người để ăn cũng như làm vũ khí.', 0, 0.8, 1263, N'Farfetch''d', N'#083', N'farfetch''d', N'PokémonVịt', 104, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 15, N'', 118)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1060, 186, 25, 0, CAST(N'2016-09-12T01:22:27.1449629' AS DateTime2), NULL, 180, N'Magneton thường phóng ra các luồng từ tính mạng làm nhiễu sóng radio và gây hại tới các thiết bị điện tử.', 1132, 1, 1879, N'Magneton', N'#082', N'magneton', N'Pokémon Nam Châm', 100, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 60, N'', 115)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1061, 186, 40.4, 0, CAST(N'2016-09-12T01:22:27.7790258' AS DateTime2), NULL, 190, N'Lapras bị săn bắt quá mức tới độ gần tuyệt chủng. Nó cực kì thông minh, có khả năng đọc ý nghĩ và hiểu được ngôn ngữ của con người.', 0, 2.5, 2980, N'Lapras', N'#131', N'lapras', N'Pokémon Vận Chuyển', 260, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 220, N'', 141)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1062, 136, 14.9, 50, CAST(N'2016-09-12T01:22:27.6045256' AS DateTime2), NULL, 142, N'Nếu Koffing cảm thấy bị khích động, nó sẽ gia tăng hàm lượng độc tố của khí gas rồi xả ra từ khắp cơ thể. Pokémon này có thể bơm phồng cơ thể mình và phát nổ.', 0, 0.6, 1151, N'Koffing', N'#109', N'koffing', N'Pokémon Khí Độc', 80, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 1, N'#110', 163)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1063, 140, 21.9, 0, CAST(N'2016-09-12T01:22:27.5654846' AS DateTime2), NULL, 202, N'Cubone đã vượt qua nỗi đau mất mẹ và trở nên mạnh mẽ hơn tiến hóa thành Marowak. Tinh thần đã được tôi luyện của Pokémon này không dễ bị phá vỡ.', 1145, 1, 1656, N'Marowak', N'#105', N'marowak', N'Pokémon Giữ Xương', 120, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 45, N'', 168)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1064, 42, 3, 400, CAST(N'2016-09-12T01:22:27.7650154' AS DateTime2), NULL, 84, N'Magikarp là một Pokemon yếu ớt đến đáng thương hại. Các nhà khoa học vẫn chưa biết vì sao loài Pokemon yếu ớt này lại có thể tồn tại, sống sót lâu như thế.', 0, 0.9, 262, N'Magikarp', N'#129', N'magikarp', N'Pokémon Cá', 40, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 10, N'#130', 142)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1065, 132, 14.4, 50, CAST(N'2016-09-12T01:22:27.8186026' AS DateTime2), NULL, 160, N'Pokémon cổ đại đã tuyệt chủng và được phục sinh từ hóa thạch bằng công nghệ khoa học hiện đại. Nếu bị kẻ thù tấn công, Omanyte rút mình vào lớp vỏ cứng', 0, 0.4, 1119, N'Omanyte', N'#138', N'omanyte', N'Pokémon Xoắn Ốc', 70, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 7.5, N'#139', 132)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1066, 126, 13.8, 25, CAST(N'2016-09-12T01:22:26.4333697' AS DateTime2), NULL, 126, N'Trên lưng của Bulbasaur có một hạt giống có thể nở nhờ ánh sáng nên nó thường ngủ trưa dưới ánh mặt trời. ', 0, 0.7, 1071, N'Bulbasaur', N'#001', N'bulbasaur', N'Pokémon Hạt Giống', 90, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 6.9, N'#002', 33)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1067, 156, 21.6, 100, CAST(N'2016-09-12T01:22:26.4401386' AS DateTime2), NULL, 158, N'Sau khi tiến hoá từ Bulbasaur, hạt giống trên lưng trở thành nụ hoa. Vì vậy nó dành nhiều hơn thời gian dưới ánh mặt trời để tiến hoá.', 1066, 1, 1632, N'Ivysaur', N'#002', N'ivysaur', N'Pokémon Hạt Giống', 120, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 13, N'#003', 34)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1068, 198, 34.8, 0, CAST(N'2016-09-12T01:22:26.4451469' AS DateTime2), NULL, 200, N'Dạng tiến hoá cao nhất khi mà hạt giống trên lưng đã nở thành hoa.Hương thơm từ hoa có thể làm dịu cảm xúc khi hít phải.', 1067, 2, 2580, N'Venusaur', N'#003', N'venusaur', N'Pokémon Hạt Giống', 160, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 100, N'', 35)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1069, 128, 12.2, 25, CAST(N'2016-09-12T01:22:26.4491450' AS DateTime2), NULL, 108, N'Ngọn lửa cháy trên đuôi biểu hiện cho cảm xúc của Charmander. Ngọn lửa nhấp nháy những lúc vui buồn hoặc cháy dữ dội khi chiến đấu.', 0, 0.6, 955, N'Charmander', N'#004', N'charmander', N'Pokémon Thằn Lằn', 78, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 8.5, N'#005', 36)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1070, 212, 35.1, 0, CAST(N'2016-09-12T01:22:26.4591470' AS DateTime2), NULL, 182, N'Charizard có khả năng bay lượn và luôn tìm những đối thủ mạnh mẽ hơn nó để chiến đấu. Nó có khả năng thổi ra những ngọn lửa với nhiệt độ cực cao và làm tan chảy tất cả.', 1012, 1.7, 2602, N'Charizard', N'#006', N'charizard', N'Pokémon Lửa', 156, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 90.5, N'', 38)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1071, 112, 13, 25, CAST(N'2016-09-12T01:22:26.4651440' AS DateTime2), NULL, 142, N'Mai của Squirtle ngoài khả năng phòng thủ còn giúp nó bơi lội cực nhanh trong nước bằng vào hình dáng tròn trịa của mình.', 0, 0.5, 1008, N'Squirtle', N'#007', N'squirtle', N'Pokémon Rùa Con', 88, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 9, N'#008', 39)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1072, 144, 20.9, 100, CAST(N'2016-09-12T01:22:26.4711444' AS DateTime2), NULL, 176, N'Sau khi tiến hoá, đuôi của Wartortle lớn và dày hơn, đồng thời màu sắc của đuôi cũng đại diện cho tuổi thọ của nó. Bên cạnh đó, những vết sẹo trên mai cũng thể hiện cho chiến tích của nó qua những trận đấu.', 1071, 1, 1582, N'Wartortle', N'#008', N'wartortle', N'Pokémon Rùa', 118, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 22.5, N'#009', 40)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1073, 186, 34.3, 0, CAST(N'2016-09-12T01:22:26.4781601' AS DateTime2), NULL, 222, N'Blastoise có hai cây súng nước trên mai của nó với khả năng bắn ra nhưng viên đạn nước có độ chính xác cực cao và xa.', 1072, 1.6, 2542, N'Blastoise', N'#009', N'blastoise', N'Pokémon Giáp Xác', 158, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 85.5, N'', 41)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1074, 62, 5.3, 12, CAST(N'2016-09-12T01:22:26.4836837' AS DateTime2), NULL, 66, N'Caterpie rất tham ăn, nó có thể ăn lượng lá cây lớn hơn nó nhiều lần. Sừng của nó có khả năng toả ra mùi cực mạnh để xua đuổi pokémon khác.', 0, 0.3, 443, N'Caterpie', N'#010', N'caterpie', N'Pokémon Sâu', 90, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 2.9, N'#011', 42)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1075, 56, 5.8, 50, CAST(N'2016-09-12T01:22:26.4895058' AS DateTime2), NULL, 86, N'Metapod có lớp vỏ cứng như sắt. Nó rất ít di chuyển mà chờ đợi tới lúc tiến hoá sau này.', 1074, 0.7, 477, N'Metapod', N'#011', N'metapod', N'Pokémon Nhộng', 100, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 9.9, N'#012', 43)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1076, 144, 19.1, 0, CAST(N'2016-09-12T01:22:26.5002279' AS DateTime2), NULL, 144, N'Butterfree rất giỏi trong việc tìm kiếm và thu thập mật hoa từ khoảng cách xa.', 1075, 1.1, 1454, N'Butterfree', N'#012', N'butterfree', N'Pokémon Bướm', 120, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 32, N'', 44)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1077, 68, 5.4, 12, CAST(N'2016-09-12T01:22:26.5092189' AS DateTime2), NULL, 64, N'Weedle có khứa giác rất nhạy. Bằng cái mũi to tròn của mình nó có thể tìm kiếm những loại lá yêu thích.', 0, 0.3, 449, N'Weedle', N'#013', N'weedle', N'Pokémon Sâu Lông', 80, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 3.2, N'#014', 45)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1078, 62, 5.9, 50, CAST(N'2016-09-12T01:22:26.5182266' AS DateTime2), NULL, 82, N'Kakuna luôn treo mình trên cây để chuẩn bị tiến hoá. Quá trình tiến hoá càng lâu, vỏ của nó sẽ càng nóng.', 1077, 0.6, 485, N'Kakuna', N'#014', N'kakuna', N'Pokémon Nhộng', 90, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 10, N'#015', 46)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1079, 144, 18.9, 0, CAST(N'2016-09-12T01:22:26.5308087' AS DateTime2), NULL, 130, N'Beedrill trở nên cực kì nguy hiểm khi có người tiếp cận tổ của nó. Đáng sợ nhất là nó luôn tấn công theo bầy.', 1078, 1, 1439, N'Beedrill', N'#015', N'beedrill', N'Pokémon Ong độc', 130, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 29.5, N'', 47)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1080, 94, 8.5, 12, CAST(N'2016-09-12T01:22:26.5418096' AS DateTime2), NULL, 90, N'Pidgey có khả năng xác định phương hướng rất tốt giúp nó di chuyển khoảng cách xa mà không bị lac.', 0, 0.3, 679, N'Pidgey', N'#016', N'pidgey', N'Pokémon Chim Con', 80, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 1.8, N'#017', 50)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1081, 126, 16, 50, CAST(N'2016-09-12T01:22:26.5737208' AS DateTime2), NULL, 122, N'Pidgeotto luôn chiếm một khu vực lãnh thổ rất rộng và luôn tấn công những kẻ xâm nhập bằng bộ móng sắc nhọn của nó.', 1080, 1.1, 1223, N'Pidgeotto', N'#017', N'pidgeotto', N'Pokémon Chim', 126, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 30, N'#018', 49)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1082, 170, 28, 0, CAST(N'2016-09-12T01:22:26.5892331' AS DateTime2), NULL, 166, N'Pidgeot có một bộ lông rực rỡ với nhưng chiếc lông lộng lẫy. Đặc biệt là những chiếc lông trên đầu của nó khiến rất nhiều huấn luyện viên chọn Pidgeot trở thành pokémon của họ.', 1081, 1.5, 2091, N'Pidgeot', N'#018', N'pidgeot', N'Pokémon Chim', 166, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 39.5, N'', 52)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1083, 92, 7.2, 25, CAST(N'2016-09-12T01:22:26.6022761' AS DateTime2), NULL, 86, N'Rattata cực kì cẩn thận và đề phòng xung quanh bằng đôi tai lớn của nó. Nó khá dễ tính và có thể sống ở bất cứ đâu.', 0, 0.3, 581, N'Rattata', N'#019', N'rattata', N'Pokémon Chuột', 60, CAST(N'2016-09-25T18:28:45.9026810' AS DateTime2), NULL, 3.5, N'#020', 51)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1084, 102, 8.6, 50, CAST(N'2016-09-12T01:22:26.6207748' AS DateTime2), NULL, 78, N'Spearow có tiếng kêu rất lớn nhằm cảnh báo nguy hiểm cho đồng loại của nó.', 0, 0.3, 686, N'Spearow', N'#021', N'spearow', N'Pokémon Chim Con', 80, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 2, N'#022', 54)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1085, 168, 23.2, 0, CAST(N'2016-09-12T01:22:26.6287805' AS DateTime2), NULL, 146, N'Fearow có cổ và đặc biệt là mỏ của nó khá dài giúp nó dễ dàng di chuyển và bắt mồi.', 1084, 1.2, 1746, N'Fearow', N'#022', N'fearow', N'Pokémon Chim', 130, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 38, N'', 56)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1086, 112, 10.5, 50, CAST(N'2016-09-12T01:22:26.6357735' AS DateTime2), NULL, 112, N'Ekans thường cuộn tròn lại nằm nghỉ đồng thời giúp nó phản ứng nhanh khi có nguy hiểm xung quanh.', 0, 2, 824, N'Ekans', N'#023', N'ekans', N'Pokémon Rắn', 70, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 6.9, N'#024', 55)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1087, 166, 23.5, 0, CAST(N'2016-09-12T01:22:26.6440165' AS DateTime2), NULL, 166, N'Bằng khả năng quấn chặt cực mạnh của mình,đối thủ của  Arbok gần như không thể thoát khỏi khi bị nó quấn phải.', 1086, 3.5, 1767, N'Arbok', N'#024', N'arbok', N'Pokémon Rắn Hổ Mang', 120, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 65, N'', 58)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1088, 124, 11.3, 50, CAST(N'2016-09-12T01:22:26.6570035' AS DateTime2), NULL, 108, N'Pikachu thường thể hiện sự hứng thú của nó bằng các tia điện. Nếu bạn nhìn thì quả berry bị điện cháy đen thì chắc chắn là do Pikachu làm.', 0, 0.4, 887, N'Pikachu', N'#025', N'pikachu', N'Pokémon Chuột', 70, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 6, N'#026', 57)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1089, 200, 27.1, 0, CAST(N'2016-09-12T01:22:26.6650173' AS DateTime2), NULL, 154, N'Do có khả năng phóng điện mạnh nên mỗi khi dòng điện tích luỹ quá lớn, Raichu thường phóng thích dòng điện xuống đất qua cái đuôi bén nhọn của nó.', 1088, 0.8, 2028, N'Raichu', N'#026', N'raichu', N'Pokémon Chuột', 120, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 30, N'', 59)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1090, 90, 10.1, 50, CAST(N'2016-09-12T01:22:26.6720172' AS DateTime2), NULL, 114, N'Cơ thể của Sandshrew hấp thu nước tốt giúp nó có thể sinh sống trong khu vực sa mạc. Nó thường cuộn tròn cơ thể của mình khi phòng thủ.', 0, 0.6, 798, N'Sandshrew', N'#027', N'sandshrew', N'Pokémon Chuột', 100, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 12, N'#028', 60)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1091, 150, 24.1, 0, CAST(N'2016-09-12T01:22:26.6800036' AS DateTime2), NULL, 172, N'Sandslash có những cái gai bén nhọn giúp nó phòng thủ cũng như tấn công. Bộ gai của nó thường được thay thế mỗi năm một lần.', 1090, 1, 1810, N'Sandslash', N'#028', N'sandslash', N'Pokémon Chuột', 150, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 29.5, N'', 61)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1092, 100, 11.2, 25, CAST(N'2016-09-12T01:22:26.6864236' AS DateTime2), NULL, 104, N'Nidoran♀ có những gai cực độc trên cơ thể để bảo vệ nó. Độc cũng có thể truyền từ sừng của nó khi tấn công.', 0, 0.4, 876, N'Nidoran♀', N'#029', N'nidoran♀', N'Pokémon Gai Độc', 110, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 7, N'#030', 62)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1093, 132, 18.4, 100, CAST(N'2016-09-12T01:22:26.6939238' AS DateTime2), NULL, 136, N'Nidorina có khả năng thu lại những gai độc của mình khi ở cùng với đồng loại của mình. Nó thường khá lo lắng khi bị tách khỏi bầy của mình.', 1092, 0.8, 1404, N'Nidorina', N'#030', N'nidorina', N'Pokémon Gai Độc', 140, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 20, N'#031', 63)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1094, 184, 33.5, 0, CAST(N'2016-09-12T01:22:26.7044334' AS DateTime2), NULL, 190, N'Nidoqueen có cơ thể to lớn với bộ giáp cực kì cứng giúp nó dễ dàng húc bay đối thủ. Nidoqueen trở nên rất đáng sợ khi có kẻ đụng vào con của nó.', 1093, 1.3, 2485, N'Nidoqueen', N'#031', N'nidoqueen', N'Pokémon Mũi Khoan', 180, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 60, N'', 64)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1095, 110, 10.7, 25, CAST(N'2016-09-12T01:22:26.7114457' AS DateTime2), NULL, 94, N'Nidoran♂ có đôi tai cực lớn giúp nó nhận biết xung quanh và di chuyển một cách an toàn.', 0, 0.5, 843, N'Nidoran♂', N'#032', N'nidoran♂', N'Pokémon Gai Độc', 92, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 9, N'#033', 65)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1096, 142, 18, 100, CAST(N'2016-09-12T01:22:26.7194342' AS DateTime2), NULL, 128, N'Nidorino có sừng cứng hơn cả kim cương. Khi cảm thấy nguy hiểm, gai lưng của nó thường dựng lên để chiến đấu.', 1095, 0.9, 1372, N'Nidorino', N'#033', N'nidorino', N'Pokémon Gai Độc', 122, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 19.5, N'#034', 66)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1097, 204, 33.3, 0, CAST(N'2016-09-12T01:22:26.7284449' AS DateTime2), NULL, 170, N'Với cái đuôi to lớn và mạnh mẽ có thể phá nát kim loại, rất ít pokémon có thể ngăn cản Nidoking khi nó nổi giận.', 1096, 1.4, 2475, N'Nidoking', N'#034', N'nidoking', N'Pokémon Mũi Khoan', 162, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 62, N'', 68)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1098, 116, 15.6, 50, CAST(N'2016-09-12T01:22:26.7344299' AS DateTime2), NULL, 124, N'Clefairy thường xuất hiện vào đêm trăng tròn để chơi cùng đồng bọn và trở về tổ khi bình minh đến.', 0, 0.6, 1200, N'Clefairy', N'#035', N'clefairy', N'Pokémon Tiên', 140, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 7.5, N'#036', 67)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1099, 178, 32.3, 0, CAST(N'2016-09-12T01:22:26.7414255' AS DateTime2), NULL, 178, N'Clefable có thể nhảy nhẹ nhàng bằng cặp cánh nhỏ của nó, kể cả trên nước. Nó thường đi dạo trên mặt hồ vào đêm trăng.', 1098, 1.3, 2397, N'Clefable', N'#036', N'clefable', N'Pokémon Tiên', 190, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 40, N'', 69)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1100, 106, 10.6, 50, CAST(N'2016-09-12T01:22:26.7464261' AS DateTime2), NULL, 118, N'Vulpix có một đuôi khi sinh ra và dần dần mọc tới sáu đuôi khi lớn. Đuôi của nó rất cong và đẹp.', 0, 0.6, 831, N'Vulpix', N'#037', N'vulpix', N'Pokémon Cáo', 76, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 9.9, N'#038', 70)
GO
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1101, 176, 29.3, 0, CAST(N'2016-09-12T01:22:26.7524261' AS DateTime2), NULL, 194, N'Đôi mắt của Ninetales có thể phóng ra ánh sáng với khả năng điều khiển đối thủ. Ninetales được cho là có khả năng sống tới một ngàn năm.', 1100, 1.1, 2188, N'Ninetales', N'#038', N'ninetales', N'Pokémon Cáo', 146, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 19.9, N'', 71)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1102, 168, 29.1, 0, CAST(N'2016-09-12T01:22:26.7663334' AS DateTime2), NULL, 108, N'Wigglytuff có đôi mắt đẹp to tròn với một lớp nước mắt bảo vệ mắt nó khỏi bụi bẩn.', 1045, 1, 2177, N'Wigglytuff', N'#040', N'wigglytuff', N'Pokémon Bóng Bay', 280, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 12, N'', 72)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1103, 88, 8, 50, CAST(N'2016-09-12T01:22:26.7733170' AS DateTime2), NULL, 90, N'Zubat có thể bị thiêu cháy dưới ánh sáng mặt trời nên nó thường trốn trong bóng tối vào ban ngày.', 0, 0.8, 642, N'Zubat', N'#041', N'zubat', N'Pokémon Dơi', 80, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 7.5, N'#042', 75)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1104, 134, 14.9, 25, CAST(N'2016-09-12T01:22:26.7863374' AS DateTime2), NULL, 130, N'Oddish thường chôn mình dưới đất để hấp thu chất dinh dưỡng. Càng nhiều chất dinh dưỡng được hấp thu, lá của nó càng sáng bóng.', 0, 0.5, 1148, N'Oddish', N'#043', N'oddish', N'Pokémon Cỏ', 90, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 5.4, N'#044', 77)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1105, 162, 22.4, 100, CAST(N'2016-09-12T01:22:26.7933291' AS DateTime2), NULL, 158, N'Khi cảm thấy nguy hiểm, Gloom phóng thích mùi hôi từ nhuỵ của nó để đe doạ kẻ thù.', 1104, 0.8, 1689, N'Gloom', N'#044', N'gloom', N'Pokémon Cỏ', 120, CAST(N'2016-09-25T18:28:45.9036804' AS DateTime2), NULL, 8.6, N'#045', 76)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1106, 122, 11.7, 50, CAST(N'2016-09-12T01:22:26.8067254' AS DateTime2), NULL, 120, N'Paras có hai cây nấm sống kí sinh trên lưng nó. Chúng lớn lên bằng chất dinh dưỡng Paras hút từ cây lớn và là vị thuốc có giá trị giúp kéo dài tuổi thọ.', 0, 0.3, 916, N'Paras', N'#046', N'paras', N'Pokémon Nấm', 70, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 5.4, N'#047', 79)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1107, 108, 13.3, 50, CAST(N'2016-09-12T01:22:26.8189516' AS DateTime2), NULL, 118, N'Venonat có một bộ lông xù, mỏng và cứng giúp bảo vệ cơ thể của nó. Đôi mắt lớn giúp nó phát hiện con mồi dù rất nhỏ.', 0, 1, 1029, N'Venonat', N'#048', N'venonat', N'Pokémon Côn Trùng', 120, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 30, N'#049', 81)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1108, 108, 5.3, 50, CAST(N'2016-09-12T01:22:26.8339691' AS DateTime2), NULL, 86, N'Diglett thường chôn mình dưới đất và sống trong các trang trại. Nhờ có nó mà đất rất màu mỡ và thích hợp để trồng cây.', 0, 0.2, 456, N'Diglett', N'#050', N'diglett', N'Pokémon Chuột Chũi', 20, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 0.8, N'#051', 82)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1109, 148, 15.1, 0, CAST(N'2016-09-12T01:22:26.8411554' AS DateTime2), NULL, 140, N'Dugtrio có ba đầu trên một cơ thể giúp nó phối hợp đào đất nhanh hơn.', 1108, 0.7, 1168, N'Dugtrio', N'#051', N'dugtrio', N'Pokémon Chuột Chũi', 70, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 33.3, N'', 84)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1110, 104, 9.6, 50, CAST(N'2016-09-12T01:22:26.8481668' AS DateTime2), NULL, 94, N'Meowth thu bộ vuốt của nó lại để di chuyển nhẹ nhàng hơn. Nó rất thích các đồng tiền sáng lấp lánh.', 0, 0.4, 756, N'Meowth', N'#052', N'meowth', N'Pokémon Mèo Cào', 80, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 4.2, N'#053', 85)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1111, 132, 14.4, 50, CAST(N'2016-09-12T01:22:26.8642128' AS DateTime2), NULL, 112, N'Psyduck có năng lực bí ẩn phát ra sóng não chỉ xuất hiện khi ngủ. Nhưng điều này còn gây tranh cãi khá nhiều giữa các nhà nghiên cứu.', 0, 0.8, 1109, N'Psyduck', N'#054', N'psyduck', N'Pokémon Vịt', 100, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 19.6, N'#055', 88)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1112, 194, 32.1, 0, CAST(N'2016-09-12T01:22:26.8722134' AS DateTime2), NULL, 176, N'Màng tay, chân và cơ thể dạng thuỷ động học giúp Golduck bơi rất nhanh dưới nước.', 1111, 1.7, 2386, N'Golduck', N'#055', N'golduck', N'Pokémon Vịt', 160, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 76.6, N'', 89)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1113, 122, 11.2, 50, CAST(N'2016-09-12T01:22:26.8797730' AS DateTime2), NULL, 96, N'Thở mạnh là dấu hiệu cho thấy Mankey đang nổi giận. Không có bất cứ ai có thể thoát khỏi cơn thịnh nộ của nó.', 0, 0.5, 878, N'Mankey', N'#056', N'mankey', N'Pokémon Khỉ Heo', 80, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 28, N'#057', 90)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1114, 178, 24.8, 0, CAST(N'2016-09-12T01:22:26.8872963' AS DateTime2), NULL, 150, N'Khi Primeape nổi giận, máu trong cơ thể nó vận chuyển nhanh hơn làm tăng sức mạnh cơ bắp nhưng cũng khiến nó trở nên khá ngu ngốc.', 1113, 1, 1864, N'Primeape', N'#057', N'primeape', N'Pokémon Khỉ Heo', 130, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 32, N'', 91)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1115, 156, 17.5, 50, CAST(N'2016-09-12T01:22:26.8942979' AS DateTime2), NULL, 110, N'Growlithe có khả năng đánh hơi và ghi nhớ mùi mạnh mẽ. Khứu giác của nó còn có khả năng nhận biết được cảm xúc của sinh vật sống khác.', 0, 0.7, 1335, N'Growlithe', N'#058', N'growlithe', N'Pokémon Chó Con', 110, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 19, N'#059', 92)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1116, 108, 10.1, 25, CAST(N'2016-09-12T01:22:26.9080727' AS DateTime2), NULL, 98, N'Poliwag có da mỏng nhưng cũng rất mềm dẻo đủ để giúp nó chống lại những chiếc răng nanh bén nhọn.', 0, 0.6, 795, N'Poliwag', N'#060', N'poliwag', N'Pokémon Nòng Nọc', 80, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 12.4, N'#061', 94)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1117, 180, 33.8, 0, CAST(N'2016-09-12T01:22:26.9258913' AS DateTime2), NULL, 202, N'Poliwrath có cơ bắp cực kì mạnh mẽ và không biết mệt mỏi giúp nó có thể dễ dàng bơi xuyên đại dương.', 1057, 1.3, 2505, N'Poliwrath', N'#062', N'poliwrath', N'Pokémon Nòng Nọc', 180, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 54, N'', 96)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1118, 110, 7.4, 25, CAST(N'2016-09-12T01:22:26.9338902' AS DateTime2), NULL, 76, N'Abra ngủ 18 giờ một ngày nhưng nó vẫn có thể cảm nhận nguy hiểm xung quanh và dịch chuyển để bỏ chạy.', 0, 0.9, 600, N'Abra', N'#063', N'abra', N'Pokémon Tâm Linh', 50, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 19.5, N'#064', 97)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1119, 150, 14.6, 100, CAST(N'2016-09-12T01:22:26.9418903' AS DateTime2), NULL, 112, N'Kadabra luôn phát ra một luồng sóng alpha xung quanh nó gây nhức đầu cho người khác. Vì vậy, chỉ có những nhà huấn luyện có năng lực tâm linh mạnh mẽ mới điều khiển được nó.', 1118, 1.3, 1131, N'Kadabra', N'#064', N'kadabra', N'Pokémon Tâm Linh', 80, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 56.5, N'#065', 98)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1120, 186, 24.1, 0, CAST(N'2016-09-12T01:22:26.9495962' AS DateTime2), NULL, 152, N'Não của Alakazam phát triển liên tục khiến cho đầu ngày càng to ra đến mức nó phải dùng năng lực tâm linh để nâng đầu lên.', 1119, 1.5, 1813, N'Alakazam', N'#065', N'alakazam', N'Pokémon Tâm Linh', 110, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 48, N'', 100)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1121, 118, 14.1, 25, CAST(N'2016-09-12T01:22:26.9565819' AS DateTime2), NULL, 96, N'Cơ bắp của Machop không bao giờ cảm thấy mệt mỏi trong khi sức mạnh của nó đủ để nâng hàng trăm người.', 0, 0.8, 1089, N'Machop', N'#066', N'machop', N'Pokémon Sức Mạnh', 140, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 19.5, N'#067', 99)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1122, 154, 23.4, 100, CAST(N'2016-09-12T01:22:26.9643383' AS DateTime2), NULL, 144, N'Machoke luôn rèn luyện cơ bắp của nó trở nên cứng như thép. Nó có thể dễ dàng nâng một Sumo chỉ bằng một ngón tay.', 1121, 1.5, 1760, N'Machoke', N'#067', N'machoke', N'Pokémon Sức Mạnh', 160, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 70.5, N'#068', 101)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1123, 158, 14.4, 25, CAST(N'2016-09-12T01:22:26.9790915' AS DateTime2), NULL, 78, N'Với cơ thể nhỏ và mêm dẽo, Bellsprout có thể dễ dàng né tránh các đòn đánh. Còn miệng của nó thì có khả năng phun ra chất dịch có thể ăn mòn cả sắt.', 0, 0.7, 1117, N'Bellsprout', N'#069', N'bellsprout', N'Pokémon Hoa', 100, CAST(N'2016-09-25T18:28:45.9046790' AS DateTime2), NULL, 4, N'#070', 104)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1124, 190, 22.8, 100, CAST(N'2016-09-12T01:22:26.9878555' AS DateTime2), NULL, 110, N'Weepinbell có một cái móc nhỏ trên đầu giúp nó treo lơ lửng trên cây khi ngủ. Dù nó cỏ thể dễ dàng rơi xuống đất khi nhúc nhích.', 1123, 1, 1723, N'Weepinbell', N'#070', N'weepinbell', N'Pokémon Đớp Ruồi', 130, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 6.4, N'#071', 103)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1125, 170, 29.8, 0, CAST(N'2016-09-12T01:22:27.0138120' AS DateTime2), NULL, 196, N'Hai quả cầu trên đầu Tentacruel có khả năng phát ra sóng siêu âm cực mạnh để tấn công đối thủ xung quanh.', 1027, 1.6, 2220, N'Tentacruel', N'#073', N'tentacruel', N'Pokémon Sứa', 160, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 55, N'', 107)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1126, 106, 10.8, 25, CAST(N'2016-09-12T01:22:27.0217967' AS DateTime2), NULL, 118, N'Geodude sống càng lâu thì cơ thể nó càng trở nên trơn và tròn.', 0, 0.4, 849, N'Geodude', N'#074', N'geodude', N'Pokémon Đá', 80, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 20, N'#075', 108)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1127, 142, 18.8, 100, CAST(N'2016-09-12T01:22:27.0307980' AS DateTime2), NULL, 156, N'Graveler dùng đá làm thức ăn và ăn một lượng lớn mỗi ngày. Món yêu thích của nó là đá có rêu.', 1126, 1, 1433, N'Graveler', N'#075', N'graveler', N'Pokémon Đá', 110, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 105, N'#076', 109)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1128, 176, 30.9, 0, CAST(N'2016-09-12T01:22:27.0387994' AS DateTime2), NULL, 198, N'Golem thường sống trên núi. Do ảnh hưởng của động đất mà chúng có thể lăn xuống núi và tàn phá tất cả trên đường đi.', 1127, 1.4, 2303, N'Golem', N'#076', N'golem', N'Pokémon Siêu Trọng', 160, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 300, N'', 110)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1129, 200, 29.5, 0, CAST(N'2016-09-12T01:22:27.0537998' AS DateTime2), NULL, 170, N'Rapidash thường xuất hiện tại cánh đồng hoặc thảo nguyên. Chúng có thể phi cực nhanh bằng vào năng lượng toả ra từ cái bờm đầy lửa của mình.', 1011, 1.7, 2199, N'Rapidash', N'#078', N'rapidash', N'Pokémon Ngựa Lửa', 130, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 95, N'', 111)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1130, 110, 15.9, 50, CAST(N'2016-09-12T01:22:27.0617969' AS DateTime2), NULL, 110, N'Slowpoke dùng đuôi của nó để bắt cá nhưng nó rất hay quên và thường nằm cả ngày bên bờ sông.', 0, 1.2, 1218, N'Slowpoke', N'#079', N'slowpoke', N'Pokémon Ngốc', 180, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 36, N'#080', 113)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1131, 184, 35.1, 0, CAST(N'2016-09-12T01:22:27.0687964' AS DateTime2), NULL, 198, N'Slowpoke tiến hoá thành Slowbro sau khi bị Shellder cắn vào đuôi nó. Vì vậy, nó không thể câu cá nữa mà phải tự bơi đi kiếm ăn.', 1130, 1.6, 2597, N'Slowbro', N'#080', N'slowbro', N'Pokémon Cua', 190, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 78.5, N'', 114)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1132, 128, 11.3, 50, CAST(N'2016-09-12T01:22:27.0747972' AS DateTime2), NULL, 138, N'Magnemite sống dựa trên các nguồn điện nên chúng thường bám vào các đường đây điện hoặc cấu chì.', 0, 0.3, 890, N'Magnemite', N'#081', N'magnemite', N'Pokémon Nam Châm', 50, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 6, N'#082', 116)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1133, 126, 10.9, 50, CAST(N'2016-09-12T01:22:27.1824969' AS DateTime2), NULL, 96, N'Hai đầu của Doduo luôn thay nhau ngủ để đề phòng kẻ thù xung quanh.', 0, 1.4, 855, N'Doduo', N'#084', N'doduo', N'Pokémon Song Điểu', 70, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 39.2, N'#085', 117)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1134, 104, 14.3, 50, CAST(N'2016-09-12T01:22:27.2222722' AS DateTime2), NULL, 138, N'Seel thích sống và bơi trong môi trường lạnh. Chiếc sừng nhô ra ở đầu nó rất cứng và có thể xuyên thủng lớp băng dày.', 0, 1.1, 1107, N'Seel', N'#086', N'seel', N'Pokémon Sư Tử Biển', 130, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 90, N'#087', 177)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1135, 156, 28.7, 0, CAST(N'2016-09-12T01:22:27.2472570' AS DateTime2), NULL, 192, N'Dewgong thích ngủ trong môi trường băng lạnh. Thỉnh thoảng nó nằm trên những tảng băng trôi và từng bị nhìn nhầm là nàng tiên cá bởi các thủy thủ.', 1134, 1.7, 2145, N'Dewgong', N'#087', N'dewgong', N'Pokémon Sư Tử Biển', 180, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 120, N'', 180)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1136, 120, 10.4, 50, CAST(N'2016-09-12T01:22:27.3034551' AS DateTime2), NULL, 112, N'Vỏ của Shellder cứng hơn cả kim cương, có thể chịu được mọi đòn tấn công. Vào ban đêm, nó dùng chiếc lưỡi để đào một hốc nhỏ trên bề mặt đáy biển để ngủ.', 0, 0.3, 822, N'Shellder', N'#090', N'shellder', N'Pokémon Vỏ Sò', 60, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 4, N'#091', 187)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1137, 196, 27.4, 0, CAST(N'2016-09-12T01:22:27.3304568' AS DateTime2), NULL, 196, N'Cloyster bơi bằng cách hút nước vào cơ thể rồi bơm ra ngoài theo các rãnh trên vỏ. Nó bắn các gai cũng bằng cơ chế này.', 1136, 1.5, 2052, N'Cloyster', N'#091', N'cloyster', N'Pokémon Vỏ Sò', 100, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 132.5, N'', 183)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1138, 172, 18, 100, CAST(N'2016-09-12T01:22:27.3543592' AS DateTime2), NULL, 118, N'Haunter truy tìm nạn nhân của nó trong bóng tố và rút sức sống của đối phương bằng cách liếm họ với cái lưỡi bằng khí gas.', 1048, 1.6, 1380, N'Haunter', N'#093', N'haunter', N'Pokémon Khí Độc', 90, CAST(N'2016-09-25T18:28:45.9056789' AS DateTime2), NULL, 0.1, N'#094', 184)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1139, 90, 10.9, 0, CAST(N'2016-09-12T01:22:27.3928986' AS DateTime2), NULL, 186, N'Có một thỏi nam châm trong não Onix giúp nó định hướng khi đào hầm. Càng đào nhiều cơ thể Onix càng trở nên tròn và nhẵn.', 0, 8.8, 857, N'Onix', N'#095', N'onix', N'Pokémon Rắn Đá', 70, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 210, N'', 186)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1140, 104, 13.9, 50, CAST(N'2016-09-12T01:22:27.4108315' AS DateTime2), NULL, 140, N'Nếu bạn cảm thấy ngứa mũi khi đang ngủ, đó là dấu hiệu chắc chắn rằng Drowzee đang đứng trên gối và cố ăn giấc mơ của bạn thông qua mũi.', 0, 1, 1075, N'Drowzee', N'#096', N'drowzee', N'Pokémon Thôi Miên', 120, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 32.4, N'', 175)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1141, 162, 29.3, 0, CAST(N'2016-09-12T01:22:27.4287844' AS DateTime2), NULL, 196, N'Chuyển động hình vòng cung cùng ánh lấp lánh của quả lắc đưa đối thủ vào trạng thái bị thôi miên sâu. Khi Pokémon này đi săn mồi, nó đánh bóng quả lắc của mình.', 0, 1.6, 2184, N'Hypno', N'#097', N'hypno', N'Pokémon Thôi Miên', 170, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 75.6, N'', 176)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1142, 116, 10, 50, CAST(N'2016-09-12T01:22:27.4478073' AS DateTime2), NULL, 110, N'Krabby sống ở biển, bờ biển và vùi mình vào lỗ được đào sâu vào lớp cát. Ở những bãi biển nhiều cát nơi có ít thức ăn, người ta có thể nhìn thấy Krabby đánh nhau giành lãnh thổ.', 0, 0.4, 792, N'Krabby', N'#098', N'krabby', N'Pokémon Cua Sông', 60, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 6.5, N'#099', 173)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1143, 102, 10.7, 50, CAST(N'2016-09-12T01:22:27.4894545' AS DateTime2), NULL, 124, N'Voltorb được nhìn thấy lần đầu tiên ở một công ty chế tạo Poké Ball. Việc hình dáng của Pokémon này rất giống Poké Ball vẫn còn là một bí ẩn.', 0, 0.5, 839, N'Voltorb', N'#100', N'voltorb', N'Pokémon Bóng', 80, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 10.4, N'#101', 171)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1144, 110, 14.2, 50, CAST(N'2016-09-12T01:22:27.5290950' AS DateTime2), NULL, 132, N'Những chiếc đầu của Exeggcute thu hút lẫn nhau và phải có 6 chiếc đầu để nó giữ thăng bằng. Càng có nhiều vết nứt xuất hiện trên vỏ là dấu hiệu cho thấy Exeggcute sắp tiến hóa.', 0, 0.4, 1099, N'Exeggcute', N'#102', N'exeggcute', N'Pokémon Trứng', 120, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 2.5, N'#103', 169)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1145, 102, 13, 50, CAST(N'2016-09-12T01:22:27.5554694' AS DateTime2), NULL, 150, N'Cubone đội hộp sọ của người mẹ đã mất như một chiếc mũ. Tiếng kêu của nó dội trong hộp sọ và phát ra thành một giai điệu buồn bã.', 0, 0.4, 1006, N'Cubone', N'#104', N'cubone', N'Pokémon Cô Độc', 100, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 6.5, N'#105', 167)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1146, 126, 21.5, 0, CAST(N'2016-09-12T01:22:27.5939899' AS DateTime2), NULL, 160, N'Khi gặp điều gì mới mẻ, Lickitung đều liếm nó vì Pokémon này ghi nhớ vật thể bằng kết cấu và mùi vị. Tuy vậy nó lại sợ vị chua.', 0, 1.2, 1626, N'Lickitung', N'#108', N'lickitung', N'Pokémon Liếm Láp', 180, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 65.5, N'', 164)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1147, 176, 22.7, 0, CAST(N'2016-09-12T01:22:27.6785316' AS DateTime2), NULL, 150, N'Seadra thường móc đuôi vào san hô để giữ cơ thể cố định khi ngủ. Những người đánh bắt san hô thường bị gai độc của Pokémon này đâm trúng nếu không để ý.', 1017, 1.2, 1713, N'Seadra', N'#117', N'seadra', N'Pokémon Rồng', 110, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 25, N'', 155)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1148, 112, 12.4, 50, CAST(N'2016-09-12T01:22:27.6890477' AS DateTime2), NULL, 126, N'Goldeen là một Pokémon đẹp đẽ nhưng đừng vì vậy mà mất cảnh giác với nó vì nó có thể đâm bạn rất mạnh với chiếc sừng của mình.', 0, 0.6, 965, N'Goldeen', N'#118', N'goldeen', N'Pokémon Cá Vàng', 90, CAST(N'2016-09-25T18:28:45.9066809' AS DateTime2), NULL, 15, N'#119', 154)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1149, 192, 36.4, 0, CAST(N'2016-09-12T01:22:27.7730258' AS DateTime2), NULL, 196, N'Khi Magikarp tiến hóa thành Gyarados tế bào não của nó được tái cấu trúc. Các nhà khoa học cho rằng chính điều này đã dẫn đến hành vi hung bạo của Gyarados.', 1064, 6.5, 2688, N'Gyarados', N'#130', N'gyarados', N'Pokémon Hung Bạo', 190, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 235, N'', 140)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1150, 186, 38.1, 0, CAST(N'2016-09-12T01:22:27.7943157' AS DateTime2), NULL, 168, N'Vaporeon trải qua một quá trình đột biến, mọc vây và vảy giúp nó sống được dưới nước. Pokémon này có khả năng tự do điều khiển nước.', 1032, 1, 2816, N'Vaporeon', N'#134', N'vaporeon', N'Pokémon Sủi Bọt', 260, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 29, N'', 136)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1151, 192, 28.6, 0, CAST(N'2016-09-12T01:22:27.8005864' AS DateTime2), NULL, 174, N'Tế bào của Jolteon sinh ra điện tích nhỏ, lượng điện tích này được khuếch đại bởi lớp lông tích tĩnh điện. Lớp lông của Jolteon có cấu tạo giống như hàng ngàn mũi kim nhỏ được nạp điện tích.', 1032, 0.8, 2140, N'Jolteon', N'#135', N'jolteon', N'Pokémon Sấm Sét', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 24.5, N'', 137)
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos], [AvatarImageId]) VALUES (1152, 238, 35.6, 0, CAST(N'2016-09-12T01:22:27.8055852' AS DateTime2), NULL, 178, N'Lớp lông cổ có chức năng thải bớt nhiệt lượng cho cơ thể để Booster không trở nên nóng ngoài mức kiểm soát. Khi tích tụ nhiệt năng, cơ thể Booster có thể nóng đến hơn 1650 độ F.', 1032, 0.9, 2643, N'Flareon', N'#136', N'flareon', N'Pokémon Bốc Cháy', 130, CAST(N'2016-09-25T18:28:45.9076803' AS DateTime2), NULL, 25, N'', 135)
SET IDENTITY_INSERT [dbo].[Characters] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (19, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Dân Cư,Trường Học', NULL, NULL, 20)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (20, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Dân Cư,Thành Phố,Khí Hậu Nóng,Khí Hậu Ẩm,Bãi Biển,Công Viên', NULL, NULL, 21)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (21, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Kênh,Hồ,Biển,Sông,Đầm Lầy,Cảng,Bể Nước', NULL, NULL, 22)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (22, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Khu Dân Cư,Trường Học,Đường,Khu Mua Sắm', NULL, NULL, 23)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (23, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Công Viên,Khu Nông Nghiệp,Rừng,Đường,Vườn,Sân Gôn,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, 24)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (24, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Gần Nước,Khí Hậu Lạnh, Đồng Cỏ', NULL, NULL, 25)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (25, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Gym,Sân Vận Động,Khu Giải Trí', NULL, NULL, 26)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (26, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Hồ,Đầm Lầy', NULL, NULL, 27)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (27, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Công Viên,Mỏ,Khu Nông Nghiệp,Sân Gôn', NULL, NULL, 28)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (28, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Rừng,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên,Khu Giải Trí,Công Viên,Vườn', NULL, NULL, 29)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (29, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'Trừ Mew và Mewtwo chỉ xuất hiện trong các sự kiện đặc biệt', N'Khu Dân Cư(Đêm),Bệnh Viện,Bãi Cỏ', NULL, NULL, 30)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (30, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Công Viên,Khu Nông Nghiệp,Rừng,Vườn, Sân Gôn,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, 31)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (31, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Mỏ,Khu Nông Nghiệp,Thành Phố,Đường,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, 32)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (32, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Nhà Thờ,Khu Dân Cư(Đêm),Nghĩa Trang', NULL, NULL, 33)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (33, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Sân Gôn,Địa Danh,Khu Du Lịch', NULL, NULL, 34)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (34, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'Chưa xác định', N'', NULL, NULL, 35)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (35, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Toà Nhà,Đường', NULL, NULL, 36)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (36, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Nhà Thờ,Địa Danh,Khu Du Lịch,Nghĩa Trang', NULL, NULL, 37)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Moves] ON 

INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (1, 1.56, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 32.05, -50, N'Body Slam', 50, NULL, NULL, 40.06, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (2, 2.9, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.62, -25, N'Bubble Beam', 25, NULL, NULL, 10.78, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (3, 2.9, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.62, -25, N'Aerial Ace', 25, NULL, NULL, 10.78, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (4, 1.15, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.7, 10, N'Peck', 10, NULL, NULL, 10.87, 38, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (5, 4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.75, -33, N'Scald', 35, NULL, NULL, 10.94, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (6, 1.36, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.82, 7, N'Rock Throw', 12, NULL, NULL, 11.03, 38, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (7, 3.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.82, -25, N'Bulldoze', 30, NULL, NULL, 11.03, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (8, 1.695, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.85, -20, N'Struggle', 15, NULL, NULL, 11.06, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (9, 2.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.93, -25, N'Magnet Bomb', 25, NULL, NULL, 11.16, 39, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (10, 2.2, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.09, -25, N'Horn Attack', 20, NULL, NULL, 11.36, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (11, 3.3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.09, -25, N'Water Pulse', 30, NULL, NULL, 11.36, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (12, 3.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.21, -25, N'Psybeam', 35, NULL, NULL, 11.51, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (13, 2.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.25, 9.26, -25, N'Night Slash', 25, NULL, NULL, 11.57, 39, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (14, 1.05, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.52, 7, N'Acid', 10, NULL, NULL, 11.9, 38, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (15, 1.05, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.52, 7, N'Ember', 10, NULL, NULL, 11.9, 38, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (16, 2.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.52, -25, N'Shadow Punch', 20, NULL, NULL, 11.9, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (17, 2.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.62, -25, N'Mud Bomb', 25, NULL, NULL, 12.02, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (18, 2.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.62, -25, N'Sludge', 25, NULL, NULL, 12.02, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (19, 3.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.72, -33, N'Giga Drain', 35, NULL, NULL, 12.15, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (20, 0.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10, 4, N'Spark', 7, NULL, NULL, 12.5, 38, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (21, 0.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10, 4, N'Sucker Punch', 7, NULL, NULL, 12.5, 38, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (22, 1.45, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10.34, 7, N'Razor Leaf', 15, NULL, NULL, 12.93, 38, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (23, 0.575, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10.43, 4, N'Poison Sting', 6, NULL, NULL, 13.04, 38, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (24, 1.13, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 10.62, 7, N'Cut', 12, NULL, NULL, 13.27, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (25, 4.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 10.71, -33, N'Dazzling Gleam', 45, NULL, NULL, 13.39, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (26, 1.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 10.91, 7, N'Tackle', 12, NULL, NULL, 13.64, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (27, 2.25, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.11, -25, N'Low Sweep', 25, NULL, NULL, 13.89, 39, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (28, 2.7, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.11, -33, N'Drill Peck', 30, NULL, NULL, 13.89, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (29, 1.33, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.28, 4, N'Steel Wing', 15, NULL, NULL, 14.1, 38, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (30, 3.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.29, -33, N'Rest', 35, NULL, NULL, 14.11, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (31, 3.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, -25, N'Ancient Power', 30, NULL, NULL, 10.42, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (32, 2.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, -25, N'Brine', 20, NULL, NULL, 10.42, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (33, 3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, -25, N'Swift', 25, NULL, NULL, 10.42, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (34, 0.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 7, N'Thunder Shock', 5, NULL, NULL, 10.42, 38, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (35, 3.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 3.95, -20, N'Icy Wind', 15, NULL, NULL, 4.93, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (36, 3.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.05, -20, N'Wrap Pink', 15, NULL, NULL, 5.07, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (37, 3.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.05, -20, N'Wrap Green', 15, NULL, NULL, 5.07, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (38, 1.35, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.44, 9, N'Mud Slap', 6, NULL, NULL, 5.56, 38, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (39, 3.2, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.69, -20, N'Mega Drain', 15, NULL, NULL, 5.86, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (40, 3.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.84, -20, N'Shadow Sneak', 15, NULL, NULL, 6.05, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (41, 3.9, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 5.13, -20, N'Disarming Voice', 20, NULL, NULL, 6.41, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (42, 2.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 5.36, -20, N'Draining Kiss', 15, NULL, NULL, 6.7, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (43, 2.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 5.56, -20, N'Twister', 15, NULL, NULL, 6.94, 39, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (44, 2.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.25, -20, N'Poison Fang', 15, NULL, NULL, 7.81, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (45, 2.35, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.38, -20, N'Aqua Jet', 15, NULL, NULL, 7.98, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (46, 3.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.45, -20, N'Flame Charge', 20, NULL, NULL, 8.06, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (47, 2.3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.52, 15, N'Bubble', 15, NULL, NULL, 8.15, 38, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (48, 2.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.14, -20, N'Parabolic Charge', 15, NULL, NULL, 8.93, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (49, 3.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.29, -33, N'Signal Beam', 35, NULL, NULL, 14.11, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (50, 2.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.14, -20, N'Vice Grip', 15, NULL, NULL, 8.93, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (51, 3.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.25, 7.35, -25, N'Rock Tomb', 25, NULL, NULL, 9.19, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (52, 0.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.5, 7, N'Karate Chop', 6, NULL, NULL, 9.38, 38, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (53, 0.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.5, 12, N'Fury Cutter', 3, NULL, NULL, 9.38, 38, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (54, 1.33, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.52, 7, N'Quick Attack', 10, NULL, NULL, 9.4, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (55, 3.3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.25, 7.58, -25, N'Air Cutter', 25, NULL, NULL, 9.47, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (56, 4.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.61, -25, N'Flame Wheel', 35, NULL, NULL, 9.51, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (57, 5.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.76, -33, N'Dig', 45, NULL, NULL, 9.7, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (58, 2.55, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.84, -25, N'Heart Stamp', 20, NULL, NULL, 9.8, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (59, 1.51, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.95, 7, N'Confusion', 12, NULL, NULL, 9.93, 38, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (60, 3.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.06, -25, N'Ominous Wind', 25, NULL, NULL, 10.08, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (61, 1.23, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.13, 7, N'Splash', 10, NULL, NULL, 10.16, 38, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (62, 0.84, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 4, N'Fire Fang', 7, NULL, NULL, 10.42, 38, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (63, 1.2, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 7, N'Bullet Punch', 10, NULL, NULL, 10.42, 38, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (64, 0.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 7, N'Low Kick', 5, NULL, NULL, 10.42, 38, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (65, 1.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.14, 7, N'Ice Shard', 10, NULL, NULL, 8.93, 38, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (66, 1.04, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.54, 7, N'Feint Attack', 12, NULL, NULL, 14.42, 38, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (67, 4.25, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.76, -50, N'Bug Buzz', 50, NULL, NULL, 14.71, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (68, 3.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 11.76, -33, N'Drill Run', 40, NULL, NULL, 14.71, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (69, 3.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.79, -100, N'Hydro Pump', 60, NULL, NULL, 19.74, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (70, 3.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.79, -100, N'Heat Wave', 60, NULL, NULL, 19.74, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (71, 0.75, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16, 7, N'Wing Attack', 12, NULL, NULL, 20, 38, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (72, 2.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16, -33, N'Discharge', 40, NULL, NULL, 20, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (73, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 16.07, -50, N'Leaf Blade', 45, NULL, NULL, 20.09, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (74, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16.67, -33, N'Hyper Fang', 35, NULL, NULL, 20.83, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (75, 2.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16.67, -33, N'Thunder Punch', 40, NULL, NULL, 20.83, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (76, 0.95, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16.84, 7, N'Shadow Claw', 16, NULL, NULL, 21.05, 38, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (77, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.19, -100, N'Megahorn', 55, NULL, NULL, 21.48, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (78, 2.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.24, -50, N'Play Rough', 50, NULL, NULL, 21.55, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (79, 2.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.24, -50, N'Flamethrower', 50, NULL, NULL, 21.55, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (80, 3.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.65, -100, N'Sludge Wave', 60, NULL, NULL, 22.06, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (81, 3.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.5, 17.74, -100, N'Stone Edge', 55, NULL, NULL, 22.18, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (82, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.86, -50, N'Psychic', 50, NULL, NULL, 22.32, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (83, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.63, -50, N'Petal Blizzard', 50, NULL, NULL, 19.53, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (84, 2.7, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 18.52, -50, N'Thunderbolt', 50, NULL, NULL, 23.15, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (85, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 18.75, -100, N'Hurricane', 60, NULL, NULL, 23.44, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (86, 0.63, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 19.05, 7, N'Metal Claw', 12, NULL, NULL, 23.81, 38, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (87, 2.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 19.23, -50, N'Sludge Bomb', 50, NULL, NULL, 24.04, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (88, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, 7, N'Water Gun', 10, NULL, NULL, 25, 38, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (89, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, 7, N'Scratch', 10, NULL, NULL, 25, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (90, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, 7, N'Lick', 10, NULL, NULL, 25, 38, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (91, 3, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, -100, N'Gunk Shot', 60, NULL, NULL, 25, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (92, 2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, -33, N'Iron Head', 40, NULL, NULL, 25, 39, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (93, 2.35, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 21.28, -50, N'Aqua Tail', 50, NULL, NULL, 26.6, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (94, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 21.43, -100, N'Power Whip', 60, NULL, NULL, 26.79, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (95, 0.55, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 21.82, 7, N'Mud Shot', 12, NULL, NULL, 27.27, 38, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (96, 0.57, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 26.32, 7, N'Psycho Cut', 15, NULL, NULL, 32.89, 38, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (97, 1.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 26.67, -50, N'Dragon Claw', 40, NULL, NULL, 33.33, 39, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (98, 2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 27.5, -100, N'Cross Chop', 55, NULL, NULL, 34.38, 39, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (99, 1.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 18.75, -33, N'Brick Break', 30, NULL, NULL, 23.44, 39, 26)
GO
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (100, 4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 3.75, -20, N'Wrap', 15, NULL, NULL, 4.69, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (101, 3.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.38, -100, N'Blizzard', 60, NULL, NULL, 19.23, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (102, 4.3, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.12, -100, N'Thunder', 65, NULL, NULL, 18.9, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (103, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.9, -25, N'Stomp', 25, NULL, NULL, 14.88, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (104, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.9, -25, N'Flame Burst', 25, NULL, NULL, 14.88, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (105, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12, 7, N'Dragon Breath', 6, NULL, NULL, 15, 38, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (106, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12, 7, N'Bite', 6, NULL, NULL, 15, 38, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (107, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -33, N'Fire Punch', 35, NULL, NULL, 15.63, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (108, 1.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -25, N'Bone Club', 20, NULL, NULL, 15.63, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (109, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -33, N'Rock Slide', 40, NULL, NULL, 15.63, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (110, 2.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -33, N'Seed Bomb', 30, NULL, NULL, 15.63, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (111, 3.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.86, -33, N'Ice Punch', 45, NULL, NULL, 16.07, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (112, 3.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.86, -33, N'Dark Pulse', 45, NULL, NULL, 16.07, 39, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (113, 3.08, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.99, -33, N'Shadow Ball', 40, NULL, NULL, 16.23, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (114, 4.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.27, -100, N'Solar Beam', 65, NULL, NULL, 16.58, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (115, 0.45, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.33, 7, N'Bug Bite', 6, NULL, NULL, 16.67, 38, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (116, 1.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 13.33, -25, N'Cross Poison', 20, NULL, NULL, 16.67, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (117, 0.65, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.38, 7, N'Vine Whip', 10, NULL, NULL, 19.23, 38, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (118, 3.65, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.7, -50, N'Ice Beam', 50, NULL, NULL, 17.12, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (119, 2.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.79, -33, N'Power Gem', 40, NULL, NULL, 17.24, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (120, 3.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.89, -50, N'Dragon Pulse', 50, NULL, NULL, 17.36, 39, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (121, 5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14, -100, N'Hyper Beam', 70, NULL, NULL, 17.5, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (122, 3.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.1, -33, N'Flash Cannon', 55, NULL, NULL, 17.63, 39, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (123, 1.05, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, 4, N'Zen Headbutt', 15, NULL, NULL, 17.86, 38, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (124, 1.05, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, 7, N'Poison Jab', 15, NULL, NULL, 17.86, 38, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (125, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, -33, N'X Scissor', 30, NULL, NULL, 17.86, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (126, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, -33, N'Submission', 30, NULL, NULL, 17.86, 39, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (127, 4.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, -100, N'Earthquake', 60, NULL, NULL, 17.86, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (128, 4.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.63, -100, N'Fire Blast', 60, NULL, NULL, 18.29, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (129, 4.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.63, -100, N'Moonblast', 60, NULL, NULL, 18.29, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (130, 0.54, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.81, 7, N'Pound', 8, NULL, NULL, 18.52, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (131, 0.81, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.81, 7, N'Frost Breath', 12, NULL, NULL, 18.52, 38, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (132, 2.7, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.81, -33, N'Psyshock', 40, NULL, NULL, 18.52, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (133, 5.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.73, -100, N'Psystrike', 70, NULL, NULL, 17.16, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (134, 1.41, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 3.55, 7, N'Rock Smash', 5, NULL, NULL, 4.43, 38, 26)
SET IDENTITY_INSERT [dbo].[Moves] OFF
SET IDENTITY_INSERT [dbo].[PageContents] ON 

INSERT [dbo].[PageContents] ([Id], [ContentFlags], [ContentText], [CreatedDate], [CreatedUserId], [UpdatedDate], [UpdatedUserId]) VALUES (2, NULL, N'Pokémon là tên của loạt trò chơi điện tử cũng như phim hoạt hình, truyện tranh,... được phân phối bởi Nintendo Nhật Bản, thuộc quyền sở hữu của The Pokémon Company và được phát triển bởi Tajiri Satoshi vào năm 1996. Hiện Pokémon đã trở thành một thương hiệu đang thịnh hành ở nhiều quốc gia khác trên thế giới và đã được chuyển thể thành các bộ anime, truyện tranh,... nhiều tập. Game Pokémon được phát triển bởi GameFreak và đã trở thành một trong những dòng game thành công và sinh lời thứ nhì thế giới, chỉ đứng sau Mario, vốn cũng thuộc Nintendo! Sản phẩm Pokémon bao gồm anime (phim hoạt hình), manga (truyện tranh), đồ chơi, sách và các phương tiện khác. Năm 2006, Pokémon tổ chức kỉ niệm 10 năm Pokémon đến với công chúng trên toàn thế giới.[4] Năm 2016, Pokémon tổ chức kỉ niệm 20 năm Pokemon ra đời và đến tay bạn bè thế giới, đây cũng là dịp để quảng bá nhiều sản phẩm như trading card game hay Pokemon Sun And Pokemon Moon,...
Năm 2016, Nintendo phát hành Pokémon GO và lập tức được sự đón nhận của người dân trên toàn thế giới. Trong Pokémon GO, bạn sẽ phải ra đường sau đó nhìn vào bản đồ và bắt Pokémon. Trong tuần đầu ra mắt, trò chơi đã thu hút hàng triệu người chơi tải về trên hệ điều hành Android và iOS.', CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[PageContents] ([Id], [ContentFlags], [ContentText], [CreatedDate], [CreatedUserId], [UpdatedDate], [UpdatedUserId]) VALUES (3, NULL, N'Pokémon is a media franchise managed by The Pokémon Company, a Japanese consortium between Nintendo, Game Freak, and Creatures. While the franchise copyright is shared by all three companies, Nintendo is the sole owner of the trademark. he franchise was created by Satoshi Tajiri in 1995, and is centered on fictional creatures called "Pokémon", which humans, known as Pokémon Trainers, catch and train to battle each other for sport.

The franchise began as a pair of video games for the original Game Boy, developed by Game Freak and published by Nintendo. The franchise now spans video games, trading card games, animated television shows and movies, comic books, and toys. Pokémon is the second-most successful and lucrative video game-based media franchise in the world, behind only Nintendo''s Mario franchise.

Cumulative sales of the video games (including home console games, such as Hey You, Pikachu! for the Nintendo 64) have reached more than 279 million copies. In November 2005, 4Kids Entertainment, which had managed the non-game related licensing of Pokémon, announced that it had agreed not to renew the Pokémon representation agreement. Pokémon USA Inc. (now The Pokémon Company International), a subsidiary of Japan''s Pokémon Co., now oversees all Pokémon licensing outside of Asia. As of May 2016, the Pokémon media franchise has grossed revenues of ¥4.8 trillion worldwide (equivalent to 46.2 billion USD).

The franchise celebrated its tenth anniversary in 2006. The twentieth anniversary was celebrated with a commercial at the 2016 Super Bowl using the theme: "I can do that". 2016 marks the 20th anniversary of the release of the original games, with the company celebrating by airing an ad during Super Bowl 50, and issuing re-releases of Pokémon Red, Blue, and Yellow. The mobile augmented reality game Pokémon Go was released in July 2016. The next generation games Pokémon Sun and Moon are expected to be released on November 18, 2016 worldwide, except for Europe''s release date being on November 23, 2016. A live-action film adaptation based on Great Detective Pikachu is planned to start production in 2017. The English slogan for the franchise is "Gotta Catch ''Em All".', CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PageContents] OFF
SET IDENTITY_INSERT [dbo].[PageLangs] ON 

INSERT [dbo].[PageLangs] ([Id], [CreatedDate], [CreatedUserId], [Language], [PageId], [Title], [UpdatedDate], [UpdatedUserId]) VALUES (1, CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, N'Vietnamese', 2, N'Pokemons', NULL, NULL)
INSERT [dbo].[PageLangs] ([Id], [CreatedDate], [CreatedUserId], [Language], [PageId], [Title], [UpdatedDate], [UpdatedUserId]) VALUES (3, CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, N'English', 4, N'Pokemons in English', NULL, NULL)
SET IDENTITY_INSERT [dbo].[PageLangs] OFF
SET IDENTITY_INSERT [dbo].[Pages] ON 

INSERT [dbo].[Pages] ([Id], [ContentLanguage], [CreatedDate], [CreatedUserId], [IsNewPage], [IsRedirect], [NameSpace], [NewestContent], [PageLength], [TagId], [Title], [UpdatedDate], [UpdatedUserId], [FeatureImageId]) VALUES (2, 1, CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, 1, 0, 1, 1, CAST(0.00 AS Decimal(18, 2)), NULL, N'Pokemons', NULL, NULL, NULL)
INSERT [dbo].[Pages] ([Id], [ContentLanguage], [CreatedDate], [CreatedUserId], [IsNewPage], [IsRedirect], [NameSpace], [NewestContent], [PageLength], [TagId], [Title], [UpdatedDate], [UpdatedUserId], [FeatureImageId]) VALUES (4, 2, CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, 1, 0, 1, 2, CAST(0.00 AS Decimal(18, 2)), NULL, N'Pokemons English', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Pages] OFF
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1004, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1024, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1029, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1030, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1032, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1033, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1038, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1043, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1045, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1046, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1047, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1059, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1080, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1081, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1082, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1083, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1084, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1085, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1102, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1110, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1133, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1146, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1009, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1011, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1012, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1013, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1055, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1069, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1070, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1100, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1101, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1115, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1129, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1152, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1010, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1016, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1017, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1019, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1027, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1028, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1041, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1051, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1056, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1057, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1061, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1064, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1065, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1071, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1072, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1073, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1111, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1112, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1116, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1117, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1125, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1130, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1131, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1134, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1135, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1136, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1137, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1142, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1147, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1148, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1149, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1150, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1036, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1037, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1039, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1060, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1088, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1089, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1132, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1143, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1151, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1002, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1005, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1006, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1008, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1049, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1066, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1067, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1068, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1104, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1105, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1106, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1123, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1124, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1144, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1021, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1058, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1061, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1135, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1137, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1052, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1053, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1054, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1113, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1114, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1117, 25)
GO
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1121, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1122, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1003, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1006, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1008, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1015, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1023, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1027, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1034, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1035, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1048, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1050, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1062, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1066, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1067, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1068, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1077, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1078, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1079, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1086, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1087, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1092, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1093, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1094, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1095, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1096, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1097, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1103, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1104, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1105, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1107, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1123, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1124, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1125, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1138, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1040, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1042, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1063, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1090, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1091, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1094, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1097, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1108, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1109, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1126, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1127, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1128, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1139, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1145, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1009, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1014, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1015, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1020, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1021, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1026, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1029, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1036, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1059, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1070, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1076, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1080, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1081, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1082, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1084, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1085, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1103, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1133, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1149, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1005, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1007, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1025, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1044, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1051, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1058, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1118, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1119, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1120, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1130, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1131, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1140, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1141, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1144, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1022, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1023, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1026, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1049, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1074, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1075, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1076, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1077, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1078, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1079, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1106, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1107, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1010, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1016, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1019, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1020, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1040, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1042, 31)
GO
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1065, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1126, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1127, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1128, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1139, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1035, 32)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1048, 32)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1138, 32)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1014, 33)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1018, 33)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1031, 33)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1060, 35)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1132, 35)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1044, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1045, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1098, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1099, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1102, 36)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1028, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1084, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1085, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1095, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1133, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1148, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1019, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1126, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1127, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1128, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1139, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1003, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1006, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1008, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1034, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1050, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1062, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1086, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1087, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1104, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1105, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1123, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1124, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1125, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1009, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1011, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1012, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1013, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1069, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1070, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1100, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1101, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1115, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1129, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1152, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1037, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1060, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1089, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1132, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1143, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1035, 21)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1048, 21)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1109, 21)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1006, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1008, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1067, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1068, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1104, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1105, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1124, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1027, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1077, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1078, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1086, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1092, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1093, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1095, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1096, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1059, 24)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1003, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1004, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1011, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1032, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1037, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1043, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1062, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1066, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1071, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1074, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1075, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1080, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1083, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1126, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1136, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1139, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1143, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1014, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1020, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1026, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1029, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1081, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1082, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1085, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1036, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1039, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1060, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1088, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1089, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1132, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1151, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1038, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1040, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1042, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1050, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1063, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1145, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1017, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1027, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1057, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1071, 47)
GO
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1116, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1117, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1142, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1013, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1052, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1113, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1114, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1121, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1122, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1016, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1022, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1026, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1049, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1059, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1097, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1004, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1032, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1033, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1051, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1056, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1080, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1083, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1084, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1088, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1100, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1103, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1133, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1005, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1023, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1025, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1044, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1076, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1107, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1112, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1119, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1120, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1130, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1131, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1140, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1141, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1144, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1064, 61)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1055, 62)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1052, 63)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1053, 63)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1038, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1039, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1054, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1114, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1121, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1122, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1129, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1061, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1134, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1135, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1136, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1137, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1029, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1045, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1047, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1101, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1102, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1015, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1070, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1081, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1082, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1035, 76)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1138, 76)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1041, 86)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1091, 86)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1017, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1019, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1051, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1056, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1065, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1072, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1073, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1111, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1112, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1130, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1131, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1134, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1147, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1150, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1010, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1012, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1047, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1069, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1090, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1106, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1108, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1110, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1113, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1030, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1048, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1138, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1146, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1010, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1016, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1041, 95)
GO
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1057, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1065, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1090, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1091, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1108, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1109, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1116, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1117, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1127, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1128, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1142, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1148, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1025, 96)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1119, 96)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1120, 96)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1014, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1018, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1031, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1147, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1149, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1015, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1020, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1033, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1055, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1072, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1073, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1087, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1092, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1093, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1094, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1103, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1110, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1115, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1149, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1023, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1049, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1074, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1075, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1076, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1077, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1078, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1079, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1106, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1107, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1002, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1066, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1067, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1068, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1123, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1005, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1030, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1043, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1044, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1046, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1098, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1099, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1111, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1118, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1141, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1146, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1028, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1034, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1079, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1094, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1096, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1097, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1125, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1007, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1024, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1045, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1046, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1058, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1098, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1099, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1102, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1140, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1021, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1058, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1061, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1135, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1137, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1022, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1040, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1042, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1053, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1054, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1063, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1145, 134)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1030, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1032, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1045, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1083, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1092, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1095, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1098, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1100, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1110, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1115, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1116, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1017, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1027, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1056, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1057, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1116, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1136, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1142, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1029, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1059, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1079, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1080, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1081, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1082, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1084, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1085, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1133, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1057, 5)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1042, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1055, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1091, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1145, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1024, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1064, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1074, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1075, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1077, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1078, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1060, 9)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1132, 9)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1042, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1043, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1095, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1096, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1148, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1016, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1027, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1041, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1071, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1130, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1131, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1136, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1142, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1148, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1150, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1004, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1044, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1046, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1051, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1107, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1111, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1119, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1140, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1026, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1047, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1110, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1114, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1050, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1057, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1108, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1109, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1116, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1050, 18)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1062, 18)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1046, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1099, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1102, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1107, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1119, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1120, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1054, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1113, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1114, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1121, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1029, 28)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1084, 28)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1133, 28)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1010, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1016, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1019, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1020, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1065, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1128, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1144, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1065, 32)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1032, 33)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1056, 33)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1133, 33)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1021, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1028, 35)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1134, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1135, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1136, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1137, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1045, 41)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1098, 41)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1058, 42)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1031, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1080, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1081, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1084, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1085, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1149, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1015, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1023, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1092, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1093, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1103, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1010, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1071, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1072, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1134, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1135, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1011, 46)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1069, 46)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1100, 46)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1004, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1076, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1118, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1143, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1022, 50)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1041, 50)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1142, 50)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1010, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1065, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1090, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1091, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1108, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1126, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1015, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1029, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1059, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1080, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1081, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1082, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1103, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1011, 56)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1115, 56)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1032, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1033, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1063, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1083, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1090, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1093, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1096, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1108, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1126, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1127, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1145, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1015, 60)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1048, 60)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1023, 67)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1026, 67)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1076, 67)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1028, 68)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1085, 68)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1129, 68)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1019, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1051, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1072, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1073, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1112, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1117, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1125, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1137, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1147, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1149, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1150, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1009, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1101, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1129, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1152, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1004, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1036, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1037, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1060, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1088, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1132, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1143, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1151, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1006, 73)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1059, 73)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1033, 74)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1083, 74)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1039, 75)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 75)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1089, 75)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1028, 77)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1040, 77)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1097, 77)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1045, 78)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1047, 78)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1102, 78)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1009, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1012, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1013, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1055, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1069, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1070, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1100, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1101, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1115, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1152, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1034, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1035, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1087, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1094, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1097, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1125, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1016, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1040, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1052, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1054, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1094, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1109, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1127, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1128, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1139, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1005, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1023, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1025, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1044, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1046, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1076, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1099, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1112, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1120, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1130, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1131, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1140, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1141, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1144, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1008, 83)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1068, 83)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1105, 83)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1036, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1037, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1039, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1088, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1132, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1143, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1151, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 85)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1082, 85)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1002, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1003, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1006, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1048, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1050, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1062, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1066, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1067, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1068, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1079, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1086, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1092, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1093, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1095, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1096, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1103, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1104, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1105, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1123, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1124, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1138, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1034, 91)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1086, 91)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1087, 91)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1020, 92)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1043, 92)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1139, 92)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1018, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1031, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1071, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1111, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1134, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1148, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1150, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1002, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1066, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1067, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1123, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1124, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1146, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1014, 97)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1070, 97)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1052, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1111, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1113, 98)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1114, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1121, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1122, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1038, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1089, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1113, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1121, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1122, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1018, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1027, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1031, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1086, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1123, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1021, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1061, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1125, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1135, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1137, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1147, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1036, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1039, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1088, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1089, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1151, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1038, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1042, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1054, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1146, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1012, 104)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1069, 104)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1012, 107)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1013, 107)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 107)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1063, 108)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1145, 108)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1019, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1090, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1126, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1127, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1139, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1005, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1066, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1104, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1106, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1124, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1144, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 111)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1058, 111)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1117, 111)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1003, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1034, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1035, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1048, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1062, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1087, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1110, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1138, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1003, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1025, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1035, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1044, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1107, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1118, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1119, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1120, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1138, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1141, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1002, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1005, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1006, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1008, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1049, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1067, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1068, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1049, 116)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1106, 116)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1021, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1061, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1072, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1073, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1112, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1131, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1047, 119)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1051, 119)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1056, 119)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1014, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1017, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1018, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1061, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1147, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1149, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1014, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1020, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1025, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1030, 121)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1033, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1037, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1102, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1146, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1017, 122)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1060, 122)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1073, 122)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1022, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1026, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1041, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1049, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1079, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1106, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1022, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1052, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1117, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1122, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1030, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1038, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1040, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1043, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1063, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1091, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1094, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1097, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1109, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1128, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1009, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1011, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1013, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1055, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1070, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1101, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1129, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1152, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1008, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1098, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1099, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1104, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1105, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1058, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1118, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1130, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1140, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1141, 132)
SET IDENTITY_INSERT [dbo].[Revisions] ON 

INSERT [dbo].[Revisions] ([Id], [BelongToUserId], [CreatedDate], [CreatedUserId], [PageContentId], [PageId], [RevParentId], [RevisionComment], [RevivsionIsDeleted], [UpdatedDate], [UpdatedUserId]) VALUES (1, NULL, CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, 2, 2, NULL, N'Bài viết mới', 0, NULL, NULL)
INSERT [dbo].[Revisions] ([Id], [BelongToUserId], [CreatedDate], [CreatedUserId], [PageContentId], [PageId], [RevParentId], [RevisionComment], [RevivsionIsDeleted], [UpdatedDate], [UpdatedUserId]) VALUES (2, NULL, CAST(N'2016-09-17T00:00:00.0000000' AS DateTime2), NULL, 3, 4, NULL, N'New in English', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Revisions] OFF
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1004, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1024, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1029, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1030, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1032, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1033, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1038, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1043, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1045, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1046, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1047, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1059, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1080, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1081, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1082, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1083, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1084, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1085, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1102, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1110, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1133, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1146, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1009, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1011, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1012, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1013, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1055, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1069, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1070, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1100, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1101, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1115, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1129, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1152, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1010, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1016, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1017, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1019, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1027, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1028, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1041, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1051, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1056, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1057, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1061, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1064, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1065, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1071, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1072, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1073, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1111, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1112, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1116, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1117, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1125, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1130, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1131, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1134, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1135, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1136, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1137, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1142, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1147, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1148, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1149, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1150, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1036, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1037, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1039, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1060, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1088, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1089, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1132, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1143, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1151, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1002, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1005, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1006, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1008, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1049, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1066, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1067, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1068, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1104, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1105, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1106, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1123, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1124, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1144, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1021, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1058, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1061, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1135, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1137, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1052, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1053, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1054, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1113, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1114, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1117, 26)
GO
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1121, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1122, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1003, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1006, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1008, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1015, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1023, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1027, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1034, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1035, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1048, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1050, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1062, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1066, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1067, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1068, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1077, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1078, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1079, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1086, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1087, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1092, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1093, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1094, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1095, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1096, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1097, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1103, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1104, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1105, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1107, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1123, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1124, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1125, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1138, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1040, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1042, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1063, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1090, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1091, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1094, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1097, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1108, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1109, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1126, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1127, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1128, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1139, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1145, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1009, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1014, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1015, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1020, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1021, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1026, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1029, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1036, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1059, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1070, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1076, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1080, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1081, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1082, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1084, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1085, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1103, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1133, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1149, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1005, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1007, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1025, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1044, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1051, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1058, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1118, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1119, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1120, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1130, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1131, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1140, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1141, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1144, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1022, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1023, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1026, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1049, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1074, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1075, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1076, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1077, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1078, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1079, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1106, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1107, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1010, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1016, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1019, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1020, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1040, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1042, 32)
GO
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1065, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1126, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1127, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1128, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1139, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1035, 33)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1048, 33)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1138, 33)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1014, 34)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1018, 34)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1031, 34)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1060, 36)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1132, 36)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1044, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1045, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1098, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1099, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1102, 37)
SET IDENTITY_INSERT [dbo].[WikiImages] ON 

INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (33, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'001 - Bulbasaur', 475, N'png', N'image/png', N'001Bulbasaur', 203385, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474793206/pokedex/ki5badayeyjthxvnj5tw.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (34, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'002 - Ivysaur', 475, N'png', N'image/png', N'002Ivysaur', 202759, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474793409/pokedex/vg7xuazkqu58kij382xq.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (35, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'003 - Venusaur', 475, N'png', N'image/png', N'003Venusaur', 186011, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474793760/pokedex/hqhrkz7xyajjmsq2xxhc.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (36, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'004 - Charmander', 475, N'png', N'image/png', N'004Charmander', 137817, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474793776/pokedex/kdsgfkxpagbaydiki57t.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (37, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'005 - Charmeleon', 475, N'png', N'image/png', N'005Charmeleon', 130334, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794274/pokedex/akdsu0ytrk8rqacr3jet.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (38, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'006 - Charizard', 475, N'png', N'image/png', N'006Charizard', 144568, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794290/pokedex/t5xwcz5zdh0hmyz6pudw.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (39, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'007 - Squirtle', 475, N'png', N'image/png', N'007Squirtle', 155045, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794292/pokedex/quuc6mfcrjyvpffxztih.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (40, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'008 - Wartortle', 475, N'png', N'image/png', N'008Wartortle', 179754, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794405/pokedex/k8jafxc1a8vtgdv2fec0.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (41, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'009 - Blastoise', 475, N'png', N'image/png', N'009Blastoise', 197853, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794411/pokedex/gfmjwv4n2gho3p30ypah.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (42, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'010 - Caterpie', 475, N'png', N'image/png', N'010Caterpie', 174430, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794416/pokedex/b9sjd4txhvvegtdgcniy.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (43, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'011 - Metapod', 475, N'png', N'image/png', N'011Metapod', 118885, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794424/pokedex/sspaonfzuabqebwly5ij.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (44, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'012 - Butterfree', 475, N'png', N'image/png', N'012Butterfree', 183600, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794424/pokedex/gpu3gp7cwmkja1sltygb.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (45, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'013 - Weedle', 475, N'png', N'image/png', N'013Weedle', 108372, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794433/pokedex/qiizilmpi8si3whe1jqa.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (46, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'014 - Kakuna', 475, N'png', N'image/png', N'014Kakuna', 126542, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794433/pokedex/fbuklkniul49l5eebvp3.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (47, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'015 - Beedrill', 475, N'png', N'image/png', N'015Beedrill', 146566, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794448/pokedex/t02z9bnlklsnanwtetmz.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (49, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'017 - Pidgeotto', 475, N'png', N'image/png', N'017Pidgeotto', 158875, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794481/pokedex/bsyjlvmctxxwwauqdldq.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (50, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'016 - Pidgey', 475, N'png', N'image/png', N'016Pidgey', 145917, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794481/pokedex/mavtzjttckr75jwts2qg.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (51, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'019 - Rattata', 475, N'png', N'image/png', N'019Rattata', 125067, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794488/pokedex/wc35v9akfxk4tx1qmchr.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (52, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'018 - Pidgeot', 475, N'png', N'image/png', N'018Pidgeot', 147161, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794488/pokedex/gdzkip9vdj12rnnmfkow.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (53, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'020 - Raticate', 475, N'png', N'image/png', N'020Raticate', 154497, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794500/pokedex/wyjmcssipw8t7kkwg0a6.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (54, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'021 - Spearow', 475, N'png', N'image/png', N'021Spearow', 144705, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794500/pokedex/isyqqdxjx3kci17aczxo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (55, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'023 - Ekans', 475, N'png', N'image/png', N'023Ekans', 191869, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794518/pokedex/wbujvi68takltide2bra.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (56, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'022 - Fearow', 475, N'png', N'image/png', N'022Fearow', 149452, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794518/pokedex/aqlvkynx7fejghj4l0jt.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (57, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'025 - Pikachu', 475, N'png', N'image/png', N'025Pikachu', 118057, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794526/pokedex/p5mgojdl7fuzcwkzrauo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (58, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'024 - Arbok', 475, N'png', N'image/png', N'024Arbok', 181492, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794526/pokedex/d36i5dimlrrp9bwxj1bg.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (59, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'026 - Raichu', 475, N'png', N'image/png', N'026Raichu', 94288, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794536/pokedex/us0pgmyeagstj8kluhmo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (60, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'027 - Sandshrew', 475, N'png', N'image/png', N'027Sandshrew', 173758, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794536/pokedex/yvewo5gicrkciwt1ezwk.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (61, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'028 - Sandslash', 475, N'png', N'image/png', N'028Sandslash', 148038, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794546/pokedex/bifq5glgqutuwin6k5op.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (62, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'029 - Nidoran♀', 475, N'png', N'image/png', N'029Nidoran♀', 178682, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794546/pokedex/zedo8hfqnralv16uioec.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (63, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'030 - Nidorina', 475, N'png', N'image/png', N'030Nidorina', 143213, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794561/pokedex/gregwkui7buxzw5kydhl.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (64, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'031 - Nidoqueen', 475, N'png', N'image/png', N'031Nidoqueen', 186330, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794561/pokedex/uzxs7sjxzoqph7cmxrr2.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (65, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'032 - Nidoran♂', 475, N'png', N'image/png', N'032Nidoran♂', 167589, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794569/pokedex/fjeqtlllpgfrcappdink.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (66, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'033 - Nidorino', 475, N'png', N'image/png', N'033Nidorino', 156769, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794569/pokedex/tdqutedte3jpnhupiee1.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (67, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'035 - Clefairy', 475, N'png', N'image/png', N'035Clefairy', 175738, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794585/pokedex/vnsz457jqufmeirxol1a.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (68, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'034 - Nidoking', 475, N'png', N'image/png', N'034Nidoking', 150283, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794585/pokedex/cznhwpzrmdfrubp8jpmp.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (69, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'036 - Clefable', 475, N'png', N'image/png', N'036Clefable', 157629, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794608/pokedex/tgqd3qkjrkdton7c86o7.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (70, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'037 - Vulpix', 475, N'png', N'image/png', N'037Vulpix', 157357, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794615/pokedex/x3e8ds8lzjwqwxuw2is2.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (71, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'038 - Ninetales', 475, N'png', N'image/png', N'038Ninetales', 184128, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794615/pokedex/szllw1zeec5zjuu1ovzg.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (72, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'040 - Wigglytuff', 475, N'png', N'image/png', N'040Wigglytuff', 133899, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794626/pokedex/yofsamcsqalqfwzm7zju.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (73, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'039 - Jigglypuff', 475, N'png', N'image/png', N'039Jigglypuff', 147602, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794626/pokedex/lwyfkoqutwswd87scn0h.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (74, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'042 - Golbat', 475, N'png', N'image/png', N'042Golbat', 117478, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794638/pokedex/rkcujh8raqcopmtc4tu4.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (75, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'041 - Zubat', 475, N'png', N'image/png', N'041Zubat', 107570, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794638/pokedex/b9edhn6f91swrby5db2l.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (76, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'044 - Gloom', 475, N'png', N'image/png', N'044Gloom', 155247, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794647/pokedex/eul2rxqc7zxvoy6ioujn.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (77, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'043 - Oddish', 475, N'png', N'image/png', N'043Oddish', 134223, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794647/pokedex/k5gc26xaup3jnpztz5gg.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (78, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'045 - Vileplume', 475, N'png', N'image/png', N'045Vileplume', 155232, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794661/pokedex/nhoab4ql6csh75nkrowl.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (79, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'046 - Paras', 475, N'png', N'image/png', N'046Paras', 149527, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794661/pokedex/oz1ua7wijmb1gmwmo3kf.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (80, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'047 - Parasect', 475, N'png', N'image/png', N'047Parasect', 152882, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794672/pokedex/b7kz9ilmjfqcc0mrwhll.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (81, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'048 - Venonat', 475, N'png', N'image/png', N'048Venonat', 142257, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794672/pokedex/nmhlyjyhhcnkdiokqmxg.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (82, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'050 - Diglett', 475, N'png', N'image/png', N'050Diglett', 163664, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794704/pokedex/jqnbdrw4stpoelnn12qt.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (83, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'049 - Venomoth', 475, N'png', N'image/png', N'049Venomoth', 117073, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794704/pokedex/ke0nrt0p8b9or91nkemy.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (84, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'051 - Dugtrio', 475, N'png', N'image/png', N'051Dugtrio', 154558, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794827/pokedex/e4gzyamej9gfiw5w9nfq.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (85, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'052 - Meowth', 475, N'png', N'image/png', N'052Meowth', 115809, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794827/pokedex/jvpcqwhxyodmc4ytepzd.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (86, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'053 - Persian', 475, N'png', N'image/png', N'053Persian', 118816, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474794841/pokedex/ywlm3tjikifyvxrwpspz.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (88, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'054 - Psyduck', 475, N'png', N'image/png', N'054Psyduck', 117239, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795039/pokedex/yugkh2fb4mr5o5abwb2v.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (89, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'055 - Golduck', 475, N'png', N'image/png', N'055Golduck', 128809, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795142/pokedex/kfxnrhvtmvhpu2xyeqt6.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (90, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'056 - Mankey', 475, N'png', N'image/png', N'056Mankey', 101437, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795220/pokedex/ilv00mbm0zovfxnzdpfc.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (91, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'057 - Primeape', 475, N'png', N'image/png', N'057Primeape', 161289, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795268/pokedex/qjqim0gpse3jctn8xvoo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (92, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'058 - Growlithe', 475, N'png', N'image/png', N'058Growlithe', 151687, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795287/pokedex/saouvmg2ueufh6tyklpk.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (93, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'059 - Arcanine', 475, N'png', N'image/png', N'059Arcanine', 197883, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795296/pokedex/vopr32fg9swi1wnk37nt.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (94, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'060 - Poliwag', 475, N'png', N'image/png', N'060Poliwag', 133801, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795296/pokedex/ud3tx7fihtnnahijrxd9.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (95, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'061 - Poliwhirl', 475, N'png', N'image/png', N'061Poliwhirl', 150225, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795310/pokedex/i6ornjv28le7re8wgt7z.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (96, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'062 - Poliwrath', 475, N'png', N'image/png', N'062Poliwrath', 115518, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795311/pokedex/pjnjwtxih37phocvv9tb.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (97, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'063 - Abra', 475, N'png', N'image/png', N'063Abra', 116699, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795400/pokedex/eawqhl92nqqrc8t4ao6p.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (98, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'064 - Kadabra', 475, N'png', N'image/png', N'064Kadabra', 166555, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795400/pokedex/ja6qixcjxtbaj7jab7vp.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (99, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'066 - Machop', 475, N'png', N'image/png', N'066Machop', 132188, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795479/pokedex/bya02xa0zlzrl3auvs96.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (100, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'065 - Alakazam', 475, N'png', N'image/png', N'065Alakazam', 162890, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795479/pokedex/b3wfecwcb96ixet1m81e.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (101, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'067 - Machoke', 475, N'png', N'image/png', N'067Machoke', 169060, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795511/pokedex/sq9drdtlcjmnpttowwkd.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (102, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'068 - Machamp', 475, N'png', N'image/png', N'068Machamp', 151393, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795511/pokedex/balxdqayk7brqnwbzos4.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (103, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'070 - Weepinbell', 475, N'png', N'image/png', N'070Weepinbell', 118882, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795520/pokedex/mwfw4hgxdoco4khheelp.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (104, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'069 - Bellsprout', 475, N'png', N'image/png', N'069Bellsprout', 99010, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795520/pokedex/xqo1awtypioru5zuhra9.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (105, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'072 - Tentacool', 475, N'png', N'image/png', N'072Tentacool', 115945, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795535/pokedex/ur9suuulkzlqefcfudmo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (106, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'071 - Victreebel', 475, N'png', N'image/png', N'071Victreebel', 140003, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795535/pokedex/rpdy5vfsdueziubsfdhe.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (107, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'073 - Tentacruel', 475, N'png', N'image/png', N'073Tentacruel', 156862, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795580/pokedex/eqnpru4wyz0ezxgnd1ky.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (108, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'074 - Geodude', 475, N'png', N'image/png', N'074Geodude', 76553, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795580/pokedex/l7zoiuliwokmlidijbks.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (109, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'075 - Graveler', 475, N'png', N'image/png', N'075Graveler', 101284, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795598/pokedex/ireerrz7senlsoewo1vo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (110, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'076 - Golem', 475, N'png', N'image/png', N'076Golem', 179897, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795598/pokedex/akbhkuiyd6034wcxrnqu.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (111, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'078 - Rapidash', 475, N'png', N'image/png', N'078Rapidash', 172853, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795607/pokedex/ryer7s1pvoodbkoedyyh.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (112, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'077 - Ponyta', 475, N'png', N'image/png', N'077Ponyta', 125214, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795607/pokedex/txxg9imi1sxhp509wyyo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (113, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'079 - Slowpoke', 475, N'png', N'image/png', N'079Slowpoke', 126460, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795617/pokedex/yvd2fsoibbtyybj4rw5v.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (114, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'080 - Slowbro', 475, N'png', N'image/png', N'080Slowbro', 185275, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795617/pokedex/emubx1rybjbazckuj0fh.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (115, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'082 - Magneton', 475, N'png', N'image/png', N'082Magneton', 166284, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795668/pokedex/uxquk8eba6mflabdt1xr.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (116, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'081 - Magnemite', 475, N'png', N'image/png', N'081Magnemite', 96595, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795668/pokedex/bfochfwoz9wu65hf1hfz.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (117, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'084 - Doduo', 475, N'png', N'image/png', N'084Doduo', 79909, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795677/pokedex/dpnksink4s855lwm2hqr.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (118, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'083 - Farfetch''d', 475, N'png', N'image/png', N'083Farfetch''d', 141176, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795677/pokedex/nxtfysoxpdzjxpyzjsqh.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (119, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'150 - Mewtwo', 475, N'png', N'image/png', N'150Mewtwo', 119320, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795685/pokedex/rnalulwmlar6cmt020sz.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (121, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'151 - Mew', 475, N'png', N'image/png', N'151Mew', 133175, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795750/pokedex/wrxcnkug1rhtvyheoifv.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (122, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'148 - Dragonair', 475, N'png', N'image/png', N'148Dragonair', 103226, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795765/pokedex/pshsgm8rvd6oycvedytz.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (123, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'149 - Dragonite', 475, N'png', N'image/png', N'149Dragonite', 132064, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795765/pokedex/hsudfqlac7sujmjrjzno.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (124, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'147 - Dratini', 475, N'png', N'image/png', N'147Dratini', 102258, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795857/pokedex/nh5fwfensdcvbxwiueud.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (125, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'146 - Moltres', 475, N'png', N'image/png', N'146Moltres', 94816, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795857/pokedex/bt7xx4mysu1ifnd1iiaf.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (126, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'145 - Zapdos', 475, N'png', N'image/png', N'145Zapdos', 110704, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795871/pokedex/dvd1kg6qmyq6cvemrqxr.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (127, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'144 - Articuno', 475, N'png', N'image/png', N'144Articuno', 160360, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795871/pokedex/o9gukdvqozdk9f3davm3.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (128, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'142 - Aerodactyl', 475, N'png', N'image/png', N'142Aerodactyl', 81716, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795890/pokedex/m3ushfg29cnhtlnwdzd1.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (129, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'143 - Snorlax', 475, N'png', N'image/png', N'143Snorlax', 139225, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795890/pokedex/jgjvgjwkhhqnpgbxtwff.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (130, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'140 - Kabuto', 475, N'png', N'image/png', N'140Kabuto', 155463, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795906/pokedex/xru0t0knbmgpitpfjr5t.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (131, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'141 - Kabutops', 475, N'png', N'image/png', N'141Kabutops', 136055, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795906/pokedex/lmfceieolau3pzczmojs.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (132, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'138 - Omanyte', 475, N'png', N'image/png', N'138Omanyte', 173927, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795971/pokedex/gol6ikwoxde0ii97wvgq.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (133, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'139 - Omastar', 475, N'png', N'image/png', N'139Omastar', 160396, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795971/pokedex/vqcupn7lwqr5ioamfuwj.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (134, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'137 - Porygon', 475, N'png', N'image/png', N'137Porygon', 153642, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795994/pokedex/wawxekiuzfxpb2ob4v47.png')
GO
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (135, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'136 - Flareon', 475, N'png', N'image/png', N'136Flareon', 149971, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474795994/pokedex/ps9sbjypj6czpasaexip.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (136, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'134 - Vaporeon', 475, N'png', N'image/png', N'134Vaporeon', 157955, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796003/pokedex/odgaoihwkuztygtdxm1i.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (137, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'135 - Jolteon', 475, N'png', N'image/png', N'135Jolteon', 141908, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796003/pokedex/avta5hoh3vyyihjumn76.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (138, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'133 - Eevee', 475, N'png', N'image/png', N'133Eevee', 142266, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796014/pokedex/uofyaltfb4joji9skyu2.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (139, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'132 - Ditto', 475, N'png', N'image/png', N'132Ditto', 129274, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796014/pokedex/xp3gxqwbnkaanxamllun.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (140, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'130 - Gyarados', 475, N'png', N'image/png', N'130Gyarados', 146784, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796031/pokedex/axi4wzvnsv4c20necny3.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (141, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'131 - Lapras', 475, N'png', N'image/png', N'131Lapras', 135952, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796031/pokedex/yphr4e7ntxzlax0ofpiy.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (142, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'129 - Magikarp', 475, N'png', N'image/png', N'129Magikarp', 136990, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796040/pokedex/apb5qpjnap6qlsphjxna.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (143, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'128 - Tauros', 475, N'png', N'image/png', N'128Tauros', 129530, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796040/pokedex/ko0d5xvxbew7xdmecifx.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (144, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'127 - Pinsir', 475, N'png', N'image/png', N'127Pinsir', 142435, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796048/pokedex/r8bmeeebpma8iuhl8kzf.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (145, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'126 - Magmar', 475, N'png', N'image/png', N'126Magmar', 159154, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796048/pokedex/ewzlx6u6m8idxxsctqqh.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (146, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'124 - Jynx', 475, N'png', N'image/png', N'124Jynx', 156134, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796128/pokedex/mudunvggxdgmbtc9oqgc.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (147, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'125 - Electabuzz', 475, N'png', N'image/png', N'125Electabuzz', 134434, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796128/pokedex/ynka97myldd7gmtbsbb5.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (148, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'122 - Mr._Mime', 475, N'png', N'image/png', N'122Mr._Mime', 160464, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796141/pokedex/azxmpy89eh0vm35eye9r.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (149, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'123 - Scyther', 475, N'png', N'image/png', N'123Scyther', 131534, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796141/pokedex/acboci65sme5bnwizyyw.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (150, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'120 - Staryu', 475, N'png', N'image/png', N'120Staryu', 157316, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796157/pokedex/ex4u2ratsnzoocamxbji.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (151, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'121 - Starmie', 475, N'png', N'image/png', N'121Starmie', 198724, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796157/pokedex/w9l5nw4oibvreke61uro.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (152, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'119 - Seaking', 475, N'png', N'image/png', N'119Seaking', 174542, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796176/pokedex/sqbgf6qbkd0stmiikb5y.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (154, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'118 - Goldeen', 475, N'png', N'image/png', N'118Goldeen', 104649, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796359/pokedex/viwpgivt6epzb1caizlw.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (155, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'117 - Seadra', 475, N'png', N'image/png', N'117Seadra', 127820, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796375/pokedex/cnaxbol73l0ousmxhrzt.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (156, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'116 - Horsea', 475, N'png', N'image/png', N'116Horsea', 140766, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796375/pokedex/mctyxzpswzpdeuwcjxrl.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (157, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'115 - Kangaskhan', 475, N'png', N'image/png', N'115Kangaskhan', 183110, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796492/pokedex/c8oyl6jjhvgvtuy6dkku.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (158, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'114 - Tangela', 475, N'png', N'image/png', N'114Tangela', 221832, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796492/pokedex/wy5jypcywcl8h7scezpc.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (159, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'113 - Chansey', 475, N'png', N'image/png', N'113Chansey', 153542, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796507/pokedex/jjfoq5pmcvimahj16jy9.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (160, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'112 - Rhydon', 475, N'png', N'image/png', N'112Rhydon', 137603, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796507/pokedex/xiuoymdfphnypaoyx3m2.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (161, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'110 - Weezing', 475, N'png', N'image/png', N'110Weezing', 148228, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796530/pokedex/kj9zdsl5rnale4w7qkek.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (162, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'111 - Rhyhorn', 475, N'png', N'image/png', N'111Rhyhorn', 184215, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796530/pokedex/vpievhlcncxldt2ftqfa.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (163, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'109 - Koffing', 475, N'png', N'image/png', N'109Koffing', 153356, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796568/pokedex/cwrcqhnieb6qzymgiurb.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (164, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'108 - Lickitung', 475, N'png', N'image/png', N'108Lickitung', 187105, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796568/pokedex/jel9okgk4tr5ojspbhoo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (165, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'106 - Hitmonlee', 475, N'png', N'image/png', N'106Hitmonlee', 96141, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796578/pokedex/u2cbfjmbndcxac4dcnxd.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (166, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'107 - Hitmonchan', 475, N'png', N'image/png', N'107Hitmonchan', 109569, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796578/pokedex/xu6bpqaaw0tn28yj2dts.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (167, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'104 - Cubone', 475, N'png', N'image/png', N'104Cubone', 156699, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796592/pokedex/rb42r6pzzookkckyobft.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (168, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'105 - Marowak', 475, N'png', N'image/png', N'105Marowak', 133817, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796592/pokedex/arklpe2q14bh95uguety.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (169, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'102 - Exeggcute', 475, N'png', N'image/png', N'102Exeggcute', 155189, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796604/pokedex/djaj8xqhxelqw13m36fb.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (170, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'103 - Exeggutor', 475, N'png', N'image/png', N'103Exeggutor', 170023, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796604/pokedex/f7gvjcykbzs20zkrdvmi.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (171, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'100 - Voltorb', 475, N'png', N'image/png', N'100Voltorb', 181951, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796618/pokedex/zpcy7pfewfozadmpm93e.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (172, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'101 - Electrode', 475, N'png', N'image/png', N'101Electrode', 190651, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796618/pokedex/mkvpawfvhz7eygvcyy5o.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (173, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'098 - Krabby', 475, N'png', N'image/png', N'098Krabby', 118530, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796645/pokedex/bkq4u0wgjgmomtrzvnlv.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (174, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'099 - Kingler', 475, N'png', N'image/png', N'099Kingler', 113561, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796645/pokedex/trcptmpadeuphq0lvxvu.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (175, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'096 - Drowzee', 475, N'png', N'image/png', N'096Drowzee', 135367, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796655/pokedex/rzye44fw1htlfwsnd64k.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (176, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'097 - Hypno', 475, N'png', N'image/png', N'097Hypno', 152976, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796655/pokedex/rqqimpz1m2qmdwytepip.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (177, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'086 - Seel', 475, N'png', N'image/png', N'086Seel', 130146, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796666/pokedex/jlpa4ljxgbdy1hacoswy.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (178, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'085 - Dodrio', 475, N'png', N'image/png', N'085Dodrio', 119581, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796666/pokedex/clm0zc130awobqmu18un.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (180, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'087 - Dewgong', 475, N'png', N'image/png', N'087Dewgong', 149652, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796681/pokedex/xhqesasbtajsjyhjhdhc.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (181, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'089 - Muk', 475, N'png', N'image/png', N'089Muk', 87396, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796713/pokedex/pv2zakxf6kelfdhpwlib.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (182, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'088 - Grimer', 475, N'png', N'image/png', N'088Grimer', 122585, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796714/pokedex/k4yrxeecqiz89tbxplud.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (183, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'091 - Cloyster', 475, N'png', N'image/png', N'091Cloyster', 174248, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796725/pokedex/zydxhczwxoiamzywapnb.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (184, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'093 - Haunter', 475, N'png', N'image/png', N'093Haunter', 105214, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796889/pokedex/si0bhsx99z9y0bqndfmz.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (185, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'092 - Gastly', 475, N'png', N'image/png', N'092Gastly', 176993, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796889/pokedex/eu5wgmk3ddzzo3k4msgj.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (186, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'095 - Onix', 475, N'png', N'image/png', N'095Onix', 159278, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796938/pokedex/mjkdenu1gx2keqbdgo9a.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (187, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'090 - Shellder', 475, N'png', N'image/png', N'090Shellder', 174248, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796725/pokedex/p7xhbtqvxhzjk1bv2udp.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (188, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'094 - Gengar', 475, N'png', N'image/png', N'094Gengar', 105214, 475, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474796938/pokedex/saffhp4x9nw607vych3e.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (189, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'1 - Bug', 401, N'png', N'image/png', N'1Bug', 123535, 1025, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474814968/pokemon_type/uqvjynph43nd7glbp0lo.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (190, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'2 - Dark', 409, N'png', N'image/png', N'2Dark', 127647, 1112, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474814985/pokemon_type/ujj3r9tokmt95ddjocnp.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (191, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'3 - Dragon', 409, N'png', N'image/png', N'3Dragon', 125176, 1363, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474814988/pokemon_type/tzzp8mohuolyo2hjxska.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (192, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'5 - Fairy', 409, N'png', N'image/png', N'5Fairy', 118900, 1142, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474814994/pokemon_type/f7qbnhwhftbicsped2g2.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (193, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'4 - Electric', 409, N'png', N'image/png', N'4Electric', 113367, 1459, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474814994/pokemon_type/kg3ntv9yvxsvu5yrx3kc.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (194, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'7 - Fire', 408, N'png', N'image/png', N'7Fire', 108127, 1008, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815010/pokemon_type/cuzydjy8m8dg75tvb3vi.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (195, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'6 - Fighting', 409, N'png', N'image/png', N'6Fighting', 104988, 1463, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815010/pokemon_type/yraaerwm81kkxwzcxbnm.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (196, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'9 - Ghost', 409, N'png', N'image/png', N'9Ghost', 126033, 1274, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815020/pokemon_type/eakli2e12uu2pmbc9kql.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (197, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'8 - Flying', 409, N'png', N'image/png', N'8Flying', 123215, 1293, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815020/pokemon_type/d4aoa1ycnyu2hiuqj6tt.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (198, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'11 - Ground', 409, N'png', N'image/png', N'11Ground', 122108, 1388, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815046/pokemon_type/iqw4inmo17xjp1aogryw.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (199, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'10 - Grass', 409, N'png', N'image/png', N'10Grass', 128887, 1195, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815046/pokemon_type/vf0v9e05m2ya5mrqrqbb.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (200, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'13 - Normal', 408, N'png', N'image/png', N'13Normal', 131011, 1416, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815071/pokemon_type/fpvwioct74o4rifqem4m.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (201, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'12 - Ice', 411, N'png', N'image/png', N'12Ice', 117026, 916, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815071/pokemon_type/wzvyg5k4nsbobgpljhpm.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (202, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'14 - Poison', 409, N'png', N'image/png', N'14Poison', 126450, 1322, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815087/pokemon_type/niiwkdvh0kucmtj4zzai.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (203, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'15 - Psychic', 409, N'png', N'image/png', N'15Psychic', 120625, 1388, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815087/pokemon_type/f4k17fxnbqfahty55frh.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (204, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'16 - Rock', 409, N'png', N'image/png', N'16Rock', 129722, 1133, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815100/pokemon_type/x5xgv9zzfgewzw0b4vw4.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (205, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'17 - Steel', 410, N'png', N'image/png', N'17Steel', 104163, 1141, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815100/pokemon_type/qxcrllfsq1k0vl9siqyj.png')
INSERT [dbo].[WikiImages] ([Id], [BitDepth], [CreatedDate], [CreatedUserId], [ImageDescription], [ImageHeight], [ImageMediaType], [ImageMime], [ImageName], [ImageSize], [ImageWidth], [UpdatedDate], [UpdatedUserId], [ImageUrl]) VALUES (206, 24, CAST(N'2016-09-25T00:00:00.0000000' AS DateTime2), NULL, N'18 - Water', 408, N'png', N'image/png', N'18Water', 127197, 1251, NULL, NULL, N'http://res.cloudinary.com/ewiki-io/image/upload/v1474815114/pokemon_type/nlfbxwypndibvubvtspc.png')
SET IDENTITY_INSERT [dbo].[WikiImages] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Archives_BelongToUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_BelongToUserId] ON [dbo].[Archives]
(
	[BelongToUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Archives_ContentId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_ContentId] ON [dbo].[Archives]
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Archives_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_CreatedUserId] ON [dbo].[Archives]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Archives_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_UpdatedUserId] ON [dbo].[Archives]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_BlockByUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_BlockByUserId] ON [dbo].[BlockedIps]
(
	[BlockByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BlockedIps_BlockedIpId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_BlockedIpId] ON [dbo].[BlockedIps]
(
	[BlockedIpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_CreatedUserId] ON [dbo].[BlockedIps]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_UpdatedUserId] ON [dbo].[BlockedIps]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_UserBlockedId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_UserBlockedId] ON [dbo].[BlockedIps]
(
	[UserBlockedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_CatImageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_CatImageId] ON [dbo].[Categories]
(
	[CatImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Categories_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_CreatedUserId] ON [dbo].[Categories]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Categories_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_UpdatedUserId] ON [dbo].[Categories]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfoGroups_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfoGroups_CreatedUserId] ON [dbo].[CharacterInfoGroups]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfoGroups_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfoGroups_UpdatedUserId] ON [dbo].[CharacterInfoGroups]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterInfos_CharacterInfoGroupId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_CharacterInfoGroupId] ON [dbo].[CharacterInfos]
(
	[CharacterInfoGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfos_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_CreatedUserId] ON [dbo].[CharacterInfos]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfos_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_UpdatedUserId] ON [dbo].[CharacterInfos]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Characters_AvatarImageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_AvatarImageId] ON [dbo].[Characters]
(
	[AvatarImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Characters_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_CreatedUserId] ON [dbo].[Characters]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Characters_EvolveFromId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_EvolveFromId] ON [dbo].[Characters]
(
	[EvolveFromId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Characters_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_UpdatedUserId] ON [dbo].[Characters]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSectionGroups_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSectionGroups_CreatedUserId] ON [dbo].[CharacterSectionGroups]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSectionGroups_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSectionGroups_UpdatedUserId] ON [dbo].[CharacterSectionGroups]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterSections_CharacterId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_CharacterId] ON [dbo].[CharacterSections]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterSections_CharacterSectionGroupId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_CharacterSectionGroupId] ON [dbo].[CharacterSections]
(
	[CharacterSectionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSections_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_CreatedUserId] ON [dbo].[CharacterSections]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSections_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_UpdatedUserId] ON [dbo].[CharacterSections]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FileArchives_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_FileArchives_CreatedUserId] ON [dbo].[FileArchives]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FileArchives_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_FileArchives_UpdatedUserId] ON [dbo].[FileArchives]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FileArchives_UploadedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_FileArchives_UploadedUserId] ON [dbo].[FileArchives]
(
	[UploadedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoValues_CharacterInfoId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoValues_CharacterInfoId] ON [dbo].[InfoValues]
(
	[CharacterInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_InfoValues_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoValues_CreatedUserId] ON [dbo].[InfoValues]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_InfoValues_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoValues_UpdatedUserId] ON [dbo].[InfoValues]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Locations_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Locations_CreatedUserId] ON [dbo].[Locations]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Locations_LocationType]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Locations_LocationType] ON [dbo].[Locations]
(
	[LocationType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Locations_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Locations_UpdatedUserId] ON [dbo].[Locations]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Moves_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_CreatedUserId] ON [dbo].[Moves]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Moves_MoveCategoryId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_MoveCategoryId] ON [dbo].[Moves]
(
	[MoveCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Moves_MoveType]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_MoveType] ON [dbo].[Moves]
(
	[MoveType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Moves_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_UpdatedUserId] ON [dbo].[Moves]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageContents_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageContents_CreatedUserId] ON [dbo].[PageContents]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageContents_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageContents_UpdatedUserId] ON [dbo].[PageContents]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageLangs_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageLangs_CreatedUserId] ON [dbo].[PageLangs]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageLangs_PageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageLangs_PageId] ON [dbo].[PageLangs]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageLangs_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageLangs_UpdatedUserId] ON [dbo].[PageLangs]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageMetas_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageMetas_CreatedUserId] ON [dbo].[PageMetas]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageMetas_PageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageMetas_PageId] ON [dbo].[PageMetas]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageMetas_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageMetas_UpdatedUserId] ON [dbo].[PageMetas]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageRestrictions_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageRestrictions_CreatedUserId] ON [dbo].[PageRestrictions]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageRestrictions_PageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageRestrictions_PageId] ON [dbo].[PageRestrictions]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageRestrictions_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageRestrictions_UpdatedUserId] ON [dbo].[PageRestrictions]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Pages_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_CreatedUserId] ON [dbo].[Pages]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pages_FeatureImageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_FeatureImageId] ON [dbo].[Pages]
(
	[FeatureImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pages_TagId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_TagId] ON [dbo].[Pages]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Pages_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_UpdatedUserId] ON [dbo].[Pages]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonLocation_CharacterId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonLocation_CharacterId] ON [dbo].[PokemonLocation]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonLocation_LocationId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonLocation_LocationId] ON [dbo].[PokemonLocation]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonMove_CharacterId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonMove_CharacterId] ON [dbo].[PokemonMove]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonMove_MoveId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonMove_MoveId] ON [dbo].[PokemonMove]
(
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonSpecialMove_CharacterId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonSpecialMove_CharacterId] ON [dbo].[PokemonSpecialMove]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonSpecialMove_MoveId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonSpecialMove_MoveId] ON [dbo].[PokemonSpecialMove]
(
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProtectedTitles_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProtectedTitles_CreatedUserId] ON [dbo].[ProtectedTitles]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProtectedTitles_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProtectedTitles_UpdatedUserId] ON [dbo].[ProtectedTitles]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProtectedTitles_UserProtectedId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProtectedTitles_UserProtectedId] ON [dbo].[ProtectedTitles]
(
	[UserProtectedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RecentChanges_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecentChanges_CreatedUserId] ON [dbo].[RecentChanges]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RecentChanges_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecentChanges_UpdatedUserId] ON [dbo].[RecentChanges]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RecentChanges_UserMakeChangeId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecentChanges_UserMakeChangeId] ON [dbo].[RecentChanges]
(
	[UserMakeChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_References_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_References_CreatedUserId] ON [dbo].[References]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_References_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_References_UpdatedUserId] ON [dbo].[References]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Revisions_BelongToUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_BelongToUserId] ON [dbo].[Revisions]
(
	[BelongToUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Revisions_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_CreatedUserId] ON [dbo].[Revisions]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Revisions_PageContentId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_PageContentId] ON [dbo].[Revisions]
(
	[PageContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Revisions_PageId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_PageId] ON [dbo].[Revisions]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Revisions_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_UpdatedUserId] ON [dbo].[Revisions]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Sites_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Sites_CreatedUserId] ON [dbo].[Sites]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Sites_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Sites_UpdatedUserId] ON [dbo].[Sites]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Tags_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tags_CreatedUserId] ON [dbo].[Tags]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Tags_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tags_UpdatedUserId] ON [dbo].[Tags]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Type_CharacterId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Type_CharacterId] ON [dbo].[Type]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Type_TypeId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Type_TypeId] ON [dbo].[Type]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMetas_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserMetas_CreatedUserId] ON [dbo].[UserMetas]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMetas_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserMetas_UpdatedUserId] ON [dbo].[UserMetas]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMetas_UserInUseId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserMetas_UserInUseId] ON [dbo].[UserMetas]
(
	[UserInUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserNewtalks_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserNewtalks_CreatedUserId] ON [dbo].[UserNewtalks]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserNewtalks_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserNewtalks_UpdatedUserId] ON [dbo].[UserNewtalks]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserNewtalks_UserSeenId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserNewtalks_UserSeenId] ON [dbo].[UserNewtalks]
(
	[UserSeenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WatchLists_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WatchLists_CreatedUserId] ON [dbo].[WatchLists]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WatchLists_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WatchLists_UpdatedUserId] ON [dbo].[WatchLists]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WatchLists_WatchedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WatchLists_WatchedUserId] ON [dbo].[WatchLists]
(
	[WatchedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiImages_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WikiImages_CreatedUserId] ON [dbo].[WikiImages]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiImages_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WikiImages_UpdatedUserId] ON [dbo].[WikiImages]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiVideos_CreatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WikiVideos_CreatedUserId] ON [dbo].[WikiVideos]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiVideos_UpdatedUserId]    Script Date: 9/25/2016 10:09:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_WikiVideos_UpdatedUserId] ON [dbo].[WikiVideos]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_BelongToUserId] FOREIGN KEY([BelongToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_BelongToUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_PageContents_ContentId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[PageContents] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_PageContents_ContentId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_BlockByUserId] FOREIGN KEY([BlockByUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_BlockByUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_UserBlockedId] FOREIGN KEY([UserBlockedId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_UserBlockedId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_BlockedIps_BlockedIpId] FOREIGN KEY([BlockedIpId])
REFERENCES [dbo].[BlockedIps] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_BlockedIps_BlockedIpId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_WikiImages_CatImageId] FOREIGN KEY([CatImageId])
REFERENCES [dbo].[WikiImages] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_WikiImages_CatImageId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_CharacterInfoGroups_CharacterInfoGroupId] FOREIGN KEY([CharacterInfoGroupId])
REFERENCES [dbo].[CharacterInfoGroups] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_CharacterInfoGroups_CharacterInfoGroupId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_WikiImages_AvatarImageId] FOREIGN KEY([AvatarImageId])
REFERENCES [dbo].[WikiImages] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_WikiImages_AvatarImageId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_CharacterSectionGroups_CharacterSectionGroupId] FOREIGN KEY([CharacterSectionGroupId])
REFERENCES [dbo].[CharacterSectionGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_CharacterSectionGroups_CharacterSectionGroupId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_UploadedUserId] FOREIGN KEY([UploadedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_UploadedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_CharacterInfos_CharacterInfoId] FOREIGN KEY([CharacterInfoId])
REFERENCES [dbo].[CharacterInfos] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_CharacterInfos_CharacterInfoId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Categories_LocationType] FOREIGN KEY([LocationType])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Categories_LocationType]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_Categories_MoveCategoryId] FOREIGN KEY([MoveCategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_Categories_MoveCategoryId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_Categories_MoveType] FOREIGN KEY([MoveType])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_Categories_MoveType]
GO
ALTER TABLE [dbo].[PageContents]  WITH CHECK ADD  CONSTRAINT [FK_PageContents_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageContents] CHECK CONSTRAINT [FK_PageContents_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageContents]  WITH CHECK ADD  CONSTRAINT [FK_PageContents_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageContents] CHECK CONSTRAINT [FK_PageContents_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_Pages_PageId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_Pages_PageId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_Pages_PageId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_Tags_TagId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_WikiImages_FeatureImageId] FOREIGN KEY([FeatureImageId])
REFERENCES [dbo].[WikiImages] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_WikiImages_FeatureImageId]
GO
ALTER TABLE [dbo].[PokemonLocation]  WITH CHECK ADD  CONSTRAINT [FK_PokemonLocation_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonLocation] CHECK CONSTRAINT [FK_PokemonLocation_Characters_CharacterId]
GO
ALTER TABLE [dbo].[PokemonLocation]  WITH CHECK ADD  CONSTRAINT [FK_PokemonLocation_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonLocation] CHECK CONSTRAINT [FK_PokemonLocation_Locations_LocationId]
GO
ALTER TABLE [dbo].[PokemonMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonMove_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonMove] CHECK CONSTRAINT [FK_PokemonMove_Characters_CharacterId]
GO
ALTER TABLE [dbo].[PokemonMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonMove_Moves_MoveId] FOREIGN KEY([MoveId])
REFERENCES [dbo].[Moves] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonMove] CHECK CONSTRAINT [FK_PokemonMove_Moves_MoveId]
GO
ALTER TABLE [dbo].[PokemonSpecialMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonSpecialMove_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonSpecialMove] CHECK CONSTRAINT [FK_PokemonSpecialMove_Characters_CharacterId]
GO
ALTER TABLE [dbo].[PokemonSpecialMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonSpecialMove_Moves_MoveId] FOREIGN KEY([MoveId])
REFERENCES [dbo].[Moves] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonSpecialMove] CHECK CONSTRAINT [FK_PokemonSpecialMove_Moves_MoveId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UserProtectedId] FOREIGN KEY([UserProtectedId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UserProtectedId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_UserMakeChangeId] FOREIGN KEY([UserMakeChangeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_UserMakeChangeId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_BelongToUserId] FOREIGN KEY([BelongToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_BelongToUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_PageContents_PageContentId] FOREIGN KEY([PageContentId])
REFERENCES [dbo].[PageContents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_PageContents_PageContentId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_Pages_PageId]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_Categories_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Type] CHECK CONSTRAINT [FK_Type_Categories_TypeId]
GO
ALTER TABLE [dbo].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Type] CHECK CONSTRAINT [FK_Type_Characters_CharacterId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_UserInUseId] FOREIGN KEY([UserInUseId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_UserInUseId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_UserSeenId] FOREIGN KEY([UserSeenId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_UserSeenId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_WatchedUserId] FOREIGN KEY([WatchedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_WatchedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_AspNetUsers_UpdatedUserId]
GO
USE [master]
GO
ALTER DATABASE [EWiki] SET  READ_WRITE 
GO
