USE [master]
GO
/****** Object:  Database [Stepanyan_Georgy]    Script Date: 22.10.2024 12:16:42 ******/
CREATE DATABASE [Stepanyan_Georgy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stepanyan_Georgy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Stepanyan_Georgy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Stepanyan_Georgy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Stepanyan_Georgy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Stepanyan_Georgy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stepanyan_Georgy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stepanyan_Georgy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stepanyan_Georgy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stepanyan_Georgy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Stepanyan_Georgy] SET  MULTI_USER 
GO
ALTER DATABASE [Stepanyan_Georgy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stepanyan_Georgy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stepanyan_Georgy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Stepanyan_Georgy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Stepanyan_Georgy] SET QUERY_STORE = OFF
GO
USE [Stepanyan_Georgy]
GO
/****** Object:  Table [dbo].[Enter]    Script Date: 22.10.2024 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enter](
	[id] [int] NOT NULL,
	[Enter] [nvarchar](150) NULL,
 CONSTRAINT [PK_Enter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22.10.2024 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[Role] [nvarchar](150) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex]    Script Date: 22.10.2024 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex](
	[id] [int] NOT NULL,
	[Sex] [nvarchar](150) NULL,
 CONSTRAINT [PK_Sex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 22.10.2024 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[Id] [int] NOT NULL,
	[Role] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SurName] [nvarchar](150) NOT NULL,
	[PastName] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Login] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[PhoneNumber] [nvarchar](150) NOT NULL,
	[Passport] [nvarchar](150) NOT NULL,
	[BirthDate] [nvarchar](150) NULL,
	[LastEnter] [nvarchar](150) NULL,
	[Enter] [int] NULL,
	[Sex] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Enter] ([id], [Enter]) VALUES (1, N'Неуспешно')
INSERT [dbo].[Enter] ([id], [Enter]) VALUES (2, N'Успешно')
GO
INSERT [dbo].[Role] ([id], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([id], [Role]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Role] ([id], [Role]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[Sex] ([id], [Sex]) VALUES (1, N'ж')
INSERT [dbo].[Sex] ([id], [Sex]) VALUES (2, N'м')
GO
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (1, 3, N'Ян', N'Акимов', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7(781)-(785)-58-37', N' 2367  558134', N'03.07.1993', N'1,67523E+12', 2, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (2, 2, N'Ульяна', N'Гончарова', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7(230)-(906)-88-15', N' 7101  669343', N'22.06.1975', N'1,6763E+12', 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (3, 1, N'Елизавета', N'Анохина', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7(555)-(444)-83-16', N' 3455  719630', N'16.08.1991', N'1,67605E+12', 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (4, 3, N'Илья', N'Николаев', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7(392)-(682)-44-42', N' 2377  871623', N'22.12.1970', N'1,6754E+12', 2, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (5, 2, N'Дмитрий', N'Уткин', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7(836)-(429)-03-86', N' 8755  921148', N'04.05.1999', N'1,6765E+12', 1, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (6, 2, N'Стефания', N'Куликова', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7(283)-(945)-30-92', N' 4355  104594', N'06.12.1994', N'1,67615E+12', 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (7, 2, N'Егор', N'Волков', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7(621)-(359)-36-69', N' 2791  114390', N'28.03.1995', N'1,67649E+12', 2, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (8, 1, N'Софья', N'Соколова', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7(440)-(561)-03-14', N' 5582  126286', N'27.03.1977', N'1,6765E+12', 1, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (9, 3, N'Полина', N'Голубева', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7(331)-(918)-24-34', N' 2978  133653', N'12.04.1975', N'1,67558E+12', 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (10, 3, N'Мария', N'Вишневская', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7(493)-(219)-39-42', N' 7512  141956', N'23.12.1975', NULL, 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (11, 3, N'Арина', N'Васильева', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7(407)-(485)-50-30', N' 5046  158433', N'22.01.2000', NULL, 1, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (12, 3, N'Дмитрий', N'Павлов', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7(919)-(478)-24-97', N' 2460  169505', N'03.10.1983', N'1,67554E+12', 1, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (13, 2, N'Мирослава', N'Горбунова', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7(482)-(802)-95-80', N' 3412  174593', N'03.03.1998', N'1,67653E+12', 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (14, 3, N'София', N'Демина', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7(455)-(944)-64-49', N' 4950  183034', N'08.06.1993', N'1,67607E+12', 1, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (15, 2, N'Алина', N'Петрова', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7(710)-(388)-25-63', N' 5829  219464', N'23.09.1980', N'1,67527E+12', 2, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (16, 2, N'Григорий', N'Плотников', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7(759)-(452)-38-46', N' 6443  208059', N'13.03.1991', N'1,67588E+12', 2, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (17, 2, N'Есения', N'Прохорова', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7(687)-(801)-13-32', N' 7079  213265', N'14.04.1998', NULL, NULL, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (18, 2, N'Алексей', N'Чернов', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7(425)-(783)-22-53', N' 8207  522702', N'16.04.1980', N'1,67561E+12', 2, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (19, 3, N'Степан', N'Горбунов', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7(889)-(449)-43-91', N' 9307  232158', N'23.07.1993', N'1,67632E+12', 2, 2)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (20, 2, N'Софья', N'Рябинина', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7(825)-(301)-82-50', N' 1357  242839', N'01.06.1990', NULL, NULL, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (21, 2, N'Яна', N'Козлова', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7(397)-(334)-20-86', N' 1167  256636', N'21.12.1987', NULL, NULL, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (22, 3, N'Ульяна', N'Лукьянова', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7(241)-(570)-30-40', N' 1768  266986', N'22.10.1981', NULL, NULL, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (23, 2, N'Арина', N'Кондрашова', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7(713)-(462)-82-65', N' 1710  427875', N'22.12.1976', N'1,6758E+12', 1, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (24, 3, N'Виктория', N'Быкова', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7(854)-(822)-23-31', N' 1806  289145', N'14.06.1973', NULL, NULL, 1)
INSERT [dbo].[Workers] ([Id], [Role], [Name], [SurName], [PastName], [Email], [Login], [Password], [PhoneNumber], [Passport], [BirthDate], [LastEnter], [Enter], [Sex]) VALUES (25, 2, N'Тимофей', N'Гуляев', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7(439)-(713)-61-17', N' 1587  291249', N'05.02.1987', N'2023-02-01 13:07:20', 1, 2)
GO
USE [master]
GO
ALTER DATABASE [Stepanyan_Georgy] SET  READ_WRITE 
GO
