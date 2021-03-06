USE [master]
GO
/****** Object:  Database [Group Project]    Script Date: 4/20/2018 10:57:03 AM ******/
CREATE DATABASE [Group Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Group Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Group Project.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Group Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Group Project_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Group Project] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Group Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Group Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Group Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Group Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Group Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Group Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Group Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Group Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Group Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Group Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Group Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Group Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Group Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Group Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Group Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Group Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Group Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Group Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Group Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Group Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Group Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Group Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Group Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Group Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Group Project] SET  MULTI_USER 
GO
ALTER DATABASE [Group Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Group Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Group Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Group Project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Group Project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Group Project]
GO
/****** Object:  Table [dbo].[tblAnswers]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAnswers](
	[questionID] [int] NOT NULL,
	[answerID] [int] NOT NULL,
	[answerInput] [varchar](50) NOT NULL,
	[answererID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblAnswers] PRIMARY KEY CLUSTERED 
(
	[questionID] ASC,
	[answerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblQuestions]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQuestions](
	[questionID] [int] NOT NULL,
	[surveyID] [int] NOT NULL,
	[questionTxt] [varchar](300) NOT NULL,
	[questionType] [varchar](50) NOT NULL,
	[questionChoices] [varchar](50) NULL,
 CONSTRAINT [PK_tblQuestions] PRIMARY KEY CLUSTERED 
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSurveys]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSurveys](
	[surveyID] [int] NOT NULL,
	[surveyName] [varchar](50) NOT NULL,
	[surveyDescription] [varchar](200) NULL,
 CONSTRAINT [PK_UserServeys] PRIMARY KEY CLUSTERED 
(
	[surveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[surveyID] [int] NULL,
	[firstName] [varchar](20) NOT NULL,
	[lastName] [varchar](20) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblAnswers] ([questionID], [answerID], [answerInput], [answererID]) VALUES (101, 111, N'A', N'AnonymousAnswerer')
INSERT [dbo].[tblAnswers] ([questionID], [answerID], [answerInput], [answererID]) VALUES (102, 112, N'AC', N'AnonymousAnswerer')
INSERT [dbo].[tblAnswers] ([questionID], [answerID], [answerInput], [answererID]) VALUES (103, 113, N'whatever you would like', N'AnonymousAnswerer')
INSERT [dbo].[tblAnswers] ([questionID], [answerID], [answerInput], [answererID]) VALUES (201, 121, N'Yes.', N'AnonymousAnswerer')
INSERT [dbo].[tblQuestions] ([questionID], [surveyID], [questionTxt], [questionType], [questionChoices]) VALUES (101, 100001, N'Which input is labelled "A"?', N'radiobutton', N'ABCD')
INSERT [dbo].[tblQuestions] ([questionID], [surveyID], [questionTxt], [questionType], [questionChoices]) VALUES (102, 100001, N'Which inputs are labelled "A" and "C"?', N'checkbox', N'ABCD')
INSERT [dbo].[tblQuestions] ([questionID], [surveyID], [questionTxt], [questionType], [questionChoices]) VALUES (103, 100001, N'Type whatever you would like into the textbox.', N'textbox', NULL)
INSERT [dbo].[tblQuestions] ([questionID], [surveyID], [questionTxt], [questionType], [questionChoices]) VALUES (201, 100002, N'Was Abraham Lincoln a good president?', N'radiobutton', N'Yes.')
INSERT [dbo].[tblSurveys] ([surveyID], [surveyName], [surveyDescription]) VALUES (100001, N'dummySurvey', N'Test Survey to ascertain successful functionality.')
INSERT [dbo].[tblSurveys] ([surveyID], [surveyName], [surveyDescription]) VALUES (100002, N'Abe Lincoln Survey', N'Was Abe Lincoln a good president?')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'mmuser', N'mmpass', NULL, N'Man', N'Mannfred', N'mm@test.com')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'test', N'test', NULL, N'test', N'test', N'test@test.com')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'test1', N'test1', NULL, N'test1', N'test1', N'test1@test.com')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'tt', N'tt', NULL, N'tt', N'tt', N'tt@tt.com')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'USER1', N'dummypass1', 100001, N'Bryce', N'Chavez', N'bachavez@shockers.wichita.edu')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'USER2', N'dummypass1', 100002, N'Abraham', N'Lincoln', N'alincolngetty@gmail.com')
INSERT [dbo].[tblUser] ([UserName], [Password], [surveyID], [firstName], [lastName], [email]) VALUES (N'zeta', N'zeta', NULL, N'Zeta', N'Reticulan', N'zeta@gmail.com')
ALTER TABLE [dbo].[tblAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblAnswers_tblQuestions1] FOREIGN KEY([questionID])
REFERENCES [dbo].[tblQuestions] ([questionID])
GO
ALTER TABLE [dbo].[tblAnswers] CHECK CONSTRAINT [FK_tblAnswers_tblQuestions1]
GO
ALTER TABLE [dbo].[tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblQuestions_tblSurveys] FOREIGN KEY([surveyID])
REFERENCES [dbo].[tblSurveys] ([surveyID])
GO
ALTER TABLE [dbo].[tblQuestions] CHECK CONSTRAINT [FK_tblQuestions_tblSurveys]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblSurveys] FOREIGN KEY([surveyID])
REFERENCES [dbo].[tblSurveys] ([surveyID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblSurveys]
GO
/****** Object:  StoredProcedure [dbo].[AddAnswer]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddAnswer]
	@QuestionID int, @AnswerID int, @AnswerInput varchar(50), @answererID varchar(50)
AS
BEGIN
SET @answererID= round(rand()*100000,0)
	INSERT INTO tblAnswers (questionID, answerID, answerInput, answererID) values (@QuestionID, @AnswerID, @AnswerInput, @answererID)
	SELECT @@IDENTITY
END


GO
/****** Object:  StoredProcedure [dbo].[AddQuestion]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Bryce Chavez>
-- Description:	<Add a survey>
-- =============================================


CREATE PROCEDURE [dbo].[AddQuestion] 
	@questionID int, @questiontxt varchar(300), @questiontype varchar(50), @questionchoices varchar(50)
AS
BEGIN
	

	INSERT INTO tblQuestions(questionID, questionTxt, questionType, questionChoices) values (@questionID, @questiontxt, @questiontype, @questionchoices)
	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[AddSurvey]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Bryce Chavez>
-- Description:	<Add a survey>
-- =============================================


CREATE PROCEDURE [dbo].[AddSurvey] 
	@surveyID int, @surveyname varchar(50), @surveydescription varchar(200)
AS
BEGIN
	

	INSERT INTO tblSurveys(surveyID, surveyName, surveyDescription) values (@surveyID, @surveyName, @surveydescription)
	SELECT @@IDENTITY
END





GO
/****** Object:  StoredProcedure [dbo].[DeleteQuestion]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Bryce Chavez>
-- Description:	<delete a question>
-- =============================================





CREATE PROCEDURE [dbo].[DeleteQuestion] 
@questionID int
AS
BEGIN
DELETE FROM tblQuestions	where questionID = @questionID
    
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteSurvey]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteSurvey] 
@surveyid int
AS
BEGIN
DELETE FROM tblSurveys	where surveyID = @surveyid
    
END



GO
/****** Object:  StoredProcedure [dbo].[EditSurvey]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EditSurvey] 
	@surveyID int, @surveyname varchar(50), @surveydescription varchar(200)
AS
BEGIN
	UPDATE tblSurveys set surveyid=@surveyID, surveyName=@surveyname, surveyDescription=@surveydescription
	where surveyID = @surveyID
    
END



GO
/****** Object:  StoredProcedure [dbo].[GetAnswers]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAnswers]
@questionID int
AS
BEGIN
	
    
SELECT questionID, answerID, answerID, answererID from tblAnswers WHERE questionID=@questionID
END



GO
/****** Object:  StoredProcedure [dbo].[GetQuestionbyQuestionID]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetQuestionbyQuestionID]
@questionID int
AS
BEGIN
	
    
SELECT surveyID, questionID, questionTxt, questionType, questionChoices from tblQuestions WHERE questionID=@questionID
END



GO
/****** Object:  StoredProcedure [dbo].[GetQuestionsbySurveyID]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetQuestionsbySurveyID]
@surveyID int
AS
BEGIN
	
    
SELECT surveyID, questionID, questionTxt, questionType, questionChoices from tblQuestions WHERE surveyID=@surveyID
END



GO
/****** Object:  StoredProcedure [dbo].[GetSurvey]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSurvey]
@surveyID int
AS
BEGIN
	
    
SELECT surveyID, surveyDescription, surveyName from tblSurveys WHERE surveyID=@surveyID

END



GO
/****** Object:  StoredProcedure [dbo].[LoginUser]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoginUser]
	-- Add the parameters for the stored procedure here
	@UserName varchar(50) = 0, 
	@Password varchar(50) = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT FirstName, LastName, email, surveyID
	FROM tblUser
	WHERE UserName=@UserName AND Password=@Password

END

GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 4/20/2018 10:57:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegisterUser] 
	@firstName varchar(20), @lastName varchar(20), @email varchar(50), @password varchar(50), @username varchar(50)
AS
BEGIN
	
    IF @password IS NULL or LEN(@password)=0
	SET @password= round(rand()*100000,0)
	INSERT INTO tblUser (firstName, lastName, email, password, UserName) values (@firstName, @lastName, @email, @password, @username)
	SELECT @@IDENTITY
END

GO
USE [master]
GO
ALTER DATABASE [Group Project] SET  READ_WRITE 
GO
