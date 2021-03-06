USE [master]
GO
/****** Object:  Database [CatSolution]    Script Date: 17/06/2017 11:59:48 ******/
CREATE DATABASE [CatSolution] ON  PRIMARY 
( NAME = N'CatSolution', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CatSolution.mdf' , SIZE = 4352KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CatSolution_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CatSolution_log.LDF' , SIZE = 5824KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CatSolution] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CatSolution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CatSolution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CatSolution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CatSolution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CatSolution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CatSolution] SET ARITHABORT OFF 
GO
ALTER DATABASE [CatSolution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CatSolution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CatSolution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CatSolution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CatSolution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CatSolution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CatSolution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CatSolution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CatSolution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CatSolution] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CatSolution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CatSolution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CatSolution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CatSolution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CatSolution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CatSolution] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CatSolution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CatSolution] SET RECOVERY FULL 
GO
ALTER DATABASE [CatSolution] SET  MULTI_USER 
GO
ALTER DATABASE [CatSolution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CatSolution] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CatSolution', N'ON'
GO
USE [CatSolution]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[WorkSpaceId] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventLogs]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventLogs](
	[EventLogId] [int] IDENTITY(1,1) NOT NULL,
	[EventLogTypeId] [tinyint] NOT NULL,
	[Source] [varchar](128) NULL,
	[Message] [varchar](500) NOT NULL,
	[MessageException] [varchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_EventLog] PRIMARY KEY CLUSTERED 
(
	[EventLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventLogTypes]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventLogTypes](
	[EventLogTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EventLogType] PRIMARY KEY CLUSTERED 
(
	[EventLogTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_Application]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Application](
	[ApplicationId] [tinyint] IDENTITY(1,1) NOT NULL,
	[ModuleId] [tinyint] NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Tooltip] [varchar](100) NOT NULL,
	[Author] [varchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[HostName] [varchar](20) NOT NULL,
	[HostUri] [nvarchar](256) NOT NULL,
	[PathName] [varchar](15) NOT NULL,
	[PathUri] [nvarchar](256) NOT NULL,
	[Icon] [varchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SYS_Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_Authorization]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Authorization](
	[UserId] [nvarchar](128) NOT NULL,
	[OptionId] [smallint] NOT NULL,
	[CompanyId] [tinyint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[UserRegistration] [varchar](50) NOT NULL,
	[UserModification] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_Authorization] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[OptionId] ASC,
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_ClientApp]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ClientApp](
	[Id] [nvarchar](128) NOT NULL,
	[Secret] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ApplicationType] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[RefreshTokenLifeTime] [int] NOT NULL,
	[AllowedOrigin] [nvarchar](100) NULL,
 CONSTRAINT [PK_SYS_ClientApp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_Company]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Company](
	[CompanyId] [tinyint] IDENTITY(1,1) NOT NULL,
	[WorkSpaceId] [int] NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[BusinessName] [varchar](100) NOT NULL,
	[AlternateCode] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL,
	[Canceled] [bit] NOT NULL,
	[UserRegistration] [nvarchar](256) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SYS_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_DetailAuthorization]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_DetailAuthorization](
	[UserId] [nvarchar](128) NOT NULL,
	[OptionId] [smallint] NOT NULL,
	[CompanyId] [tinyint] NOT NULL,
	[DetailOptionId] [smallint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[UserRegistration] [varchar](50) NOT NULL,
	[UserModification] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_DetailAuthorization] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[OptionId] ASC,
	[CompanyId] ASC,
	[DetailOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_DetailOption]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_DetailOption](
	[DetailOptionId] [smallint] IDENTITY(1,1) NOT NULL,
	[OptionId] [smallint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ControllerName] [varchar](50) NOT NULL,
	[ActionName] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_DetailOption] PRIMARY KEY CLUSTERED 
(
	[DetailOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_DetailWorkSpace]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_DetailWorkSpace](
	[DetailWorkSpaceId] [int] IDENTITY(1,1) NOT NULL,
	[WorkSpaceId] [int] NOT NULL,
	[ApplicationId] [tinyint] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_DetailWorkSpace] PRIMARY KEY CLUSTERED 
