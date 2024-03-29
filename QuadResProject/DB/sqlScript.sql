USE [master]
GO
/****** Object:  Database [Vaijayanthi]    Script Date: 12-08-2019 15:24:15 ******/
CREATE DATABASE [Vaijayanthi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vaijayanthi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Vaijayanthi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Vaijayanthi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Vaijayanthi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Vaijayanthi] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vaijayanthi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Vaijayanthi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Vaijayanthi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Vaijayanthi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Vaijayanthi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Vaijayanthi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Vaijayanthi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Vaijayanthi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Vaijayanthi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Vaijayanthi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Vaijayanthi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Vaijayanthi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Vaijayanthi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Vaijayanthi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Vaijayanthi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Vaijayanthi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Vaijayanthi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Vaijayanthi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Vaijayanthi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Vaijayanthi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Vaijayanthi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Vaijayanthi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Vaijayanthi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Vaijayanthi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Vaijayanthi] SET  MULTI_USER 
GO
ALTER DATABASE [Vaijayanthi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Vaijayanthi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Vaijayanthi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Vaijayanthi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Vaijayanthi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Vaijayanthi] SET QUERY_STORE = OFF
GO
USE [Vaijayanthi]
GO
/****** Object:  Table [dbo].[empDatatbl12]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empDatatbl12](
	[EmpId] [int] IDENTITY(101,1) NOT NULL,
	[EmpName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeData]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeData](
	[EmployeeId] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](15) NOT NULL,
	[EmpPassword] [nvarchar](50) NOT NULL,
	[ConfirmPassword] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[JobRole] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRegistrationDetailstbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRegistrationDetailstbl](
	[EmployeeId] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[LoginPassword] [varchar](50) NULL,
	[EmployeeRole] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [money] NULL,
	[EmployeeAddress] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTable]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTable](
	[EmpID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_EmployeeTable] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTimesheet]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTimesheet](
	[EmployeeID] [nvarchar](50) NOT NULL,
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[Task] [nvarchar](max) NOT NULL,
	[TimeSpent] [float] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeTimesheet] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTimesheettbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTimesheettbl](
	[EmployeeID] [nvarchar](50) NULL,
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[Task] [nvarchar](max) NULL,
	[TimeSpent] [float] NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emplyeeDetails]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emplyeeDetails](
	[eno] [int] NULL,
	[ename] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[mobile] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamNewtbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamNewtbl](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teamstbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teamstbl](
	[TeamsId] [nvarchar](50) NOT NULL,
	[TeamName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheettbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheettbl](
	[TimesheetId] [varchar](50) NULL,
	[TaskNo] [int] NOT NULL,
	[TaskName] [nvarchar](max) NOT NULL,
	[TimeSpent] [smallint] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkItemNewtbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemNewtbl](
	[WorkItemId] [int] NOT NULL,
	[AssignedTo] [nvarchar](100) NULL,
	[Title] [nvarchar](max) NULL,
	[TaskDescription] [nvarchar](max) NULL,
	[TaskStatus] [nvarchar](50) NULL,
	[TeamNameId] [int] NULL,
	[Team] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkItemstbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemstbl](
	[WorkItemId] [nvarchar](50) NULL,
	[WorkItems] [nvarchar](max) NULL,
	[WorkItemStatus] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkItemtbl]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemtbl](
	[WorkItemId] [nvarchar](50) NOT NULL,
	[AssignedTo] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[TaskDescription] [nvarchar](max) NULL,
	[TaskStatus] [nvarchar](50) NULL,
	[TeamNameId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkItemtblNew]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemtblNew](
	[WorkItemId] [nvarchar](50) NOT NULL,
	[AssignedTo] [nvarchar](100) NULL,
	[Title] [nvarchar](max) NULL,
	[TaskDescription] [nvarchar](max) NULL,
	[TaskStatus] [nvarchar](50) NULL,
	[TeamNameId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeeTimesheet]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeTable] ([EmpID])
GO
ALTER TABLE [dbo].[EmployeeTimesheettbl]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeTable] ([EmpID])
GO
ALTER TABLE [dbo].[TimeSheettbl]  WITH CHECK ADD FOREIGN KEY([TimesheetId])
REFERENCES [dbo].[EmployeeRegistrationDetailstbl] ([EmployeeId])
GO
ALTER TABLE [dbo].[WorkItemNewtbl]  WITH CHECK ADD FOREIGN KEY([TeamNameId])
REFERENCES [dbo].[TeamNewtbl] ([TeamId])
GO
ALTER TABLE [dbo].[WorkItemstbl]  WITH CHECK ADD FOREIGN KEY([WorkItemId])
REFERENCES [dbo].[EmployeeTable] ([EmpID])
GO
ALTER TABLE [dbo].[WorkItemtbl]  WITH CHECK ADD FOREIGN KEY([TeamNameId])
REFERENCES [dbo].[Teamstbl] ([TeamsId])
GO
ALTER TABLE [dbo].[WorkItemtblNew]  WITH CHECK ADD FOREIGN KEY([TeamNameId])
REFERENCES [dbo].[Teamstbl] ([TeamsId])
GO
/****** Object:  StoredProcedure [dbo].[Validate_User]    Script Date: 12-08-2019 15:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [dbo].[Validate_User] 'qr-21',''



CREATE PROCEDURE [dbo].[Validate_User]
      @EmployeeId NVARCHAR(20),
      @Email NVARCHAR(20)
AS
BEGIN
      SET NOCOUNT ON;
      DECLARE @userCount INT
      
      SELECT @userCount = count(*)
      FROM EmployeeData WHERE EmployeeId = @EmployeeId or Email = @Email
      
      select @userCount
END

GO
USE [master]
GO
ALTER DATABASE [Vaijayanthi] SET  READ_WRITE 
GO
