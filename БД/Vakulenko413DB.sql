USE [master]
GO
/****** Object:  Database [DBVakulenkoRequests413]    Script Date: 29.10.2024 10:21:46 ******/
CREATE DATABASE [DBVakulenkoRequests413]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBVakulenkoRequests413', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBVakulenkoRequests413.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBVakulenkoRequests413_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBVakulenkoRequests413_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBVakulenkoRequests413] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBVakulenkoRequests413].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET RECOVERY FULL 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET  MULTI_USER 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBVakulenkoRequests413] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBVakulenkoRequests413] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBVakulenkoRequests413', N'ON'
GO
ALTER DATABASE [DBVakulenkoRequests413] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBVakulenkoRequests413] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBVakulenkoRequests413]
GO
/****** Object:  Table [dbo].[User]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(100,1) NOT NULL,
	[UserFullName] [nvarchar](150) NOT NULL,
	[UserLogin] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[UserRoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Problem]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[ProblemID] [int] IDENTITY(1,1) NOT NULL,
	[ProblemName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Problem] PRIMARY KEY CLUSTERED 
(
	[ProblemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[PriorityID] [int] IDENTITY(1,1) NOT NULL,
	[PriorityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[PriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[StageID] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[StageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestDate] [date] NOT NULL,
	[RequestEquipmentID] [int] NOT NULL,
	[RequestProblemID] [int] NOT NULL,
	[RequestUserID] [int] NOT NULL,
	[RequestDescription] [nvarchar](250) NULL,
	[RequestStatusID] [int] NOT NULL,
	[RequestMasterID] [int] NOT NULL,
	[RequestTime] [int] NOT NULL,
	[RequestPriorityID] [int] NOT NULL,
	[RequestStageID] [int] NOT NULL,
	[RequestComment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Request_View]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Request_View]
AS
SELECT dbo.Request.RequestID, dbo.Request.RequestDate, dbo.Equipment.EquipmentName, dbo.Problem.ProblemName, Client.UserFullName AS Client, dbo.Request.RequestDescription, dbo.Status.StatusName, 
                  Master.UserFullName AS Master, dbo.Request.RequestTime, dbo.Request.RequestComment, dbo.Priority.PriorityName, dbo.Stage.StageName
FROM     dbo.Equipment INNER JOIN
                  dbo.Request ON dbo.Equipment.EquipmentID = dbo.Request.RequestEquipmentID INNER JOIN
                  dbo.Priority ON dbo.Request.RequestPriorityID = dbo.Priority.PriorityID INNER JOIN
                  dbo.Problem ON dbo.Request.RequestProblemID = dbo.Problem.ProblemID INNER JOIN
                  dbo.Stage ON dbo.Request.RequestStageID = dbo.Stage.StageID INNER JOIN
                  dbo.Status ON dbo.Request.RequestStatusID = dbo.Status.StatusID INNER JOIN
                  dbo.[User] AS Client ON dbo.Request.RequestUserID = Client.UserID INNER JOIN
                  dbo.[User] AS Master ON dbo.Request.RequestMasterID = Master.UserID
GO
/****** Object:  View [dbo].[GroupProblem]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GroupProblem]
AS
SELECT dbo.Problem.ProblemName, COUNT(*) AS CountProblem
FROM     dbo.Problem INNER JOIN
                  dbo.Request ON dbo.Problem.ProblemID = dbo.Request.RequestProblemID
GROUP BY dbo.Problem.ProblemName
GO
/****** Object:  Table [dbo].[Role]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (1, N'Токарный станок АП567')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (2, N'Фрезерный станок 12')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (3, N'Расточный станок ТИ90')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (4, N'Расточный станок ОР99')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (5, N'Расточный станок 55')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (6, N'Токарный станок ОР788')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (7, N'Сверлильный станок ВТ567')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (8, N'Лазерный станок для резки металла')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (9, N'Гибочный станок ВА34')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (10, N'Фрезерный станок 124')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (11, N'Фрезерный станок 45')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (12, N'Фрезерный станок ВА44')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (13, N'Фрезерный станок 766')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (14, N'Шлифовальный станок')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (15, N'Шлифовальный станок 66')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (16, N'Гибочный станок СМ44')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (17, N'Расточный станок СМИ56')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (18, N'Гибочный станок ВА35')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (19, N'Токарный станок ЛОР')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (20, N'Токарный станок')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (21, N'Плазменный станок ПС567')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (22, N'Шлифовальный станок РП77')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (23, N'Фрезерный станок 77')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (24, N'Токарный станок ФЫ567')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (25, N'Лазерный станок для резки металла ПА56')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName]) VALUES (26, N'Фрезерный станок РП77')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Priority] ON 

INSERT [dbo].[Priority] ([PriorityID], [PriorityName]) VALUES (1, N'Низкий')
INSERT [dbo].[Priority] ([PriorityID], [PriorityName]) VALUES (2, N'Высокий')
INSERT [dbo].[Priority] ([PriorityID], [PriorityName]) VALUES (3, N'Средний')
SET IDENTITY_INSERT [dbo].[Priority] OFF
GO
SET IDENTITY_INSERT [dbo].[Problem] ON 

INSERT [dbo].[Problem] ([ProblemID], [ProblemName]) VALUES (1, N'Механическая')
INSERT [dbo].[Problem] ([ProblemID], [ProblemName]) VALUES (2, N'Электрическая')
INSERT [dbo].[Problem] ([ProblemID], [ProblemName]) VALUES (3, N'Ошибки эксплуатации')
INSERT [dbo].[Problem] ([ProblemID], [ProblemName]) VALUES (4, N'Программная')
INSERT [dbo].[Problem] ([ProblemID], [ProblemName]) VALUES (5, N'Ненадлежащее обслуживание')
SET IDENTITY_INSERT [dbo].[Problem] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (1, CAST(N'2023-03-12' AS Date), 1, 1, 125, N'Износ элементов конструкции', 1, 105, 0, 1, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (2, CAST(N'2023-03-13' AS Date), 2, 2, 126, N'Нарушение в электрических цепях', 2, 110, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (3, CAST(N'2023-03-14' AS Date), 3, 3, 127, N'Износ деталей', 3, 105, 120, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (4, CAST(N'2023-03-15' AS Date), 4, 4, 128, N'Ошибки в работе управляещего ПО', 3, 105, 600, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (5, CAST(N'2023-03-16' AS Date), 5, 1, 129, N'Внешние признаки неработоспособности', 3, 119, 320, 1, 1, N'Ремонт полность выполнен без дополниетльных запчастей')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (6, CAST(N'2023-03-17' AS Date), 5, 1, 131, N'Появление дыма при работе', 1, 106, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (7, CAST(N'2023-03-18' AS Date), 6, 1, 131, N'Поломка механических деталей конструкции', 3, 137, 240, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (8, CAST(N'2023-03-19' AS Date), 7, 1, 101, N'Посторонние шумы', 3, 105, 360, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (9, CAST(N'2023-03-20' AS Date), 8, 2, 101, N'Нарушения в электрических компонентах', 3, 137, 720, 1, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (10, CAST(N'2023-03-21' AS Date), 9, 3, 102, N'Ошибки монтажа', 3, 146, 120, 3, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (11, CAST(N'2023-03-22' AS Date), 10, 5, 102, N'Попадание грязи и влаги', 3, 119, 600, 2, 1, N'Потребовались дополнительные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (12, CAST(N'2023-03-23' AS Date), 11, 2, 102, N'Нарушения в электрических соединениях', 2, 115, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (13, CAST(N'2023-03-24' AS Date), 9, 2, 107, N'Нарушения в электрических соединениях', 3, 119, 600, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (14, CAST(N'2023-03-25' AS Date), 8, 4, 107, N'Ошибки в работе прошивок', 3, 106, 320, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (15, CAST(N'2023-03-26' AS Date), 12, 4, 131, N'Ошибки в работе управляещего ПО', 3, 106, 480, 2, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (16, CAST(N'2023-03-27' AS Date), 13, 5, 107, N'Попадание грязи и влаги', 1, 137, 0, 1, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (17, CAST(N'2023-03-28' AS Date), 9, 1, 116, N'Износ элементов конструкции', 2, 110, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (18, CAST(N'2023-03-29' AS Date), 14, 1, 101, N'Износ элементов конструкции', 2, 110, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (19, CAST(N'2023-03-30' AS Date), 5, 3, 117, N'Износ деталей', 1, 146, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (20, CAST(N'2023-03-31' AS Date), 15, 1, 116, N'Поломка механических деталей конструкции', 1, 137, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (21, CAST(N'2023-04-01' AS Date), 16, 3, 134, N'Ошибки монтажа', 3, 106, 120, 1, 1, N'Ремонт полность выполнен без дополниетльных запчастей')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (22, CAST(N'2023-04-02' AS Date), 17, 3, 118, N'Воздействие вредных факторов среды', 3, 137, 600, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (23, CAST(N'2023-04-03' AS Date), 18, 2, 111, N'Нарушения в электрических компонентах', 3, 137, 320, 1, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (24, CAST(N'2023-04-04' AS Date), 18, 5, 145, N'Ошибки проектирования', 3, 105, 480, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (25, CAST(N'2023-04-05' AS Date), 19, 1, 116, N'Внешние признаки неработоспособности', 2, 137, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (26, CAST(N'2023-04-06' AS Date), 5, 5, 145, N'Воздействие вредных факторов среды', 2, 146, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (27, CAST(N'2023-04-07' AS Date), 16, 2, 150, N'Нарушение в электрических цепях', 3, 105, 720, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (28, CAST(N'2023-04-08' AS Date), 18, 1, 134, N'Появление дыма при работе', 3, 105, 120, 3, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (29, CAST(N'2023-04-09' AS Date), 15, 1, 116, N'Поломка механических деталей конструкции', 3, 146, 600, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (30, CAST(N'2023-04-10' AS Date), 20, 1, 117, N'Поломка механических деталей конструкции', 2, 105, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (31, CAST(N'2023-04-11' AS Date), 21, 5, 117, N'Загрязнение деталей', 3, 119, 600, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (32, CAST(N'2023-04-12' AS Date), 18, 4, 111, N'Ошибки в работе управляещего ПО', 1, 115, 0, 3, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (33, CAST(N'2023-04-13' AS Date), 22, 4, 134, N'Ошибки в работе прошивок', 3, 115, 480, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (34, CAST(N'2023-04-14' AS Date), 7, 5, 117, N'Загрязнение деталей', 1, 137, 0, 3, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (35, CAST(N'2023-04-15' AS Date), 18, 5, 117, N'Загрязнение деталей', 2, 106, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (36, CAST(N'2023-04-02' AS Date), 23, 2, 145, N'Нарушение в электрических цепях', 2, 137, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (37, CAST(N'2023-04-03' AS Date), 18, 2, 118, N'Нарушение в электрических цепях', 2, 110, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (38, CAST(N'2023-04-04' AS Date), 21, 1, 134, N'Износ элементов конструкции', 3, 137, 600, 2, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (39, CAST(N'2023-04-05' AS Date), 15, 1, 145, N'Износ элементов конструкции', 2, 137, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (40, CAST(N'2023-04-06' AS Date), 15, 1, 118, N'Посторонние шумы', 1, 105, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (41, CAST(N'2023-04-07' AS Date), 24, 1, 145, N'Появление дыма при работе', 3, 146, 320, 1, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (42, CAST(N'2023-04-08' AS Date), 21, 3, 145, N'Износ деталей', 2, 115, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (43, CAST(N'2023-04-09' AS Date), 16, 2, 117, N'Нарушения в электрических соединениях', 3, 105, 1260, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (44, CAST(N'2023-04-01' AS Date), 5, 1, 145, N'Поломка механических деталей конструкции', 2, 105, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (45, CAST(N'2023-04-02' AS Date), 16, 5, 117, N'Загрязнение деталей', 3, 137, 720, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (46, CAST(N'2023-04-03' AS Date), 25, 2, 145, N'Нарушения в электрических компонентах', 3, 110, 480, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (47, CAST(N'2023-04-04' AS Date), 21, 2, 111, N'Нарушение в электрических цепях', 3, 106, 320, 3, 1, N'Потребовались дополнительные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (48, CAST(N'2023-04-05' AS Date), 26, 5, 134, N'Загрязнение деталей', 1, 137, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (49, CAST(N'2023-04-06' AS Date), 25, 4, 145, N'Ошибки в работе управляещего ПО', 3, 115, 240, 3, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (50, CAST(N'2023-04-07' AS Date), 5, 1, 118, N'Посторонние шумы', 3, 105, 360, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (51, CAST(N'2024-10-28' AS Date), 1, 1, 101, N'', 2, 103, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (52, CAST(N'2024-10-28' AS Date), 1, 1, 101, N'', 2, 103, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (53, CAST(N'2024-10-28' AS Date), 1, 1, 101, N'', 2, 105, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (54, CAST(N'2024-10-28' AS Date), 1, 1, 101, N'', 2, 105, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (55, CAST(N'2024-10-28' AS Date), 1, 1, 101, N'', 2, 103, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestEquipmentID], [RequestProblemID], [RequestUserID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPriorityID], [RequestStageID], [RequestComment]) VALUES (56, CAST(N'2024-10-28' AS Date), 1, 1, 101, N'Првиет', 2, 103, 0, 1, 2, N'')
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Заказчик
')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Мастер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Оператор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stage] ON 

INSERT [dbo].[Stage] ([StageID], [StageName]) VALUES (1, N'Выполнено')
INSERT [dbo].[Stage] ([StageID], [StageName]) VALUES (2, N'В работе')
INSERT [dbo].[Stage] ([StageID], [StageName]) VALUES (3, N'Не выполнено')
SET IDENTITY_INSERT [dbo].[Stage] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'В ожидании')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'В работе')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (3, N'Выполнено')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (101, N'Ефремов Сергей Пантелеймонович', N'loginDEppn2018', N'6}i+FD', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (102, N'Родионова Тамара Валентиновна', N'loginDElqb2018', N'RNynil', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (103, N'Миронова Галина Улебовна', N'loginDEydn2018', N'34I}X9', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (104, N'Сидоров Роман Иринеевич', N'loginDEijg2018', N'4QlKJW', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (105, N'Ситников Парфений Всеволодович', N'loginDEdpy2018', N'MJ0W|f', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (106, N'Никонов Роман Геласьевич', N'loginDEwdm2018', N'&PynqU', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (107, N'Щербаков Владимир Матвеевич', N'loginDEdup2018', N'JM+2{s', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (108, N'Кулаков Мартын Михаилович', N'loginDEhbm2018', N'9aObu4', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (109, N'Сазонова Оксана Лаврентьевна', N'loginDExvq2018', N'hX0wJz', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (110, N'Архипов Варлам Мэлорович', N'loginDErks2018', N'LQNSjo', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (111, N'Устинова Ираида Мэлоровна', N'loginDErvb2018', N'ceAf&R', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (112, N'Лукин Георгий Альбертович', N'loginDEulo2018', N'fg56DRgh', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (113, N'Кононов Эдуард Валентинович', N'loginDEgfw2018', N'3c2Ic1', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (114, N'Орехова Клавдия Альбертовна', N'loginDEmxb2018', N'ZPXcRS', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (115, N'Яковлев Яков Эдуардович', N'loginDEgeq2018', N'&&Eim0', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (116, N'Воронов Мэлс Семёнович', N'loginDEkhj2018', N'Pbc0t{', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (117, N'Вишнякова Ия Данииловна', N'loginDEliu2018', N'32FyTl', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (118, N'Третьяков Фёдор Вадимович', N'loginDEsmf2018', N'{{O2QG', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (119, N'Макаров Максим Ильяович', N'loginDEutd2018', N'GbcJvC', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (120, N'Шубина Маргарита Анатольевна', N'loginDEpgh2018', N'YV2lvh', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (121, N'Блинова Ангелина Владленовна', N'loginDEvop2018', N'pBP8rO', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (122, N'Воробьёв Владлен Фролович', N'loginDEwjo2018', N'EQaD|d', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (123, N'Сорокина Прасковья Фёдоровна', N'loginDEbur2018', N'aZKGeI', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (124, N'Давыдов Яков Антонович', N'loginDEszw2018', N'EGU{YE', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (125, N'Рыбакова Евдокия Анатольевна', N'loginDExsu2018', N'*2RMsp', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (126, N'Маслов Геннадий Фролович', N'loginDEztn2018', N'nJBZpU', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (127, N'Цветкова Элеонора Аристарховна', N'loginDEtmn2018', N'UObB}N', 4)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (128, N'Евдокимов Ростислав Александрович', N'loginDEhep2018', N'SwRicr', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (129, N'Никонова Венера Станиславовна', N'loginDEevr2018', N'zO5l}l', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (130, N'Громов Егор Антонович', N'loginDEnpa2018', N'M*QLjf', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (131, N'Суворова Валерия Борисовна', N'loginDEgyt2018', N'Pav+GP', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (132, N'Мишина Елизавета Романовна', N'loginDEbrr2018', N'Z7L|+i', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (133, N'Зимина Ольга Аркадьевна', N'loginDEyoo2018', N'UG1BjP', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (134, N'Игнатьев Игнатий Антонинович', N'loginDEaob2018', N'3fy+3I', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (135, N'Пахомова Зинаида Витальевна', N'loginDEwtz2018', N'&GxSST', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (136, N'Устинов Владимир Федосеевич', N'loginDEctf2018', N'sjt*3N', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (137, N'Кулаков Мэлор Вячеславович', N'loginDEipm2018', N'MAZl6|', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (138, N'Сазонов Авксентий Брониславович', N'loginDEjoi2018', N'o}C4jv', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (139, N'Бурова Наина Брониславовна', N'loginDEwap2018', N'4hny7k', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (140, N'Фадеев Демьян Федосеевич', N'loginDEaxm2018', N'BEc3xq', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (141, N'Бобылёва Дарья Якуновна', N'loginDEsmq2018', N'ATVmM7', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (142, N'Виноградов Созон Арсеньевич', N'loginDEeur2018', N'n4V{wP', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (143, N'Гордеев Владлен Ефимович', N'loginDEvke2018', N'WQLXSl', 4)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (144, N'Иванова Зинаида Валерьевна', N'loginDEvod2018', N'0EW93v', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (145, N'Гусев Руслан Дамирович', N'loginDEjaw2018', N'h6z&Ky', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (146, N'Маслов Дмитрий Иванович', N'loginDEpdp2018', N'8NvRfC', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (147, N'Антонова Ульяна Семёновна', N'loginDEjpp2018', N'oMOQq3', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (148, N'Орехова Людмила Владимировна', N'loginDEkiy2018', N'BQzsts', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (149, N'Авдеева Жанна Куприяновна', N'loginDEhmn2018', N'a|Iz|7', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (150, N'Кузнецов Фрол Варламович', N'loginDEfmn2018', N'cw3|03', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Equipment] FOREIGN KEY([RequestEquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Equipment]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Priority] FOREIGN KEY([RequestPriorityID])
REFERENCES [dbo].[Priority] ([PriorityID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Priority]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Problem] FOREIGN KEY([RequestProblemID])
REFERENCES [dbo].[Problem] ([ProblemID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Problem]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Stage] FOREIGN KEY([RequestStageID])
REFERENCES [dbo].[Stage] ([StageID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Stage]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([RequestStatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([RequestUserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User1] FOREIGN KEY([RequestMasterID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
/****** Object:  StoredProcedure [dbo].[GetRequestMasterName]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRequestMasterName]
	
	@NameMaster nvarchar(150) = null
AS
BEGIN
	SELECT *
	FROM dbo.Request INNER JOIN
	dbo.[User] ON dbo.Request.RequestMasterID = dbo.[User].UserID
	WHERE dbo.[User].UserFullName = @NameMaster AND dbo.Request.RequestStatusID = 3
END
GO
/****** Object:  StoredProcedure [dbo].[GetRequestMasterShortName]    Script Date: 29.10.2024 10:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRequestMasterShortName]	
	@MasterName nvarchar(150) = null
AS
BEGIN
	SELECT *
	FROM dbo.Request INNER JOIN
	dbo.[User] ON dbo.Request.RequestMasterID = dbo.[User].UserID
	WHERE dbo.[User].UserFullName LIKE ('%' + @MasterName + '%')

END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[18] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Request"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 351
               Right = 373
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Problem"
            Begin Extent = 
               Top = 14
               Left = 515
               Bottom = 193
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1416
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GroupProblem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GroupProblem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[14] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -120
         Left = -59
      End
      Begin Tables = 
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 0
               Left = 145
               Bottom = 119
               Right = 352
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 0
               Left = 437
               Bottom = 342
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Priority"
            Begin Extent = 
               Top = 310
               Left = 88
               Bottom = 429
               Right = 282
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Problem"
            Begin Extent = 
               Top = 0
               Left = 762
               Bottom = 119
               Right = 956
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stage"
            Begin Extent = 
               Top = 147
               Left = 114
               Bottom = 282
               Right = 308
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Status"
            Begin Extent = 
               Top = 348
               Left = 733
               Bottom = 467
               Right = 927
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Client"
            Begin Extent = 
               Top = 440
               Left = 73
               Bottom = 636
               Right = 292
            End
            DisplayFlags = 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Request_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'80
            TopColumn = 0
         End
         Begin Table = "Master"
            Begin Extent = 
               Top = 146
               Left = 776
               Bottom = 336
               Right = 1004
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 2904
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1752
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1440
         Or = 948
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Request_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Request_View'
GO
USE [master]
GO
ALTER DATABASE [DBVakulenkoRequests413] SET  READ_WRITE 
GO