(
	[DetailWorkSpaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_Module]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Module](
	[ModuleId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[ShortName] [varchar](15) NOT NULL,
	[Tooltip] [varchar](100) NOT NULL,
	[Icon] [varchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_Option]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Option](
	[OptionId] [smallint] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [tinyint] NOT NULL,
	[ParentId] [smallint] NULL,
	[Name] [varchar](30) NOT NULL,
	[Tooltip] [varchar](100) NOT NULL,
	[Sequence] [tinyint] NOT NULL,
	[ViewClass] [varchar](100) NOT NULL,
	[ViewType] [varchar](50) NOT NULL,
	[Icon] [varchar](30) NOT NULL,
	[Leaf] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_Option] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_RefreshToken]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_RefreshToken](
	[Id] [nvarchar](128) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[ClientId] [nvarchar](50) NOT NULL,
	[IssuedUtc] [datetime] NOT NULL,
	[ExpiresUtc] [datetime] NOT NULL,
	[ProtectedTicket] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SYS_RefreshToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_UserCompany]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_UserCompany](
	[UserId] [nvarchar](128) NOT NULL,
	[CompanyId] [tinyint] NOT NULL,
	[Principal] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_UserCompany] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_WorkSpace]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_WorkSpace](
	[WorkSpaceId] [int] IDENTITY(1,1) NOT NULL,
	[WorkSpaceTypeId] [tinyint] NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Domain] [varchar](50) NOT NULL,
	[MonthsTest] [tinyint] NOT NULL,
	[MaxUsers] [smallint] NOT NULL,
	[PricePerUser] [decimal](18, 4) NOT NULL,
	[MaxCompanies] [tinyint] NOT NULL,
	[PricePerCompany] [decimal](18, 4) NOT NULL,
	[Discount] [decimal](18, 4) NOT NULL,
	[Contact] [varchar](100) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Telephone] [varchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_WorkSpace] PRIMARY KEY CLUSTERED 
(
	[WorkSpaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_SYS_WorkSpace] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_WorkSpaceType]    Script Date: 17/06/2017 11:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_WorkSpaceType](
	[WorkSpaceTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_WorkSpaceType] PRIMARY KEY CLUSTERED 
(
	[WorkSpaceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 17/06/2017 11:59:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 17/06/2017 11:59:48 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 17/06/2017 11:59:48 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 17/06/2017 11:59:48 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 17/06/2017 11:59:48 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 17/06/2017 11:59:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_SYS_WorkSpace] FOREIGN KEY([WorkSpaceId])
REFERENCES [dbo].[SYS_WorkSpace] ([WorkSpaceId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_SYS_WorkSpace]
GO
ALTER TABLE [dbo].[EventLogs]  WITH CHECK ADD  CONSTRAINT [FK_EventLog_EventLogType] FOREIGN KEY([EventLogTypeId])
REFERENCES [dbo].[EventLogTypes] ([EventLogTypeId])
GO
ALTER TABLE [dbo].[EventLogs] CHECK CONSTRAINT [FK_EventLog_EventLogType]
GO
ALTER TABLE [dbo].[SYS_Application]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Application_SYS_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[SYS_Module] ([ModuleId])
GO
ALTER TABLE [dbo].[SYS_Application] CHECK CONSTRAINT [FK_SYS_Application_SYS_Module]
GO
ALTER TABLE [dbo].[SYS_Authorization]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Authorization_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SYS_Authorization] CHECK CONSTRAINT [FK_SYS_Authorization_AspNetUsers]
GO
ALTER TABLE [dbo].[SYS_Authorization]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Authorization_SYS_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[SYS_Company] ([CompanyId])
GO
ALTER TABLE [dbo].[SYS_Authorization] CHECK CONSTRAINT [FK_SYS_Authorization_SYS_Company]
GO
ALTER TABLE [dbo].[SYS_Authorization]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Authorization_SYS_Option] FOREIGN KEY([OptionId])
REFERENCES [dbo].[SYS_Option] ([OptionId])
GO
ALTER TABLE [dbo].[SYS_Authorization] CHECK CONSTRAINT [FK_SYS_Authorization_SYS_Option]
GO
ALTER TABLE [dbo].[SYS_Company]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Company_SYS_WorkSpace] FOREIGN KEY([WorkSpaceId])
REFERENCES [dbo].[SYS_WorkSpace] ([WorkSpaceId])
GO
ALTER TABLE [dbo].[SYS_Company] CHECK CONSTRAINT [FK_SYS_Company_SYS_WorkSpace]
GO
ALTER TABLE [dbo].[SYS_DetailAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_SYS_DetailAuthorization_SYS_Authorization] FOREIGN KEY([UserId], [OptionId], [CompanyId])
REFERENCES [dbo].[SYS_Authorization] ([UserId], [OptionId], [CompanyId])
GO
ALTER TABLE [dbo].[SYS_DetailAuthorization] CHECK CONSTRAINT [FK_SYS_DetailAuthorization_SYS_Authorization]
GO
ALTER TABLE [dbo].[SYS_DetailOption]  WITH CHECK ADD  CONSTRAINT [FK_SYS_DetailOption_SYS_Option] FOREIGN KEY([OptionId])
REFERENCES [dbo].[SYS_Option] ([OptionId])
GO
ALTER TABLE [dbo].[SYS_DetailOption] CHECK CONSTRAINT [FK_SYS_DetailOption_SYS_Option]
GO
ALTER TABLE [dbo].[SYS_DetailWorkSpace]  WITH CHECK ADD  CONSTRAINT [FK_SYS_DetailWorkSpace_SYS_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[SYS_Application] ([ApplicationId])
GO
ALTER TABLE [dbo].[SYS_DetailWorkSpace] CHECK CONSTRAINT [FK_SYS_DetailWorkSpace_SYS_Application]
GO
ALTER TABLE [dbo].[SYS_DetailWorkSpace]  WITH CHECK ADD  CONSTRAINT [FK_SYS_DetailWorkSpace_SYS_WorkSpace] FOREIGN KEY([WorkSpaceId])
REFERENCES [dbo].[SYS_WorkSpace] ([WorkSpaceId])
GO
ALTER TABLE [dbo].[SYS_DetailWorkSpace] CHECK CONSTRAINT [FK_SYS_DetailWorkSpace_SYS_WorkSpace]
GO
ALTER TABLE [dbo].[SYS_Option]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Option_SYS_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[SYS_Application] ([ApplicationId])
GO
ALTER TABLE [dbo].[SYS_Option] CHECK CONSTRAINT [FK_SYS_Option_SYS_Application]
GO
ALTER TABLE [dbo].[SYS_Option]  WITH CHECK ADD  CONSTRAINT [FK_SYS_Option_SYS_Option] FOREIGN KEY([ParentId])
REFERENCES [dbo].[SYS_Option] ([OptionId])
GO
ALTER TABLE [dbo].[SYS_Option] CHECK CONSTRAINT [FK_SYS_Option_SYS_Option]
GO
ALTER TABLE [dbo].[SYS_UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_SYS_UserCompany_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SYS_UserCompany] CHECK CONSTRAINT [FK_SYS_UserCompany_AspNetUsers]
GO
ALTER TABLE [dbo].[SYS_UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_SYS_UserCompany_SYS_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[SYS_Company] ([CompanyId])
GO
ALTER TABLE [dbo].[SYS_UserCompany] CHECK CONSTRAINT [FK_SYS_UserCompany_SYS_Company]
GO
ALTER TABLE [dbo].[SYS_WorkSpace]  WITH CHECK ADD  CONSTRAINT [FK_SYS_WorkSpace_SYS_WorkSpaceType] FOREIGN KEY([WorkSpaceTypeId])
REFERENCES [dbo].[SYS_WorkSpaceType] ([WorkSpaceTypeId])
GO
ALTER TABLE [dbo].[SYS_WorkSpace] CHECK CONSTRAINT [FK_SYS_WorkSpace_SYS_WorkSpaceType]
GO
USE [master]
GO
ALTER DATABASE [CatSolution] SET  READ_WRITE 
GO
