USE [master]
GO
/****** Object:  Database [BCIQ_DW]    Script Date: 5/21/2023 10:01:13 ******/
CREATE DATABASE [BCIQ_DW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N't_BCIQ_DW', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL14.BCIQDST\MSSQL\DATA\BCIQ_DW.mdf' , SIZE = 45067584KB , MAXSIZE = UNLIMITED, FILEGROWTH = 20%)
 LOG ON 
( NAME = N't_BCIQ_DW_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL14.BCIQDST\MSSQL\DATA\BCIQ_DW_log.ldf' , SIZE = 586123136KB , MAXSIZE = 2048GB , FILEGROWTH = 20%)
GO
ALTER DATABASE [BCIQ_DW] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BCIQ_DW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BCIQ_DW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BCIQ_DW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BCIQ_DW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BCIQ_DW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BCIQ_DW] SET ARITHABORT OFF 
GO
ALTER DATABASE [BCIQ_DW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BCIQ_DW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BCIQ_DW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BCIQ_DW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BCIQ_DW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BCIQ_DW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BCIQ_DW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BCIQ_DW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BCIQ_DW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BCIQ_DW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BCIQ_DW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BCIQ_DW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BCIQ_DW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BCIQ_DW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BCIQ_DW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BCIQ_DW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BCIQ_DW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BCIQ_DW] SET RECOVERY FULL 
GO
ALTER DATABASE [BCIQ_DW] SET  MULTI_USER 
GO
ALTER DATABASE [BCIQ_DW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BCIQ_DW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BCIQ_DW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BCIQ_DW] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BCIQ_DW] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BCIQ_DW', N'ON'
GO
ALTER DATABASE [BCIQ_DW] SET QUERY_STORE = OFF
GO
USE [BCIQ_DW]
GO
/****** Object:  User [wpong]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [wpong] FOR LOGIN [wpong] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vchou]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [vchou] FOR LOGIN [vchou] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [tvirk]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [tvirk] FOR LOGIN [tvirk] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [snagoski]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [snagoski] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [qianwenzh]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [qianwenzh] FOR LOGIN [qianwenzh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [pyconnection]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [pyconnection] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [peewees]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [peewees] FOR LOGIN [peewees] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [olnakh]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [olnakh] FOR LOGIN [olnakh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [natpol]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [natpol] FOR LOGIN [natpol] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mkowalczyk]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [mkowalczyk] FOR LOGIN [mkowalczyk] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [lucasp]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [lucasp] FOR LOGIN [lucasp] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [llu]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [llu] FOR LOGIN [llu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [lcampbell]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [lcampbell] FOR LOGIN [lcampbell] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [kjohnson]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [kjohnson] FOR LOGIN [kjohnson] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [jgershgorin]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [jgershgorin] FOR LOGIN [jgershgorin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ikrystal]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ikrystal] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dsmiling]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [dsmiling] FOR LOGIN [dsmiling] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [deepa]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [deepa] FOR LOGIN [deepa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dbadmin]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [dbadmin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BIOCENTURY\snagoski]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\snagoski] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BIOCENTURY\ostepanovskiy]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\ostepanovskiy] FOR LOGIN [BIOCENTURY\ostepanovskiy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BIOCENTURY\onechyporenko]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\onechyporenko] FOR LOGIN [BIOCENTURY\onechyporenko] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BIOCENTURY\llu]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\llu] FOR LOGIN [BIOCENTURY\llu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BIOCENTURY\dsmiling]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\dsmiling] FOR LOGIN [BIOCENTURY\dsmiling] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BIOCENTURY\BCIQMDMRead]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\BCIQMDMRead] FOR LOGIN [BIOCENTURY\BCIQMDMRead]
GO
/****** Object:  User [BIOCENTURY\BCIQMDMDevAdmins]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [BIOCENTURY\BCIQMDMDevAdmins] FOR LOGIN [BIOCENTURY\BCIQMdmDevAdmins]
GO
/****** Object:  User [bciqmdmdev\mdmadmin]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [bciqmdmdev\mdmadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bciqapp]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [bciqapp] FOR LOGIN [bciqapp] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [aparker]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [aparker] FOR LOGIN [aparker] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [alexs]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [alexs] FOR LOGIN [alexs] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [aedataproc]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [aedataproc] FOR LOGIN [aedataproc] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ae_tdgaspari]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ae_tdgaspari] FOR LOGIN [ae_tdgaspari] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ae_fperez]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ae_fperez] FOR LOGIN [ae_fperez] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ae_edchen]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ae_edchen] FOR LOGIN [ae_edchen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ae_djimison]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ae_djimison] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ae_dcamargo]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ae_dcamargo] FOR LOGIN [ae_dcamargo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ae_bpowers]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ae_bpowers] FOR LOGIN [ae_bpowers] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ADDS\wpong]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ADDS\wpong] FOR LOGIN [ADDS\wpong] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ADDS\snagoski]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ADDS\snagoski] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ADDS\ostepanovskiy]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ADDS\ostepanovskiy] FOR LOGIN [ADDS\ostepanovskiy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ADDS\onechyporenko]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ADDS\onechyporenko] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ADDS\llu]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ADDS\llu] FOR LOGIN [ADDS\llu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ADDS\dsmiling]    Script Date: 5/21/2023 10:01:17 ******/
CREATE USER [ADDS\dsmiling] FOR LOGIN [ADDS\dsmiling] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [ae_development]    Script Date: 5/21/2023 10:01:17 ******/
CREATE ROLE [ae_development]
GO
ALTER ROLE [db_datareader] ADD MEMBER [wpong]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vchou]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [vchou]
GO
ALTER ROLE [db_datareader] ADD MEMBER [tvirk]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [tvirk]
GO
ALTER ROLE [db_datareader] ADD MEMBER [snagoski]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [snagoski]
GO
ALTER ROLE [db_datareader] ADD MEMBER [qianwenzh]
GO
ALTER ROLE [db_datareader] ADD MEMBER [pyconnection]
GO
ALTER ROLE [db_datareader] ADD MEMBER [peewees]
GO
ALTER ROLE [db_datareader] ADD MEMBER [olnakh]
GO
ALTER ROLE [db_datareader] ADD MEMBER [natpol]
GO
ALTER ROLE [db_owner] ADD MEMBER [mkowalczyk]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mkowalczyk]
GO
ALTER ROLE [db_datareader] ADD MEMBER [lucasp]
GO
ALTER ROLE [db_datareader] ADD MEMBER [llu]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [llu]
GO
ALTER ROLE [db_datareader] ADD MEMBER [lcampbell]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [lcampbell]
GO
ALTER ROLE [db_datareader] ADD MEMBER [kjohnson]
GO
ALTER ROLE [db_datareader] ADD MEMBER [jgershgorin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [jgershgorin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ikrystal]
GO
ALTER ROLE [db_datareader] ADD MEMBER [dsmiling]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [dsmiling]
GO
ALTER ROLE [db_datareader] ADD MEMBER [deepa]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [deepa]
GO
ALTER ROLE [db_owner] ADD MEMBER [dbadmin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\snagoski]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BIOCENTURY\snagoski]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\ostepanovskiy]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\onechyporenko]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BIOCENTURY\onechyporenko]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\llu]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BIOCENTURY\llu]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\dsmiling]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BIOCENTURY\dsmiling]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\BCIQMDMRead]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BIOCENTURY\BCIQMDMDevAdmins]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BIOCENTURY\BCIQMDMDevAdmins]
GO
ALTER ROLE [db_owner] ADD MEMBER [bciqapp]
GO
ALTER ROLE [db_datareader] ADD MEMBER [bciqapp]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [bciqapp]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aparker]
GO
ALTER ROLE [db_datareader] ADD MEMBER [alexs]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [alexs]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aedataproc]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [aedataproc]
GO
ALTER ROLE [ae_development] ADD MEMBER [ae_tdgaspari]
GO
ALTER ROLE [ae_development] ADD MEMBER [ae_fperez]
GO
ALTER ROLE [ae_development] ADD MEMBER [ae_edchen]
GO
ALTER ROLE [ae_development] ADD MEMBER [ae_djimison]
GO
ALTER ROLE [ae_development] ADD MEMBER [ae_dcamargo]
GO
ALTER ROLE [ae_development] ADD MEMBER [ae_bpowers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ADDS\wpong]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ADDS\wpong]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ADDS\snagoski]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ADDS\snagoski]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ADDS\ostepanovskiy]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ADDS\ostepanovskiy]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ADDS\onechyporenko]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ADDS\onechyporenko]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ADDS\llu]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ADDS\llu]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ADDS\dsmiling]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ADDS\dsmiling]
GO
/****** Object:  Schema [app]    Script Date: 5/21/2023 10:01:26 ******/
CREATE SCHEMA [app]
GO
/****** Object:  Schema [HangFire]    Script Date: 5/21/2023 10:01:26 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Schema [mv]    Script Date: 5/21/2023 10:01:26 ******/
CREATE SCHEMA [mv]
GO
USE [BCIQ_DW]
GO
/****** Object:  Sequence [app].[CompanyListSeq]    Script Date: 5/21/2023 10:01:26 ******/
CREATE SEQUENCE [app].[CompanyListSeq] 
 AS [bigint]
 START WITH 100
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  UserDefinedFunction [app].[fnURL_Strip]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create FUNCTION [app].[fnURL_Strip] 
    (@StrIn nvarchar(255))
RETURNS nvarchar(255)
AS
BEGIN


	RETURN  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE
            (LTRIM(RTRIM(LOWER(@StrIn))), 
                ',', ''), 
                ' ', '_'), 
                '&', 'and'), 
                '.', ''), 
                '/', ''), 
                ':', ''), 
                '#', ''), 
                '''', ''), 
                '`', ''),
                '[', '_'), 
                ']', '_'), 
                '{', '_'), 
                '}', '_'), 
                '+', '_'), 
                '%', ''), 
                '\', ''), 
                '~', ''), 
                '$', ''), 
                ';', ''), 
                '?', ''),
                '*', '_'),
                '"', ''),
                '!', ''),
                '%', ''),
                '<', ''),
                '>', ''),
                '=', '')
END
GO
/****** Object:  UserDefinedFunction [app].[fnURL_Strip_2]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [app].[fnURL_Strip_2] 
    (@StrIn nvarchar(255))
RETURNS nvarchar(255)
AS
BEGIN
	RETURN  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
            (REPLACE(REPLACE(REPLACE(REPLACE   -- 10/12/2021 added stripping for special apostr << ’ >>
            (LTRIM(RTRIM(LOWER(@StrIn))), 
                ',', ''), 
                ' ', '_'), 
                '&', 'and'), 
                '.', ''), 
                '/', ''), 
                ':', ''), 
                '#', ''), 
                '''', ''), 
                '`', ''),
                '[', '_'), 
                ']', '_'), 
                '{', '_'), 
                '}', '_'), 
                '+', '_'), 
                '%', ''), 
                '\', ''), 
                '~', ''), 
                '$', ''), 
                ';', ''), 
                '?', ''),
                '*', '_'),
                '"', ''),
                '!', ''),
                '%', ''),
                '<', ''),
                '>', ''),
                '=', ''),
				'’', '')  -- 10/12/2021 added stripping for special apostr << ’ >>
END
GO
/****** Object:  UserDefinedFunction [app].[fnYearQtr]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [app].[fnYearQtr] 
(
	@dateTime datetime
)
RETURNS nvarchar(16)
AS
BEGIN
	if(@dateTime is null)
	return null;

	declare @year nvarchar(4) = YEAR(@dateTime);
	declare @qtr nvarchar(2);
	declare @month int = MONTH(@dateTime);
	if(@month >= 1 and @month <=3)
		set @qtr = '1'
	else if(@month >= 4 and @month <=6)
		set @qtr = '2'
	else if(@month >= 7 and @month <=9)
		set @qtr = '3'
	else if(@month >= 10 and @month <=12)
		set @qtr = '4'
	
	RETURN @year + 'Q' + @qtr;

END

GO
/****** Object:  UserDefinedFunction [dbo].[fnCompanyHistory]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fnCompanyHistory](@CompanyKey int)
RETURNS @retCompanyHistory TABLE 
(
    -- columns returned by the function
    	InitialCompanyKey INT,
		CompanyKey INT,
		CompanyID INT,
		CompanyName NVARCHAR(250),
		ResultingCompanyKey INT,
		ResultingCompanyID INT,
		ResultingCompanyName NVARCHAR(250),
		EventType NVARCHAR(250),
		EffectiveStartDate DATETIME,
		History	NVARCHAR(250)
)
AS
-- body of the function
BEGIN
   
	--body 
	--local vars declaration
	DECLARE @CompanyID INT, @CurrentCompanyID INT, @CurrentCompanyKey INT, @EffectiveStartDate DATETIME, 
	@NewCompanyID INT, @EventType NVARCHAR(250),@InitialCompanyName NVARCHAR(250),
	@PreviousCompanyID INT

	DECLARE  @CompanyEvents TABLE
		(
		InitialCompanyKey INT,
		CompanyKey INT,
		CompanyID INT,
		CompanyName NVARCHAR(250),
		ResultingCompanyKey INT,
		ResultingCompanyID INT,
		ResultingCompanyName NVARCHAR(250),
		EventType NVARCHAR(250),
		EffectiveStartDate DATETIME	
		) 

---get initial values
SELECT 
	@CurrentCompanyID=CompanyID,
	@CompanyID=CompanyID,
	@CurrentCompanyKey=@CompanyKey
FROM DimCompany
WHERE CompanyKey=@CompanyKey

WHILE (@CurrentCompanyID IS NOT NULL)
BEGIN
	-- get Name Change history for current company
		INSERT @CompanyEvents
			(
			InitialCompanyKey,
			CompanyKey,
			CompanyID,
			CompanyName,
			ResultingCompanyKey,
			ResultingCompanyID,
			ResultingCompanyName,
			EventType,
			EffectiveStartDate
			)
		
		SELECT 
			@CompanyKey AS InitialCompanyKey,
			PrevCompanyKey as CompanyKey ,
			PrevCompanyID as CompanyID , 
			PrevName AS CompanyName,
			CompanyKey 
			AS ResultingCompanyKey,
			CompanyID 
			AS ResultingCompanyID,
			CompanyName 
			AS ResultingCompanyName,
			EventType ,
			EffectiveStartDate 
		FROM
		(
			SELECT ---DISTINCT
					CompanyKey ,
					CompanyID ,
					LAG(CompanyName, 1) 
						OVER(ORDER BY EffectiveStartDate) PrevName,
					LAG(CompanyKey, 1) 
						OVER(ORDER BY EffectiveStartDate) PrevCompanyKey,
					LAG(CompanyID, 1) 
						OVER(ORDER BY EffectiveStartDate) PrevCompanyID,
					CompanyName ,
					EventType ,
					EffectiveStartDate 
			FROM    DimCompany AS c
			WHERE   ( CompanyID = @CurrentCompanyID )
					AND ( ParentCompanyKey IS NULL )

		) t
		WHERE 
			EventType='Name Change'
			AND EffectiveStartDate>=COALESCE(@EffectiveStartDate, '1900-01-01')
		ORDER BY EffectiveStartDate


		SET @NewCompanyID=NULL
		SELECT  
			@EffectiveStartDate=c.EffectiveStartDate,
			@NewCompanyID =pc.CompanyID,
			@EventType=c.EventType,   
			@CurrentCompanyKey= COALESCE( c.ParentCompanyKey,c.CompanyKey)
		FROM    DimCompany AS c
				LEFT OUTER JOIN DimCompany AS pc ON c.ParentCompanyKey = pc.CompanyKey
		WHERE  C.CompanyID=@CurrentCompanyID  --- c.CompanyID in (3 , 3094)
		--c.CompanyName='Ampersand Medical Corp.'
		AND c.EventType NOT IN ('Company Created','Out of Business')
		AND pc.CompanyID IS NOT NULL

		IF @NewCompanyID IS NULL
				BREAK
		SELECT @PreviousCompanyID=@CurrentCompanyID
		SELECT @CurrentCompanyID=@NewCompanyID


		IF @EventType IN ('Merger','Reverse Merger','Acquisition')

		INSERT @CompanyEvents
			(
			InitialCompanyKey,
			CompanyKey,
			CompanyID,
			CompanyName,
			ResultingCompanyKey,
			ResultingCompanyID,
			ResultingCompanyName,
			EventType,
			EffectiveStartDate
			)
		SELECT  
				@CompanyKey AS InitialCompanyKey,
				c.CompanyKey ,
				C.CompanyID ,
				C.CompanyName ,
				--C1.CompanyKey AS CompanyKey1 ,
				--C1.CompanyID AS CompanyID1 ,
				--C1.CompanyName AS CompanyName1 ,
				--C.ParentCompanyKey ,			
				c.ParentCompanyKey  AS ResultingCompanyKey,
				pc.CompanyID AS ResultingCompanyID ,
				pc.CompanyName AS ResultingCompanyName,
				C.EventType ,
				C.EffectiveStartDate 
		FROM    
			DimCompany AS C
				--INNER JOIN 
				--left outer join
				--	DimCompany AS C1 
				--		ON C.ParentCompanyKey = C1.ParentCompanyKey
				--		AND C.EventType = C1.EventType
				--		AND C.EffectiveStartDate = C1.EffectiveStartDate
				--		AND C.CompanyID <> C1.CompanyID
				--		AND C1.CompanyID<>@PreviousCompanyID
				INNER JOIN 
					DimCompany pc
						ON C.ParentCompanyKey = pc.CompanyKey
		WHERE   
			( c.EventType IN ( 'Merger', 'Reverse Merger','Acquisition' ) )       
			AND ( pc.CompanyID = @NewCompanyID )
			AND C.CompanyID=@PreviousCompanyID	
					

			
END


INSERT @retCompanyHistory
				(
				InitialCompanyKey,
				CompanyKey,
				CompanyID,
				CompanyName,
				ResultingCompanyKey,
				ResultingCompanyID,
				ResultingCompanyName,
				EventType,
				EffectiveStartDate,
				History
				)
	SELECT * , CompanyName + 
		CASE
				--Name Change
				WHEN EventType='Name Change' THEN ' changed name to ' + ResultingCompanyName +
													' in ' + CAST(MONTH(EffectiveStartDate) AS VARCHAR(2)) 
														+ '/' + CAST(YEAR(EffectiveStartDate) AS CHAR(4))
				--Merger
				WHEN EventType='Merger' 
									THEN ' merged ' --with ' + participating company to adde + 
										+	' to form ' + ResultingCompanyName + 
													' in ' + CAST(MONTH(EffectiveStartDate) AS VARCHAR(2))
														 + '/' + CAST(YEAR(EffectiveStartDate) AS CHAR(4))
				--Acquisition
				WHEN EventType='Acquisition' THEN ' acquired by ' + ResultingCompanyName + 
													' in ' + CAST(MONTH(EffectiveStartDate) AS VARCHAR(2))
														 + '/' + CAST(YEAR(EffectiveStartDate) AS CHAR(4))
				--Reverse Merger 
				WHEN EventType='Reverse Merger' THEN ' reverse merged ' --with ' + participating company to adde + 
									+	' to form ' + ResultingCompanyName + 
												+	' in ' + CAST(MONTH(EffectiveStartDate) AS VARCHAR(2))
													 + '/' + CAST(YEAR(EffectiveStartDate) AS CHAR(4))
			END as History

	FROM @CompanyEvents
	ORDER BY EffectiveStartDate

   RETURN
END
GO
/****** Object:  Table [dbo].[Deal_to_StandardIndication]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_StandardIndication](
	[Deal_to_StandardIndicationKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[StandardIndicationKey] [int] NULL,
	[StandardIndicationRank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStandardIndication]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStandardIndication](
	[StandardIndicationKey] [int] NOT NULL,
	[Code] [int] NULL,
	[StandardIndicationName] [nvarchar](255) NOT NULL,
	[DiseaseCategory] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([StandardIndicationName]))
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealDiseaseCategories]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwDealDiseaseCategories]
AS



SELECT DealAssetKey,
STRING_AGG( DiseaseCategory + ': ' + StandardIndications, '; ') AS DiseaseCategories
FROM
(
SELECT        
	dbo.Deal_to_StandardIndication.DealAssetKey, 
	dbo.DimStandardIndication.DiseaseCategory, 
	STRING_AGG( dbo.DimStandardIndication.StandardIndicationName, ', ') AS StandardIndications--,
	
    --dbo.DimStandardIndication.DiseaseCategoryID
FROM            
	dbo.Deal_to_StandardIndication 
		INNER JOIN
			dbo.DimStandardIndication 
				ON dbo.Deal_to_StandardIndication.StandardIndicationKey = dbo.DimStandardIndication.StandardIndicationKey
				WHERE dbo.Deal_to_StandardIndication.DealAssetKey > 0 -- 01-01-2023 excluded "-1"
GROUP BY dbo.Deal_to_StandardIndication.DealAssetKey,dbo.DimStandardIndication.DiseaseCategory
) t
GROUP BY DealAssetKey
GO
/****** Object:  Table [dbo].[Deal_to_MechanismOfAction]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_MechanismOfAction](
	[Deal_to_MechanismOfActionKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[MechanismOfActionKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMechanismOfAction]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMechanismOfAction](
	[MechanismOfActionKey] [int] NOT NULL,
	[MechanismOfActionName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealMechanismOfAction]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwDealMechanismOfAction]
AS

SELECT	d2ma.DealAssetKey, 
		STRING_AGG(ma.MechanismOfActionName,'; ') WITHIN GROUP (ORDER BY d2ma.[Rank]  ASC) AS MOAs

FROM	dbo.Deal_to_MechanismOfAction AS d2ma
		INNER JOIN dbo.DimMechanismOfAction AS ma
			ON ma.MechanismOfActionKey = d2ma.MechanismOfActionKey
			WHERE d2ma.DealAssetKey > 0 -- 01-01-2023 excluded "-1"
GROUP BY d2ma.DealAssetKey;
GO
/****** Object:  Table [dbo].[DimMolecularTarget]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMolecularTarget](
	[MolecularTargetKey] [int] NOT NULL,
	[MolecularTargetName] [varchar](255) NOT NULL,
	[MolecularTargetFamily_Name] [varchar](250) NULL,
	[DateTargetCreated] [datetime2](7) NULL,
	[LegacyTargetName] [nvarchar](250) NULL,
	[Synonyms] [nvarchar](250) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[SearchBy] [varchar](512) NOT NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([LegacyTargetName]))
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_to_MolecularTarget]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_MolecularTarget](
	[DealMolecularTargetKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[MolecularTargetKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealMolecularTargets]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [dbo].[vwDealMolecularTargets]
AS


SELECT        
	dbo.Deal_to_MolecularTarget.DealAssetKey, 
	STRING_AGG( dbo.DimMolecularTarget.LegacyTargetName,'; ') AS DealMolecularTargets,
	STRING_AGG( dbo.DimMolecularTarget.LegacyTargetName + '; ' + app.fnURL_Strip(dbo.DimMolecularTarget.LegacyTargetName), CHAR(13)+CHAR(10)) AS EncodedDealMolecularTargets
FROM            
	dbo.Deal_to_MolecularTarget 
		INNER JOIN
			dbo.DimMolecularTarget 
				ON dbo.Deal_to_MolecularTarget.MolecularTargetKey = dbo.DimMolecularTarget.MolecularTargetKey
				WHERE dbo.Deal_to_MolecularTarget.DealAssetKey > 0 -- added on 03_17_2023 to exclude -1 and prevent STRING_AGG aggregation result exceeded the limit of 8000 bytes
GROUP BY dbo.Deal_to_MolecularTarget.DealAssetKey
GO
/****** Object:  Table [dbo].[DimProduct]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProduct](
	[ProductKey] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[ProductID] [decimal](18, 0) NULL,
	[BrandName] [nvarchar](200) NULL,
	[ChemicalName] [nvarchar](200) NULL,
	[CompoundName] [nvarchar](200) NULL,
	[FormerCompoundName] [nvarchar](200) NULL,
	[GenericName] [nvarchar](200) NULL,
	[FormerGenericName] [nvarchar](200) NULL,
	[InformalName] [nvarchar](200) NULL,
	[OtherName] [nvarchar](200) NULL,
	[FormerName] [nvarchar](200) NULL,
	[OriginatorCompanyKey] [int] NOT NULL,
	[OwnerCompanyKey] [int] NOT NULL,
	[PartnerCompanyKey] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsDiscontinued] [nchar](3) NULL,
	[DateDiscontinued] [date] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[SearchBy] [varchar](512) NOT NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([Name]))
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_to_Product]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_Product](
	[DealProductKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[ProductKey] [int] NULL,
	[IsDiscontinued] [nvarchar](10) NULL,
	[IncludeInAsset] [nvarchar](10) NULL,
	[WasAtSigning] [nvarchar](10) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealProductNames]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE    VIEW [dbo].[vwDealProductNames]
AS

SELECT DealAssetKey,STRING_AGG(ProductNames,'; ') AS ProductNames, STRING_AGG((CAST(ProductNames AS NVARCHAR(MAX))) + '; ' + app.fnURL_Strip(ProductNames), CHAR(13)+CHAR(10)) AS EncodedProductNames
FROM
(
SELECT DISTINCT
	dbo.Deal_To_Product.DealAssetKey, dbo.DimProduct.Name as ProductNames
	--STRING_AGG(dbo.DimProduct.ProductNames,'; ') AS ProductNames
FROM            
	dbo.Deal_To_Product 
		INNER JOIN
			dbo.DimProduct 
				ON dbo.Deal_To_Product.ProductKey = dbo.DimProduct.ProductKey
) t
WHERE DealAssetKey > 0  -- added on 03_17_2023 to exclude -1 and prevent STRING_AGG aggregation result exceeded the limit of 8000 bytes
GROUP BY DealAssetKey
GO
/****** Object:  Table [dbo].[DimTherapeuticModality]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTherapeuticModality](
	[TherapeuticModalityKey] [int] NOT NULL,
	[TherapeuticModalityName] [varchar](255) NOT NULL,
	[TherapeuticModalityID] [int] NULL,
	[ParentCode] [int] NULL,
	[ParentTherapeuticModalityKey] [int] NULL,
	[ModalityLevel] [smallint] NULL,
	[UseInDeals] [bit] NULL,
	[UseInClinical] [bit] NULL,
	[SortOrder] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[SearchBy] [varchar](512) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_to_TherapeuticModality]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_TherapeuticModality](
	[DealTherapeuticModalityKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[TherapeuticModalityKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealTherapeuticModalities]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   VIEW [dbo].[vwDealTherapeuticModalities]
AS


SELECT        
	dbo.Deal_to_TherapeuticModality.DealAssetKey, 
	STRING_AGG(dbo.DimTherapeuticModality.TherapeuticModalityName,'; ') AS TherapeuticModalities
FROM            
	dbo.Deal_to_TherapeuticModality 
		INNER JOIN
			dbo.DimTherapeuticModality 
				ON dbo.Deal_to_TherapeuticModality.TherapeuticModalityKey = dbo.DimTherapeuticModality.TherapeuticModalityKey
WHERE dbo.Deal_to_TherapeuticModality.DealAssetKey > 0 -- added on 03_17_2023 to exclude -1 and prevent STRING_AGG aggregation result exceeded the limit of 8000 bytes
GROUP BY DealAssetKey
GO
/****** Object:  Table [dbo].[Product_to_MolecularTarget]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_to_MolecularTarget](
	[ProductMolecularTargetKey] [int] NOT NULL,
	[ProductKey] [int] NULL,
	[ProductID] [int] NULL,
	[MolecularTargetKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwConcatProductTarget]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[vwConcatProductTarget] as 
select p.productkey,  
STRING_AGG (CAST(t.LegacyTargetName as nvarchar(250)),'; ') as Concat_Target, -- 7/11/18 LL switched from t.MolecularTargetName to t.LegacyTargetName
STRING_AGG (CAST(t.LegacyTargetName as nvarchar(250)) + '; ' + CAST(app.fnURL_Strip(t.LegacyTargetName) as nvarchar(250)), ';' + CHAR(13) + CHAR(10)) as Concat_LegacyTargetName

from dbo.dimProduct p 

left outer join dbo.product_to_moleculartarget pmt on p.productkey = pmt.productkey
left outer join dbo.dimMolecularTarget t on pmt.MolecularTargetKey = t.MolecularTargetKey
group by p.productkey
--GO

GO
/****** Object:  Table [dbo].[DimDiseaseCategorySynonym]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDiseaseCategorySynonym](
	[Code] [int] NOT NULL,
	[DiseaseCategoryCode] [int] NOT NULL,
	[DiseaseCategoryName] [nvarchar](250) NOT NULL,
	[Synonym] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStandardIndicationSynonym]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStandardIndicationSynonym](
	[Code] [int] NOT NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[StandardIndicationName] [nvarchar](250) NOT NULL,
	[Synonym] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwStandardIndDiseaseCatSynonym]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwStandardIndDiseaseCatSynonym] 
	AS
		SELECT dc.[DiseaseCategoryName], si.[StandardIndicationName] ,si.[Synonym]  
		FROM  [dbo].[DimStandardIndicationSynonym] si   
			LEFT OUTER JOIN [dbo].[DimDiseaseCategorySynonym] dc     
				ON si.[Synonym]=dc.[Synonym]
GO
/****** Object:  Table [dbo].[DimCompany]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCompany](
	[CompanyKey] [int] NOT NULL,
	[GeographyKey] [int] NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Legacy_UnderwriterID] [int] NULL,
	[Legacy_InvestorID] [int] NULL,
	[AccountNumber] [nvarchar](250) NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CompanyNameAbbr] [nvarchar](255) NULL,
	[Code] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[YearFounded] [int] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Country] [nvarchar](250) NULL,
	[Territory] [nvarchar](1000) NULL,
	[Sector] [nvarchar](250) NULL,
	[Industry] [nvarchar](250) NULL,
	[CIK] [int] NULL,
	[IsApproved] [nvarchar](10) NULL,
	[IsActive] [nvarchar](10) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[State] [nvarchar](200) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Fax] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](200) NULL,
	[PrimaryContact] [nvarchar](200) NULL,
	[EventType] [nvarchar](250) NULL,
	[ParentCompanyKey] [int] NULL,
	[EffectiveStartDate] [datetime2](7) NULL,
	[EffectiveEndDate] [datetime2](7) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[Legacy_DateCreated] [datetime] NULL,
	[BCBiotechHubKey] [int] NULL,
	[LeadProductStatusKey] [int] NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[LeadProductStatusDate] [datetime2](7) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NULL,
	[ModifiedProcessID] [int] NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([CompanyName])),
	[SearchBy] [nvarchar](512) NULL,
	[Archived] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwArticleSearchCompanies]    Script Date: 5/21/2023 10:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwArticleSearchCompanies]
AS
SELECT
	c.Code,
	c.CompanyName,
	c.IsActive,
	c.SearchBy
FROM DimCompany c
WHERE c.Legacy_CompanyID IS NOT NULL
GO
/****** Object:  Table [dbo].[DimDiseaseCategory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDiseaseCategory](
	[DiseaseCategoryKey] [int] NOT NULL,
	[DiseaseCategoryName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([DiseaseCategoryName]))
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwArticleSearchDiseaseCategories]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwArticleSearchDiseaseCategories]
AS
SELECT
	dc.DiseaseCategoryKey,
	dc.DiseaseCategoryName,
	si.StandardIndicationKey,
	si.Code,
	si.StandardIndicationName
FROM DimDiseaseCategory dc
JOIN DimStandardIndication si
	ON dc.DiseaseCategoryName = si.DiseaseCategory
--WHERE si.StandardIndicationName LIKE '%leuk%'
GO
/****** Object:  View [app].[vwArticleSearchMolecularTargets]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwArticleSearchMolecularTargets]

AS

SELECT
	mt.MolecularTargetKey,
	mt.MolecularTargetName,
	mt.[SearchBy]
FROM DimMolecularTarget mt
GO
/****** Object:  Table [dbo].[FactMilestone]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactMilestone](
	[MilestoneKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[ProductDetailKey] [int] NOT NULL,
	[MilestoneTypeKey] [int] NOT NULL,
	[MilestoneStatusKey] [int] NOT NULL,
	[MilestoneIntentKey] [int] NOT NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[FormattedDate] [nvarchar](250) NULL,
	[InternalNotes] [nvarchar](255) NULL,
	[Notes] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[ModifiedDate] [datetimeoffset](7) NOT NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactRegulatoryDesignation]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactRegulatoryDesignation](
	[RegulatoryDesignationKey] [int] NOT NULL,
	[ProductDetailKey] [int] NOT NULL,
	[RegulatoryDesignation] [nvarchar](255) NOT NULL,
	[RegulatoryRegion] [nvarchar](250) NULL,
	[ProductKey] [int] NOT NULL,
	[DateGranted] [datetime2](7) NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[ModifiedDate] [datetimeoffset](7) NOT NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_to_MechanismOfAction]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_to_MechanismOfAction](
	[ProductMechanismOfActionKey] [int] NOT NULL,
	[ProductKey] [int] NULL,
	[MechanismOfActionKey] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactLicense]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactLicense](
	[ProductKey] [int] NOT NULL,
	[InLicenseCompanyKey] [int] NOT NULL,
	[OutLicenseCompanyKey] [int] NOT NULL,
	[StarDateKey] [int] NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDateKey] [int] NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[ProductDetailKey] [int] NOT NULL,
	[DealAssetKey] [int] NOT NULL,
	[PartnershipTermsKey] [int] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[LicenseKey] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_to_TherapeuticModality]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_to_TherapeuticModality](
	[ProductTherapeuticModalityKey] [int] NOT NULL,
	[ProductKey] [int] NULL,
	[ProductID] [int] NOT NULL,
	[TherapeuticModalityKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwConcatPartnersForProductEncoded]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [app].[vwConcatPartnersForProductEncoded] AS

SELECT l.productKey, l.ProductDetailKey, STRING_AGG (app.fnURL_Strip(c.CompanyName),CHAR(13)+CHAR(10)) AS CompaniesInvolved
FROM dbo.FactLicense l INNER JOIN dbo.DimCompany c ON l.InlicenseCompanyKey = c.companyKey
WHERE l.productKey > 0 -- added on 01-16-2023 to prevent error "STRING_AGG aggregation result exceeded the limit of 8000 bytes"
GROUP BY l.productKey, l.ProductDetailKey
GO
/****** Object:  View [dbo].[vwConcatPartnersForProduct]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[vwConcatPartnersForProduct] AS

SELECT l.productKey, l.ProductDetailKey, STRING_AGG (c.CompanyName,CHAR(13)+CHAR(10)) AS CompaniesInvolved
FROM dbo.FactLicense l INNER JOIN dbo.DimCompany c ON l.InlicenseCompanyKey = c.companyKey
WHERE l.productKey > 0  -- added on 01-16-2023 to prevent error "STRING_AGG aggregation result exceeded the limit of 8000 bytes"
GROUP BY l.productKey, l.ProductDetailKey
GO
/****** Object:  Table [dbo].[FactPipeline]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPipeline](
	[PhaseOfDevelopmentKey] [int] NOT NULL,
	[EventDateKey] [int] NOT NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[CompanyKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[RouteOfAdministrationKey] [int] NOT NULL,
	[ProductDetailKey] [int] NOT NULL,
	[ProductDetail_ID] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[PipelineKey] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](250) NULL,
	[IsDiscontinued] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwTherapeuticModality]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--/****** Object:  View [dbo].[vwTherapeuticModality]    Script Date: 9/11/2017 10:52:59 AM ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

CREATE   VIEW [dbo].[vwTherapeuticModality]
AS 

WITH TM 
	AS
	(
		SELECT  TherapeuticModalityKey ,
		TherapeuticModalityName ,
		ParentTherapeuticModalityKey ,
		ModalityLevel ,
		UseInDeals ,
		UseInClinical ,
		SortOrder
		FROM dbo.DimTherapeuticModality
		WHERE COALESCE(UseInDeals,1)=1 AND COALESCE(UseInClinical,1)=1 
	)


SELECT  TM1.TherapeuticModalityKey,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        NULL AS [Therapeutic Modality 2] ,
        NULL AS [Therapeutic Modality 3] ,
		NULL AS [Therapeutic Modality 4] ,
        TM1.UseInDeals AS UseInDeals1 ,
        NULL AS UseInDeals2,
        NULL AS UseInDeals3,
		NULL AS UseInDeals4,
		TM1.UseInClinical AS UseInClinical1, 
		NULL AS UseInClinical2, 
		NULL AS UseInClinical3,
		NULL AS UseInClinical4
FROM
	TM AS TM1 
WHERE 
	TM1.ModalityLevel = 1
	
UNION

SELECT  COALESCE(TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        TM2.TherapeuticModalityName AS [Therapeutic Modality 2] ,
        NULL AS [Therapeutic Modality 3],
		NULL AS [Therapeutic Modality 4],
        TM1.UseInDeals AS UseInDeals1 ,
        TM2.UseInDeals AS UseInDeals2 ,
        NULL AS UseInDeals3,
		NULL AS UseInDeals4,
		TM1.UseInClinical AS UseInClinical1, 
		TM2.UseInClinical AS UseInClinical2, 
		NULL AS UseInClinical3,
		NULL AS UseInClinical4
FROM
	TM AS TM2 
        RIGHT OUTER JOIN 
			TM AS TM1 
				ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey
				AND TM2.ModalityLevel = 2				
WHERE 
	TM1.ModalityLevel = 1
	
UNION

SELECT  COALESCE(TM3.TherapeuticModalityKey ,TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        TM2.TherapeuticModalityName AS [Therapeutic Modality 2] ,
        TM3.TherapeuticModalityName AS [Therapeutic Modality 3] ,
		NULL AS [Therapeutic Modality 4],
        TM1.UseInDeals AS UseInDeals1 ,
        TM2.UseInDeals AS UseInDeals2 ,
        TM3.UseInDeals AS UseInDeals3,
		NULL AS UseInDeals4,
		TM1.UseInClinical AS UseInClinical1, 
		TM2.UseInClinical AS UseInClinical2, 
		TM3.UseInClinical AS UseInClinical3,
		NULL AS UseInDeals4

FROM    
	TM AS TM3
        RIGHT OUTER JOIN 
			TM AS TM2 
				ON TM3.ParentTherapeuticModalityKey = TM2.TherapeuticModalityKey				
        RIGHT OUTER JOIN 
			TM AS TM1 
				ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey				
WHERE 
	TM1.ModalityLevel = 1

UNION

SELECT  COALESCE(TM4.TherapeuticModalityKey,TM3.TherapeuticModalityKey,TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        TM2.TherapeuticModalityName AS [Therapeutic Modality 2] ,
        TM3.TherapeuticModalityName AS [Therapeutic Modality 3] ,
		TM4.TherapeuticModalityName AS [Therapeutic Modality 4] ,
        TM1.UseInDeals AS UseInDeals1 ,
        TM2.UseInDeals AS UseInDeals2 ,
        TM3.UseInDeals AS UseInDeals3,
		TM4.UseInDeals AS UseInDeals4,
		TM1.UseInClinical AS UseInClinical1, 
		TM2.UseInClinical AS UseInClinical2, 
		TM3.UseInClinical AS UseInClinical3,
		TM4.UseInClinical AS UseInClinical4

FROM    
	TM AS TM4
        RIGHT OUTER JOIN 
			TM AS TM3 
				ON TM4.ParentTherapeuticModalityKey = TM3.TherapeuticModalityKey				
        RIGHT OUTER JOIN 
			TM AS TM2 
				ON TM3.ParentTherapeuticModalityKey = TM2.TherapeuticModalityKey
				RIGHT OUTER JOIN 
			TM AS TM1 
				ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey				
WHERE 
	TM1.ModalityLevel = 1


GO
/****** Object:  Table [dbo].[DimClinicalPhase]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimClinicalPhase](
	[ClinicalPhaseKey] [int] NOT NULL,
	[Code] [int] NULL,
	[Category] [nvarchar](250) NOT NULL,
	[Category_SortOrder] [int] NOT NULL,
	[SubCategory] [nvarchar](250) NOT NULL,
	[SubCategory_SortOrder] [int] NOT NULL,
	[ClinicalPhase] [nvarchar](250) NOT NULL,
	[ClinicalPhase_SortOrder] [int] NOT NULL,
	[Use_in_Phase_of_Development] [bit] NULL,
	[Use_in_Lead_Product_Status] [bit] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NULL,
	[ModifiedProcessID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyGeneralInfo]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyGeneralInfo](
	[CompanyKey] [int] NOT NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CurrentNameEncodedName] [nvarchar](255) NULL,
	[EventType] [nvarchar](250) NULL,
	[CompanyNameAbbr] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Location] [nvarchar](1200) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[Region] [nvarchar](100) NULL,
	[Country] [nvarchar](250) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[YearFounded] [int] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[ClinicalPhaseCategory] [nvarchar](250) NULL,
	[ClinicalPhaseSubCategory] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Active/Not active] [nvarchar](10) NULL,
	[Date of Last Financing] [date] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Amount Raised in Last Financing] [money] NULL,
	[Financiers of Last Financing] [nvarchar](4000) NULL,
	[Total Amount Raised] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[Market Cap] [money] NULL,
	[Market Cap USD] [money] NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NOT NULL,
	[CompanyType] [nvarchar](250) NULL,
	[OriginalCompanyType] [nvarchar](250) NULL,
	[State] [nvarchar](200) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Territory] [nvarchar](1000) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[GeographyKey] [int] NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[LegacyUnderwriterId] [int] NULL,
	[LegacyInvestorId] [int] NULL,
	[BCBiotechHub] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[BCBiotechHubKey] [int] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[GeoLeaf] [nvarchar](255) NULL,
	[LastUpdated] [datetimeoffset](7) NULL,
	[SearchBy] [nvarchar](512) NULL,
	[Public/Private] [varchar](50) NULL,
	[CompanyProfileCategory] [nvarchar](250) NULL,
	[Archived] [bit] NULL,
	[Active/Archived/NotActive] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMilestoneType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMilestoneType](
	[MilestoneTypeKey] [int] NOT NULL,
	[MilestoneType] [varchar](250) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartnershipTerms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartnershipTerms](
	[PartnershipTermsKey] [int] NOT NULL,
	[PartnershipTerms] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRouteOfAdministration]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRouteOfAdministration](
	[RouteOfAdministrationKey] [int] NOT NULL,
	[RouteOfAdministrationName] [varchar](255) NOT NULL,
	[RouteOfAdministrationID] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProductDetail]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProductDetail](
	[ProductDetailKey] [int] NOT NULL,
	[ProductDetail] [varchar](8000) NULL,
	[IsDiscontinued] [bit] NULL,
	[StandardIndicationName] [nvarchar](255) NOT NULL,
	[DiseaseCategory] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[ModifiedDate] [datetimeoffset](7) NOT NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwPipeline]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP  VIEW [dbo].[vwPipeline]
CREATE VIEW [dbo].[vwPipeline]
AS 
WITH PMT
AS (
SELECT 
		ProductKey, 
		PMT.MolecularTargetKey, 
		CAST(MT.LegacyTargetName AS NVARCHAR(255)) AS MolecularTargetName,
		CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
		--MT.MolecularTargetFamily_Name,
		ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
	FROM 
		dbo.Product_to_MolecularTarget PMT
			INNER JOIN
					dbo.DimMolecularTarget MT     
					ON MT.MolecularTargetKey = PMT.MolecularTargetKey
					)

SELECT 
	CO.CompanyName,
	app.fnURL_Strip(CO.CompanyName) as EncodedCompanyName,
	CO.CompanyKey,
	--CO.IsCurrent AS Expr1, 
	P.ProductKey,
	P.[Name],
	app.fnURL_Strip(P.[Name]) as EncodedName,
	P.Description,
	DS.ClinicalPhaseKey,
	DS.Category,
	DS.SubCategory,
	DS.ClinicalPhase,
	PMT1.MolecularTargetName,
	app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
	PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
	------ CP.CompanyName AS Partners,
	------CP.IsCurrent, 
	TM.TherapeuticModalityID,
	TM.TherapeuticModalityKey,
	CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
	CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
	CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
	CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
	Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
	ClP.ClinicalPhase AS [Latest Stage of Development],
	pd.ProductDetailKey,
	pd.DiseaseCategory,
	app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
	pd.StandardIndicationName,
	app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
	pd.ProductDetail,	 
	CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,
	app.fnURL_Strip(pmt1.MolecularTargetName) AS EncodedTarget1,
	CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
	app.fnURL_Strip(pmt2.MolecularTargetName) AS EncodedTarget2,
	l.LicenseKey,	   
	COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
	COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
	InLicenseCo.CompanyName AS InLicensedCompany,
	mst.MilestoneKey,
	CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneType,
	mst.MilestoneText,
	mst.StartDate AS [Start Date of Milestone],
	mst.EndDate AS [End Date of Milestone],
	mst.MilestoneTypeKey AS MilestoneTypeKey,
	COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
	COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,	 
	moa.MechanismOfActionKey,
	CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
	COGeneralInfo.GeographyKey,
	COGeneralInfo.Country,
	COGeneralInfo.[Lead Product Status],
	COGeneralInfo.[Date of Lead Product Status],
	COGeneralInfo.[Business Category],
	COGeneralInfo.Exchange,
	COGeneralInfo.[Exchange 2],
	COGeneralInfo.State,
	COGeneralInfo.Region,
	COGeneralInfo.SubRegion,
	COGeneralInfo.YearFounded,
	COGeneralInfo.[Type of Last Financing],
	COGeneralInfo.[Date of Last Financing],
	COGeneralInfo.[Total Amount Raised],
	COGeneralInfo.[Market Cap],
	COGeneralInfo.[Date of Market Cap],
	COGeneralInfo.[MarketCapTier],
	COGeneralInfo.[Date of IPO],
	COGeneralInfo.[Number of Products (Originated)],
	COGeneralInfo.CompanyType,
	COGeneralInfo.[4-Year CAGR of EPS],
	COGeneralInfo.CompanyURL,
	COGeneralInfo.Ticker,
	COGeneralInfo.[Ticker 2],
	COGeneralInfo.OwnershipStatus,
	COGeneralInfo.IsCurrent,
	COGeneralInfo.IsFinancier,
	rd.RegulatoryDesignation,
	rd.RegulatoryRegion,
	pl.PipelineKey,
	PL.Code,
	pl.EventDateKey,
	pl.EventDate,
	pl.EventStatus,
	pl.Notes,
	pl.PhaseOfDevelopmentKey,
	vwPP.CompaniesInvolved AS PartnerCompanies,
	vwPPEncoded.CompaniesInvolved AS EncodedPartnerCompanies,
	vwPT.Concat_Target,
	pc.IsCurrent as [PartnerCompanyIsCurrent]
	
 
FROM  
	dbo.FactPipeline AS PL
	    LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
		LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
				AND PMT1.Rn=1
		LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
				AND PMT2.Rn=2
				 LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
				ON P.ProductKey = PTM.ProductKey			
        LEFT JOIN --added by Oleksiy N-ko, Bug 5649: "Therapeutic Modality": Incorrect behavior in grids when items related to 3rd level are checked
			[dbo].[vwTherapeuticModality] vtm 
				ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey
        --LEFT OUTER JOIN
		INNER JOIN -- 03-21-2018 MI
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
		  mv.vwCompanyGeneralInfo AS COGeneralInfo
			ON Co.CompanyKey = COGeneralInfo.CompanyKey
		LEFT OUTER JOIN           
			DimClinicalPhase ClP
				ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
		LEFT OUTER JOIN 
			FactLicense l 
				ON l.ProductKey = pl.ProductKey 
				AND l.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN
			DimPartnershipTerms pt 
				ON pt.PartnershipTermsKey = l.PartnershipTermsKey
		LEFT OUTER JOIN
			FactMilestone mst 
				ON mst.ProductKey = pl.ProductKey 
				AND mst.Productdetailkey = pl.ProductDetailKey
				--***
				LEFT OUTER JOIN 
				DimMilestoneType DMT
				ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
		LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
		LEFT OUTER JOIN
				Product_to_MechanismOfAction pmoa
					ON pmoa.ProductKey = pl.ProductKey 
		LEFT OUTER JOIN
				dbo.DimMechanismOfAction AS moa
					ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey			 
	    LEFT OUTER JOIN
				DimCompany AS InLicenseCo
				ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
		LEFT OUTER JOIN
				FactRegulatoryDesignation AS RD 
				ON pd.ProductDetailKey = rd.ProductDetailKey
		LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
		-- added SJN 09-20-2017 per Lam & David
		LEFT OUTER JOIN 
			dbo.vwConcatPartnersForProduct AS vwPP
				ON PL.productkey = vwPP.ProductKey AND PL.ProductDetailKey = vwPP.ProductDetailKey
		LEFT OUTER JOIN 
			[app].[vwConcatPartnersForProductEncoded] AS vwPPEncoded
				ON PL.productkey = vwPPEncoded.ProductKey AND PL.ProductDetailKey = vwPPEncoded.ProductDetailKey
		LEFT OUTER JOIN 
			dbo.vwConcatProductTarget AS vwPT
				ON PL.productkey = vwPT.ProductKey

				LEFT OUTER JOIN 
				dbo.DimCompany AS PC 
					ON L.InLicenseCompanyKey = PC.CompanyKey 

		--LEFT OUTER JOIN 
		--		vwProductLicense LI
		--			ON PL.ProductKey = LI.ProductKey 
		--			AND PL.ProductDetailKey = LI.ProductDetailKey
--WHERE
--		LI.Role = 'Licensee' or LI.Role is null
--    CO.IsCurrent = 'Yes'
 


GO
/****** Object:  Table [dbo].[FactFinancing]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactFinancing](
	[FinancingKey] [int] NOT NULL,
	[CompanyKey] [int] NOT NULL,
	[FinancingTypeKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[DateFiledKey] [int] NOT NULL,
	[DateCompletedKey] [int] NOT NULL,
	[PhaseAtFinancingKey] [int] NOT NULL,
	[DateFiled] [date] NULL,
	[DateCompleted] [date] NULL,
	[AmountRaised] [money] NULL,
	[SharesProposed] [bigint] NULL,
	[PriceRange] [varchar](20) NULL,
	[PriceRangeLow] [decimal](18, 2) NULL,
	[PriceRangeHigh] [decimal](18, 2) NULL,
	[FilingPrice] [decimal](18, 2) NULL,
	[SharesSold] [bigint] NULL,
	[SharesOutstanding] [bigint] NULL,
	[Rate] [decimal](18, 4) NULL,
	[YearEndPrice] [decimal](18, 2) NULL,
	[Completed] [varchar](250) NULL,
	[ComplComments] [varchar](60) NULL,
	[SharePrice] [decimal](18, 2) NULL,
	[Note] [text] NULL,
	[Overallotment] [varchar](60) NULL,
	[PricePrior] [decimal](18, 2) NULL,
	[SharesAfterOffer] [bigint] NULL,
	[SharesPrior] [bigint] NULL,
	[MarketCap] [money] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[FinancingID] [bigint] NULL,
	[Code] [int] NULL,
	[SharePriceOrigCurrency] [decimal](18, 4) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financing_to_Financier]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financing_to_Financier](
	[FinancingFinancierKey] [int] NOT NULL,
	[FinancingKey] [int] NOT NULL,
	[CompanyKey] [int] NOT NULL,
	[Rank] [int] NULL,
	[Role] [nvarchar](250) NULL,
	[FinancingID] [int] NULL,
	[InvestorID] [int] NULL,
	[UnderwriterID] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwFinancingFinanciers]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwFinancingFinanciers]
AS

SELECT  
	dbo.Financing_to_Financier.FinancingKey 
	,STRING_AGG (dbo.DimCompany.CompanyName,', ') WITHIN GROUP (ORDER BY Rank) as Financiers -- (CAST(dbo.DimCompany.CompanyName as nvarchar(MAX))
FROM
	dbo.Financing_to_Financier 
		INNER JOIN
			dbo.DimCompany 
				ON dbo.Financing_to_Financier.CompanyKey = dbo.DimCompany.CompanyKey
				WHERE dbo.Financing_to_Financier.FinancingKey > 0 -- to eliminate "STRING_AGG aggregation result exceeded the limit of 8000 bytes"
GROUP BY dbo.Financing_to_Financier.FinancingKey


GO
/****** Object:  Table [app].[DimMarketCapTier]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimMarketCapTier](
	[MarketCapTierKey] [int] NOT NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[LowerBound] [money] NULL,
	[UpperBound] [money] NULL,
	[Description] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCompanyNameHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCompanyNameHistory]

AS

SELECT
	c.CompanyKey,
	c.CompanyName,
	c.EventType,
	coalesce(p.CompanyKey, c.CompanyKey) as CurrentNameCompanyKey,
	coalesce(p.CompanyName, c.CompanyName) as CurrentNameCompanyName,
	p.EventType as p_event_type
FROM dbo.DimCompany AS C
left outer join dbo.DimCompany as P on c.companyid = p.companyid
--and c.eventtype = 'Name Change' 
and c.iscurrent = 'No' 
-- and p.eventtype = 'Name Change' 04/26 pre Lam's 6897
and p.isCurrent = 'Yes'
GO
/****** Object:  Table [dbo].[DimBCBiotechHub]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimBCBiotechHub](
	[BCBiotechHubKey] [int] NOT NULL,
	[BCBiotechHub] [varchar](250) NOT NULL,
	[GeographyKey] [int] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFinancingType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFinancingType](
	[FinancingTypeKey] [int] NOT NULL,
	[Category] [nvarchar](250) NULL,
	[Category_SortOrder] [int] NULL,
	[SubCategory] [nvarchar](250) NULL,
	[SubCategory_SortOrder] [int] NULL,
	[FinancingType] [nvarchar](250) NOT NULL,
	[FinancingType_SortOrder] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimGeography]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimGeography](
	[GeographyKey] [int] NULL,
	[Region] [nvarchar](50) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[Country] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[BiotechHub] [nvarchar](255) NULL,
	[RegulatoryRegion] [nvarchar](255) NULL,
	[SalesTerritory] [nvarchar](255) NULL,
	[LicensingTerritory] [nvarchar](255) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStockTicker]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStockTicker](
	[StockTickerKey] [int] NOT NULL,
	[CompanyKey] [int] NULL,
	[Ticker] [varchar](50) NULL,
	[Exchange] [varchar](50) NULL,
	[ExchangeDescription] [varchar](200) NULL,
	[IsPrimary] [nchar](3) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwBiotechHubToRegion]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwBiotechHubToRegion](
	[BCBiotechHubKey] [int] NULL,
	[BCBiotechHub] [varchar](250) NULL,
	[GeographyKey] [int] NULL,
	[Id] [int] NULL,
	[Region] [nvarchar](64) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyBusinessTypes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyBusinessTypes](
	[CompanyKey] [int] NULL,
	[BusinessTypes] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyLatestMarketCap]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyLatestMarketCap](
	[CompanyKey] [int] NULL,
	[StockTickerKey] [int] NULL,
	[MarketCap] [money] NULL,
	[MarketCap_USD] [money] NULL,
	[CurrencyKey] [int] NULL,
	[ValueDate] [date] NULL,
	[IsPrimary] [nchar](3) NULL,
	[Exchange] [varchar](50) NULL,
	[Ticker] [varchar](50) NULL,
	[rn] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyNameHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyNameHistory](
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EventType] [nvarchar](250) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[p_event_type] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCompanyGeneralInfo]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE   VIEW [dbo].[vwCompanyGeneralInfo]
AS

SELECT
	C.CompanyKey, 
	c.code as CompanyCode,
	C.CompanyName,
	app.fnURL_Strip(C.CompanyName) AS EncodedCompanyName,
	CNH.CurrentNameCompanyKey,
	CNH.CurrentNameCompanyName, 
	app.fnURL_Strip(CNH.CurrentNameCompanyName) AS CurrentNameEncodedName,
	CNH.EventType,  --01-25-2021 CatH change
	C.CompanyNameAbbr,
	CAST(ET.ExchangeDescription  AS NVARCHAR(255)) as Exchange, 
	CAST(ET.Ticker  AS NVARCHAR(255)) AS Ticker, 
	CAST(ET2.ExchangeDescription AS NVARCHAR(255)) AS [Exchange 2],
	CAST(ET2.Ticker AS NVARCHAR(255)) AS [Ticker 2],
	CAST(cbt.BusinessTypes  AS NVARCHAR(255)) AS [Business Category],
	concat_ws(', ', c.AddressLine1, c.City, c.State, c.Country, c.ZipCode) AS [Location],
	c.AddressLine1,
	c.AddressLine2,
	coalesce(bhr.Region, G.Region) AS Region, 
	C.Country, 
	c.ZipCode,
	C.YearFounded, 
	C.CompanyURL, 
	CP.Category as ClinicalPhaseCategory,
	CP.SubCategory as ClinicalPhaseSubCategory,
	CP.ClinicalPhase AS [Lead Product Status],
	c.LeadProductStatusDate AS [Date of Lead Product Status],
	c.IsActive AS [Active/Not active],
	cf.DateCompleted AS [Date of Last Financing],
	cf.FinancingType AS [Type of Last Financing],
	cf.AmountRaised AS [Amount Raised in Last Financing],
	cf.Financiers AS [Financiers of Last Financing],
	TotalAmountRaised AS [Total Amount Raised],
	clmc.ValueDate AS [Date of Market Cap],
	clmc.MarketCap_USD AS [Market Cap],
	clmc.MarketCap_USD AS [Market Cap USD],
	cipo.DateCompleted AS [Date of IPO],
	ProductsNumber AS [Number of Products (Originated)],
	0.00 AS [4-Year CAGR of EPS],
	C.CompanyType AS [OriginalCompanyType],
	CASE
		WHEN C.CompanyType not in ('Small-Cap Biopharma (<$1 billion)',
									 'Mid-Cap Biopharma ($1-$50 billion)',
									 'Large-Cap Biopharma (>=$50 billion)')
						OR clmc.MarketCap_USD is null
						OR clmc.MarketCap_USD = 0
									 THEN C.CompanyType
		ELSE CASE
				WHEN clmc.MarketCap_USD < 1000000000 THEN 'Small-Cap Biopharma (<$1 billion)'
				WHEN clmc.MarketCap_USD >= 1000000000 
					 and clmc.MarketCap_USD < 50000000000 THEN 'Mid-Cap Biopharma ($1-$50 billion)'
				WHEN clmc.MarketCap_USD >= 50000000000 THEN 'Large-Cap Biopharma (>=$50 billion)'
				END
		END AS CompanyType,
	c.State, 
	C.CompanyCategory, 
	C.CompanyID, 
	C.Legacy_CompanyID, 
	C.Territory, 
	C.IsCurrent, 
	G.SubRegion, 
	C.GeographyKey,
	c.OwnershipStatus,
	c.[Legacy_UnderwriterID] as [LegacyUnderwriterId],
	c.[Legacy_InvestorID] as [LegacyInvestorId],
	CAST(bh.BCBiotechHub  AS NVARCHAR(255)) AS BCBiotechHub,
	c.City,
	c.IsFinancier,
	c.BCBiotechHubKey,
	CASE --PER TJ
		WHEN OwnershipStatus='Private' THEN NULL
		ELSE mct.MarketCapTier
	END AS MarketCapTier, 
	coalesce(CAST(bh.BCBiotechHub  AS NVARCHAR(255)),  C.Country, G.SubRegion, G.Region) as GeoLeaf,
	c.ModifiedDate as LastUpdated,
	c.SearchBy,
	CASE
		WHEN ET.Ticker IS NOT NULL THEN 'Public'
		WHEN ET.Ticker IS NULL THEN 'Private'
	END AS [Public/Private],
	c.Archived, --01-25-2021 CatH change
	(CASE WHEN (c.isActive = 'No') THEN 'No' ELSE (CASE WHEN c.Archived = 1 THEN 'Archived' ELSE  'Yes' END ) END) AS [Active/Archived/NotActive] --Task 22561 changed on 11-11-2022
	--(CASE WHEN (c.Archived = 1) THEN 'Archived' else c.IsActive END) AS [Active/Archived/NotActive] --Task 22561 added on 11-10-2022
FROM            
	dbo.DimCompany AS C 
		LEFT OUTER JOIN
			dbo.DimGeography AS G 
				ON C.GeographyKey = G.GeographyKey 
		LEFT OUTER JOIN [mv].[vwBiotechHubToRegion] bhr
				ON c.BCBiotechHubKey = bhr.BCBiotechHubKey
		LEFT OUTER JOIN
			dbo.DimStockTicker AS ET 
				ON C.CompanyKey = ET.CompanyKey
				AND ET.IsPrimary='Yes'
		LEFT OUTER JOIN
			dbo.DimStockTicker AS ET2 
				ON C.CompanyKey = ET2.CompanyKey 
				AND ET2.IsPrimary='No'
		LEFT OUTER JOIN
			mv.vwCompanyLatestMarketCap clmc
				ON C.CompanyKey = clmc.CompanyKey
		LEFT OUTER JOIN DimBCBiotechHub bh
				ON  c.BCBiotechHubKey = bh.BCBiotechHubKey
		LEFT OUTER JOIN
			DimClinicalPhase CP
			ON C.LeadProductStatusKey=CP.ClinicalPhaseKey
		LEFT OUTER JOIN
			(
				SELECT  F.CompanyKey,
				CurrentNameCompanyKey,
				FinancingType,
				DateCompleted,
				AmountRaised,
				FF.Financiers,
				SUM(AmountRaised) OVER(PARTITION BY CurrentNameCompanyKey) AS TotalAmountRaised,
				ROW_NUMBER() OVER(PARTITION BY CurrentNameCompanyKey ORDER By DateCompleted DESC) AS rn
				FROM    
					dbo.FactFinancing f
						INNER JOIN dbo.DimFinancingType ft
							ON f.FinancingTypeKey = ft.FinancingTypeKey
						JOIN mv.vwCompanyNameHistory CH
							ON F.CompanyKey = CH.CompanyKey
						LEFT JOIN vwFinancingFinanciers FF
							ON F.FinancingKey = FF.FinancingKey
				WHERE Completed = 'Completed') cf
						ON c.CompanyKey =cf.CurrentNameCompanyKey
						AND cf.rn=1
		LEFT OUTER JOIN
			(
			SELECT OriginatorCompanyKey, COUNT(ProductKey) AS ProductsNumber
			FROM dbo.DimProduct
			GROUP BY OriginatorCompanyKey
			) p
			ON c.CompanyKey =p.OriginatorCompanyKey
		LEFT OUTER JOIN
			(SELECT f.CompanyKey, min(f.DateCompleted) as DateCompleted
			FROM dbo.FactFinancing AS f 
				INNER JOIN
					dbo.DimFinancingType AS ft 
						ON f.FinancingTypeKey = ft.FinancingTypeKey
			WHERE ft.FinancingType = 'IPO'
			group by f.CompanyKey) cipo
				ON c.CompanyKey =cipo.CompanyKey
		LEFT OUTER JOIN
				mv.vwCompanyBusinessTypes cbt
					ON c.CompanyKey =cbt.CompanyKey
		 LEFT OUTER JOIN 
			app.DimMarketCapTier mct	
				ON clmc.MarketCap_USD >=mct.LowerBound--- COALESCE(mct.LowerBound,clmc.MarketCap_USD) 
				AND clmc.MarketCap_USD <= COALESCE(mct.UpperBound,clmc.MarketCap_USD)
		LEFT OUTER JOIN dbo.vwCompanyNameHistory AS CNH 
				ON C.companykey = CNH.companykey

GO
/****** Object:  Table [dbo].[FactEarnings]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactEarnings](
	[EarningsID] [int] NULL,
	[EarningsCode] [int] NULL,
	[CompanyKey] [int] NULL,
	[FiscalPeriodKey] [int] NULL,
	[FiscalYear] [int] NULL,
	[CurrencyKey] [int] NULL,
	[DatePeriodEndedKey] [varchar](20) NULL,
	[DateFiledKey] [varchar](20) NULL,
	[DocumentType] [varchar](30) NULL,
	[IsAmended] [nvarchar](3) NULL,
	[SharesOutstanding] [real] NULL,
	[Cash] [money] NULL,
	[TotalCash] [money] NULL,
	[ShortTermInvestments] [money] NULL,
	[ShortTermInvestmentsOther] [money] NULL,
	[ProductSales] [money] NULL,
	[ServiceSales] [money] NULL,
	[TotalSales] [money] NULL,
	[GrantRevenue] [money] NULL,
	[LicenseRevenue] [money] NULL,
	[RoyaltyRevenue] [money] NULL,
	[TotalRevenue] [money] NULL,
	[ResearchAndDevelopment] [money] NULL,
	[SellingGeneralAndAdministrative] [money] NULL,
	[OperatingIncomeLoss] [money] NULL,
	[IncomeFromContinuingOperations] [money] NULL,
	[Earnings] [money] NULL,
	[EarningsPerShare] [money] NULL,
	[DilutedEarningsPerShare] [money] NULL,
	[SharesAverageBasic] [real] NULL,
	[SharesAverageDiluted] [real] NULL,
	[MarketCap] [money] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCompanyEPSCAGR]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwCompanyEPSCAGR]
AS
   
SELECT  DISTINCT
		EndValues.CompanyKey, 
		CASE WHEN EndValues.EarningsPerShare>0 AND InitialValues.EarningsPerShare>0 THEN
				POWER(EndValues.EarningsPerShare/InitialValues.EarningsPerShare,1/(4.00))-1 
		END AS EPS_CAGR	
FROM            
	dbo.FactEarnings AS EndValues 
		INNER JOIN
			(
			SELECT        
				CompanyKey, 
				MAX(FiscalYear) AS FiscalYear, 
				MAX(FiscalYear) - 3 AS StartYear
			FROM            
				dbo.FactEarnings
			WHERE (FiscalPeriodKey = 1)
			GROUP BY CompanyKey
			) AS YY 
				ON EndValues.CompanyKey = YY.CompanyKey AND EndValues.FiscalYear = YY.FiscalYear 
		INNER JOIN
			dbo.FactEarnings AS InitialValues 
				ON YY.CompanyKey = InitialValues.CompanyKey 
				AND YY.StartYear = InitialValues.FiscalYear
WHERE        
	(EndValues.FiscalPeriodKey = 1) 
	AND (InitialValues.FiscalPeriodKey = 1)

GO
/****** Object:  Table [dbo].[Company_to_BusinessType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_to_BusinessType](
	[CompanyBusinessTypeKey] [bigint] NOT NULL,
	[BusinessTypeKey] [int] NULL,
	[BusinessTypeName] [varchar](250) NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [varchar](250) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimBusinessType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimBusinessType](
	[BusinessTypeKey] [bigint] NOT NULL,
	[BusinessType] [varchar](250) NOT NULL,
	[BusinessClass] [varchar](250) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCompanyBusinessTypes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCompanyBusinessTypes]
AS
SELECT  cbt.CompanyKey ,
        STRING_AGG(bt.BusinessType,'; ') AS BusinessTypes
FROM    
	dbo.Company_to_BusinessType AS cbt
		INNER JOIN 
			dbo.DimBusinessType AS bt 
				ON cbt.BusinessTypeKey = bt.BusinessTypeKey
GROUP BY CompanyKey
GO
/****** Object:  Table [dbo].[DimCurrency]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCurrency](
	[CurrencyKey] [int] NULL,
	[CurrencyID] [int] NULL,
	[Currency] [varchar](50) NULL,
	[CurrencyAbbr] [varchar](25) NULL,
	[UniversalCurrencyAbbr] [varchar](3) NULL,
	[BriefCurrencyAbbr] [varchar](3) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDateUK] [char](10) NULL,
	[FullDateUSA] [char](10) NULL,
	[DayOfMonth] [char](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeekUSA] [char](1) NULL,
	[DayOfWeekUK] [char](1) NULL,
	[DayOfWeekInMonth] [char](2) NULL,
	[DayOfWeekInYear] [char](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [char](1) NULL,
	[WeekOfQuarter] [char](2) NULL,
	[WeekOfYear] [char](2) NULL,
	[Month] [char](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [char](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[YYYYMM] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsHolidayUSA] [bit] NULL,
	[IsWeekday] [bit] NULL,
	[HolidayUSA] [varchar](50) NULL,
	[IsHolidayUK] [bit] NULL,
	[HolidayUK] [varchar](50) NULL,
	[HalfYear] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFiscalPeriod]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFiscalPeriod](
	[FiscalPeriodKey] [int] NOT NULL,
	[FiscalPeriodID] [int] NULL,
	[FiscalPeriod] [varchar](10) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwEarnings]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwEarnings]
AS 
SELECT --TOP 10
	fe.EarningsCode as Code,
	fe.EarningsID,
    fe.CompanyKey,
    dd.Date AS DateReported,
    --fe.FiscalPeriodKey ,
    CASE
        WHEN dfp.FiscalPeriod LIKE 'Q[1-4]' THEN REVERSE(dfp.FiscalPeriod) + ' ended'
        ELSE dfp.FiscalPeriod + ' ended'
    END AS Period,
    fe.FiscalYear,
    CASE
        WHEN dfp.FiscalPeriod = 'FY' THEN CAST(FiscalYear AS char(4))
        ELSE CAST(FiscalYear AS char(4)) + dfp.FiscalPeriod
    END AS FiscalPeriodID,
    NULL AS CalendarPeriodID,
    fe.SharesOutstanding,
	cast(fe.SharesOutstanding as Bigint) as [SharesOutstanding_bigint],
    fe.Cash,
    fe.TotalCash,
    fe.ShortTermInvestments,
    fe.ShortTermInvestmentsOther,
    fe.ProductSales,
    fe.ServiceSales,
    fe.TotalSales,
    fe.GrantRevenue,
    fe.LicenseRevenue,
    fe.RoyaltyRevenue,
    fe.TotalRevenue,
    fe.ResearchAndDevelopment,
    fe.SellingGeneralAndAdministrative,
    fe.OperatingIncomeLoss,
	case 
		when [TotalCash] is null or TotalCash = 0 then null
		else [OperatingIncomeLoss] / [TotalCash] 
	end as [Operating Income / Cash Ratio],
    fe.IncomeFromContinuingOperations,
    fe.Earnings NetIncome,
    fe.EarningsPerShare,
    fe.DilutedEarningsPerShare,
    fe.SharesAverageBasic,
    fe.SharesAverageDiluted,
    fe.MarketCap,
    dc.BriefCurrencyAbbr AS Currency,
    NULL AS CurrencyRate,
    COALESCE(lr.rn,0) IsLastReported,
    --metrix

    CASE
        WHEN Earnings > 0 THEN MarketCap / Earnings
    END AS PE,
    CASE
        WHEN FiscalPeriod = 'FY' AND
            TotalRevenue > 0 THEN MarketCap / NULLIF(TotalRevenue, 0)
    END AS PriceToRevenue,
    CASE
        WHEN FiscalPeriod = 'FY' AND
            TotalSales > 0 THEN ABS(ResearchAndDevelopment) / NULLIF(TotalSales, 0)
    END AS RDToSales,
    CASE
        WHEN TotalRevenue > 0 THEN ABS(ResearchAndDevelopment) / NULLIF(TotalRevenue, 0)
    END AS RDToRevenue,
    CASE
        WHEN TotalSales > 0 THEN ABS(SellingGeneralAndAdministrative) / NULLIF(TotalSales, 0)
    END AS SGAToSales,
    CASE
        WHEN TotalRevenue > 0 THEN ABS(SellingGeneralAndAdministrative) / NULLIF(TotalRevenue, 0)
    END AS SGAToRevenue,
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% - Task # 20136 - O. Stepanovsky 06/02/2022
	CASE 
		WHEN fe.Earnings > 0 THEN MarketCap / NULLIF(fe.Earnings,0) 
	END AS MarketCapToNetIncome, 
    CASE 
		WHEN TotalRevenue > 0 THEN MarketCap / NULLIF(TotalRevenue,0) 
	END AS MarketCapToRevenue,
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    fe.MarketCap - fe.TotalCash AS TechValue,
    c.CompanyName,
	app.fnURL_Strip(c.CompanyName) as EncodedCompanyName,
    g.Region,
    g.Country,
    c.YearFounded, 
	concat(Substring(fe.DatePeriodEndedKey, 5,2), '/', Substring(fe.DatePeriodEndedKey, 7,2),'/', Substring(fe.DatePeriodEndedKey, 1,4)) as AsOfDate,
	cast(concat(Substring(fe.DatePeriodEndedKey, 5,2), '/', Substring(fe.DatePeriodEndedKey, 7,2),'/', Substring(fe.DatePeriodEndedKey, 1,4)) as DateTime) as [AsOfDate_Datetime],
	CGR.EPS_CAGR AS [4-Year CAGR of EPS],
	--c.AddressLine1 AS 
	[Location],
	C.CompanyURL as [Website],
	c.[State],
	cbt.BusinessTypes AS BusinessCategory,
	--c.IsActive AS 
	[Active/Not active],
	C.CompanyType,
	p.ProductsNumber AS [Number of Products (Originated)],
	c.[Total Amount Raised]
FROM
    dbo.FactEarnings fe
        INNER JOIN
            dbo.DimDate dd
                ON fe.DatePeriodEndedKey = dd.DateKey
        INNER JOIN
            dbo.DimFiscalPeriod dfp
                ON fe.FiscalPeriodKey = dfp.FiscalPeriodKey
        INNER JOIN
            dbo.DimCurrency dc
                ON fe.CurrencyKey = dc.CurrencyKey
        LEFT OUTER JOIN
            --DimCompany 
			dbo.vwCompanyGeneralInfo c
                ON c.CompanyKey = fe.CompanyKey
        LEFT OUTER JOIN
            DimGeography g
                ON g.GeographyKey = c.GeographyKey
		LEFT OUTER JOIN
			(
			SELECT fe2.EarningsCode, fe2.CompanyKey,fe2.DatePeriodEndedKey,
			RANK() OVER(PARTITION BY fe2.CompanyKey ORDER By fe2.DatePeriodEndedKey DESC) AS rn
			FROM dbo.FactEarnings fe2
			) lr
				ON fe.EarningsCode=lr.Earningscode
				AND lr.rn=1
		
		LEFT OUTER JOIN
			dbo.vwCompanyEPSCAGR AS CGR
				ON C.CompanyKey = CGR.CompanyKey
		LEFT OUTER JOIN
				vwCompanyBusinessTypes cbt
					ON c.CompanyKey =cbt.CompanyKey
		LEFT OUTER JOIN
			(
			SELECT OriginatorCompanyKey, COUNT(ProductKey) AS ProductsNumber
			FROM dbo.DimProduct
			GROUP BY OriginatorCompanyKey
			) p
			ON c.CompanyKey =p.OriginatorCompanyKey
GO
/****** Object:  View [app].[vwArticleSearchProducts]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwArticleSearchProducts]

AS

SELECT
	p.ProductKey,
	p.[Name],
	p.[SearchBy]
FROM DimProduct p
GO
/****** Object:  Table [app].[ProductUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[ProductUrlHistory](
	[ProductID] [int] NOT NULL,
	[ProductKey] [int] NULL,
	[URLSearchBy] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwProductUrls]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwProductUrls]
AS
	SELECT	MIN( a.ProductKey ) ProductKey, a.URLSearchBy
	FROM (
		SELECT	c.ProductKey, app.fnURL_Strip(c.Name) URLSearchBy
		FROM	dbo.DimProduct c

		UNION ALL
	
		SELECT	c.ProductKey, c.URLSearchBy
		FROM	app.ProductUrlHistory c 
	) a
	WHERE	a.ProductKey IS NOT NULL
	  AND	a.URLSearchBy	IS NOT NULL
	  AND	a.URLSearchBy	!= ''
	GROUP BY	a.URLSearchBy
GO
/****** Object:  Table [app].[MolecularTargetUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[MolecularTargetUrlHistory](
	[MolecularTargetID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwMolecularTargetUrls]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwMolecularTargetUrls]
AS
	SELECT	MIN( a.MolecularTargetID ) MolecularTargetID, a.URLSearchBy
	FROM (
		SELECT	c.MolecularTargetKey MolecularTargetID, app.fnURL_Strip(c.MolecularTargetName) URLSearchBy
		FROM	dbo.DimMolecularTarget c

		UNION ALL
	
		SELECT	c.MolecularTargetID, c.URLSearchBy
		FROM	app.MolecularTargetUrlHistory c 
	) a
	WHERE	a.MolecularTargetID	IS NOT NULL
	  AND	a.URLSearchBy		IS NOT NULL
	  AND	a.URLSearchBy		!= ''
	GROUP BY	a.URLSearchBy
GO
/****** Object:  View [dbo].[vwProductLicense]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE    VIEW [dbo].[vwProductLicense]
AS

SELECT  
	L.ProductKey,
	L.ProductDetailKey,
	PC.CompanyName AS PartnerCompanyName, 
	L.InLicenseCompanyKey AS PartnerCompanyKey, 
	'Licensee' as Role
FROM 
	--dbo.FactPipeline AS PL  
	--	LEFT OUTER JOIN
  			dbo.FactLicense AS L    
					--ON PL.productkey = L.ProductKey 
					--AND PL.ProductDetailKey = L.ProductDetailKey 
		INNER JOIN
			dbo.DimCompany AS PC 
				ON L.InLicenseCompanyKey = PC.CompanyKey 
WHERE L.EndDate is null

UNION
SELECT  
	PL.ProductKey,
	PL.ProductDetailKey,
	PC.CompanyName AS PartnerCompanyName, 
	PL.CompanyKey AS PartnerCompanyKey, 
	--P.OriginatorCompanyKey AS PartnerCompanyKey, 
	'Originator/Owner' as Role
FROM 
  	dbo.FactPipeline AS PL  
		--LEFT OUTER JOIN
		--	dbo.DimProduct P
		--		ON PL.ProductKey = P.ProductKey   
		INNER JOIN
			dbo.DimCompany AS PC 
				--ON P.OriginatorCompanyKey = PC.CompanyKey
				ON PL.CompanyKey = PC.CompanyKey

GO
/****** Object:  View [dbo].[vwPipeline_Ext]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwPipeline_Ext]
AS
WITH PMT
AS (
SELECT
ProductKey,
PMT.MolecularTargetKey,
CAST(MT.LegacyTargetName AS NVARCHAR(255)) AS MolecularTargetName,
CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
--MT.MolecularTargetFamily_Name,
ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
FROM
dbo.Product_to_MolecularTarget PMT
INNER JOIN
dbo.DimMolecularTarget MT    
ON MT.MolecularTargetKey = PMT.MolecularTargetKey
)

SELECT
CO.CompanyName,
app.fnURL_Strip(CO.CompanyName) as EncodedCompanyName,
CO.CompanyKey,
CASE
WHEN CO.IsActive = 'Yes' AND
P.IsDiscontinued = 'No' AND
PL.IsDiscontinued = 0 THEN CONVERT(bit, 0)
--(use PL.IsDiscontinued instead of pd.IsDiscontinued)
ELSE CONVERT(bit, 1)
END AS [IsDiscontinued],
--CO.IsCurrent AS Expr1,
P.ProductKey,
p.ProductId,
P.[Name],
app.fnURL_Strip(P.[Name]) as EncodedName,
P.Description,
DS.ClinicalPhaseKey,
DS.Category,
DS.SubCategory,
DS.ClinicalPhase,
PMT1.MolecularTargetName,
app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
------ CP.CompanyName AS Partners,
------CP.IsCurrent,
TM.TherapeuticModalityID,
--TM.TherapeuticModalityName,
CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
ClP.ClinicalPhase AS [Latest Stage of Development],
pd.ProductDetailKey,
pd.DiseaseCategory,
app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
pd.StandardIndicationName,
app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
pd.ProductDetail,
CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,
app.fnURL_Strip(pmt1.MolecularTargetName) AS EncodedTarget1,
CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
app.fnURL_Strip(pmt2.MolecularTargetName) AS EncodedTarget2,
l.LicenseKey,  
COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
InLicenseCo.CompanyName AS InLicensedCompany,
mst.MilestoneKey,
mst.MilestoneText,
mst.StartDate AS [Start Date of Milestone],
mst.EndDate AS [End Date of Milestone],
mst.MilestoneTypeKey AS MilestoneType,
CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneTypeStr,
COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,
moa.MechanismOfActionKey,
CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
COGeneralInfo.GeographyKey,
COGeneralInfo.Country,
COGeneralInfo.[Lead Product Status],
COGeneralInfo.[Date of Lead Product Status],
COGeneralInfo.[Business Category],
COGeneralInfo.Exchange,
COGeneralInfo.[Exchange 2],
COGeneralInfo.State,
COGeneralInfo.Region,
COGeneralInfo.SubRegion,
COGeneralInfo.YearFounded,
COGeneralInfo.[Type of Last Financing],
COGeneralInfo.[Date of Last Financing],
COGeneralInfo.[Total Amount Raised],
COGeneralInfo.[Market Cap],
COGeneralInfo.[Date of Market Cap],
COGeneralInfo.[MarketCapTier],
COGeneralInfo.[Date of IPO],
COGeneralInfo.[Number of Products (Originated)],
COGeneralInfo.CompanyType,
COGeneralInfo.[4-Year CAGR of EPS],
COGeneralInfo.CompanyURL,
COGeneralInfo.Ticker,
COGeneralInfo.[Ticker 2],
COGeneralInfo.OwnershipStatus,
COGeneralInfo.IsCurrent,
COGeneralInfo.IsFinancier,
rd.RegulatoryDesignation,
rd.RegulatoryRegion,
pl.PipelineKey,
PL.Code,
pl.EventDateKey,
pl.EventDate,
pl.EventStatus,
pl.Notes,
pl.PhaseOfDevelopmentKey,
vwPP.CompaniesInvolved AS PartnerCompanies,
vwPPEncoded.CompaniesInvolved AS EncodedPartnerCompanies,
vwPT.Concat_Target,
vwPT.[Concat_LegacyTargetName],
LI.PartnerCompanyName,
LI.PartnerCompanyKey,
LI.Role,
pc.IsCurrent as [PartnerCompanyIsCurrent]

 
FROM  
dbo.FactPipeline AS PL
   LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
AND PMT1.Rn=1
LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
AND PMT1.Rn=2
LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
ON P.ProductKey = PTM.ProductKey
LEFT JOIN
[dbo].[vwTherapeuticModality] vtm
ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey
        --LEFT OUTER JOIN
INNER JOIN -- 03-21-2018 MI
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
 mv.vwCompanyGeneralInfo AS COGeneralInfo
ON Co.CompanyKey = COGeneralInfo.CompanyKey
LEFT OUTER JOIN          
DimClinicalPhase ClP
ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
LEFT OUTER JOIN
FactLicense l
ON l.ProductKey = pl.ProductKey
AND l.Productdetailkey = pl.ProductDetailKey
LEFT OUTER JOIN
DimPartnershipTerms pt
ON pt.PartnershipTermsKey = l.PartnershipTermsKey
LEFT OUTER JOIN
(
SELECT ProductKey, ProductDetailKey, MilestoneStatusKey, MilestoneKey, MilestoneText, EndDate, StartDate, m.MilestoneTypeKey
FROM
FactMilestone m
WHERE
(
m.MilestoneStatusKey = 1
AND m.EndDate >= GETDATE()
)
OR
m.MilestoneKey is null

) mst ON mst.ProductKey = pl.ProductKey AND mst.Productdetailkey = pl.ProductDetailKey
LEFT OUTER JOIN
DimMilestoneType DMT
ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
LEFT OUTER JOIN
Product_to_MechanismOfAction pmoa
ON pmoa.ProductKey = pl.ProductKey
LEFT OUTER JOIN
dbo.DimMechanismOfAction AS moa
ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey
   LEFT OUTER JOIN
DimCompany AS InLicenseCo
ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
LEFT OUTER JOIN
FactRegulatoryDesignation AS RD
ON pd.ProductDetailKey = rd.ProductDetailKey
LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
-- added SJN 09-20-2017 per Lam & David
LEFT OUTER JOIN
dbo.vwConcatPartnersForProduct AS vwPP
ON PL.productkey = vwPP.ProductKey
AND PL.ProductDetailKey = vwPP.ProductDetailKey
LEFT OUTER JOIN
[app].[vwConcatPartnersForProductEncoded] AS vwPPEncoded
ON PL.productkey = vwPPEncoded.ProductKey AND PL.ProductDetailKey = vwPPEncoded.ProductDetailKey
LEFT OUTER JOIN
dbo.vwConcatProductTarget AS vwPT
ON PL.ProductKey = vwPT.ProductKey
LEFT OUTER JOIN
dbo.DimCompany AS PC
ON L.InLicenseCompanyKey = PC.CompanyKey
LEFT OUTER JOIN
vwProductLicense LI
ON PL.ProductKey = LI.ProductKey
AND PL.ProductDetailKey = LI.ProductDetailKey

GO
/****** Object:  View [dbo].[vwLeadPipeline_KO]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwLeadPipeline_KO] 
AS

SELECT DISTINCT
	P.PartnerCompanyKey,
	--P.PartnerCompanyName,
	P.CompanyKey,
	--P.CompanyName,
	P.ProductKey,
	--P.Name,
	P.ProductDetailKey,
	--P.DiseaseCategory,
	--P.StandardIndicationName,
	P.ClinicalPhaseKey--,
	--P.ClinicalPhase
FROM vwPipeline_Ext P
	JOIN
	(
		SELECT PartnerCompanyKey, MAX(ClinicalPhaseKey) as 'MaxClinPhaseKey'
		FROM vwPipeline_Ext
		WHERE ClinicalPhase <> 'Marketed'
		GROUP BY PartnerCompanyKey
	) P2
	ON P.PartnerCompanyKey = P2.PartnerCompanyKey AND P.ClinicalPhaseKey = P2.MaxClinPhaseKey

UNION ALL

SELECT DISTINCT
	P.PartnerCompanyKey,
	--P.PartnerCompanyName,
	P.CompanyKey,
	--P.CompanyName,
	P.ProductKey,
	--P.Name,
	P.ProductDetailKey,
	--P.DiseaseCategory,
	--P.StandardIndicationName,
	P.ClinicalPhaseKey--,
	--P.ClinicalPhase
FROM vwPipeline_Ext P
	JOIN
	(
		SELECT PartnerCompanyKey, MAX(ClinicalPhaseKey) as 'MaxClinPhaseKey'
		FROM vwPipeline_Ext
		WHERE ClinicalPhase = 'Marketed'
		GROUP BY PartnerCompanyKey
		HAVING COUNT(ProductKey) = 1
	) P2
	ON P.PartnerCompanyKey = P2.PartnerCompanyKey AND P.ClinicalPhaseKey = P2.MaxClinPhaseKey
GO
/****** Object:  Table [app].[MolecularTargetFamily]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[MolecularTargetFamily](
	[MolecularTargetFamilyID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[SearchBy] [varchar](255) NOT NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([Name])+'_(family)'),
 CONSTRAINT [PK_MolecularTargetFamily] PRIMARY KEY CLUSTERED 
(
	[MolecularTargetFamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[MolecularTargetFamilyUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[MolecularTargetFamilyUrlHistory](
	[MolecularTargetFamilyID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwMolecularTargetFamilyUrls]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwMolecularTargetFamilyUrls]
AS
	SELECT	MIN( a.MolecularTargetFamilyID ) MolecularTargetFamilyID, a.URLSearchBy
	FROM (
		SELECT	c.MolecularTargetFamilyID MolecularTargetFamilyID, app.fnURL_Strip(c.Name) URLSearchBy
		FROM	app.MolecularTargetFamily c

		UNION ALL
	
		SELECT	c.MolecularTargetFamilyID, c.URLSearchBy
		FROM	app.MolecularTargetFamilyUrlHistory c 
	) a
	WHERE	a.MolecularTargetFamilyID	IS NOT NULL
	  AND	a.URLSearchBy				IS NOT NULL
	  AND	a.URLSearchBy				!= ''
	GROUP BY	a.URLSearchBy
GO
/****** Object:  View [app].[vwDimMolecularTarget]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [app].[vwDimMolecularTarget] as

--DROP view [app].[vwDimMolecularTarget]

select 
[MolecularTargetKey],
[MolecularTargetName],
app.fnURL_Strip(LegacyTargetName) as EncodedMolecularTargetName,
MolecularTargetFamily_Name,
app.fnURL_Strip(MolecularTargetFamily_Name) as EncodedMolecularTargetFamily_Name,
[DateTargetCreated], 
[LegacyTargetName], 
[Synonyms],
[CreatedDate],
[ModifiedDate],
[CreatedProcessID],
[ModifiedProcessID]
from dbo.DimMolecularTarget;
GO
/****** Object:  Table [app].[DiseaseCategoryUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DiseaseCategoryUrlHistory](
	[DiseaseCategoryID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwDiseaseCategoryUrls]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDiseaseCategoryUrls]
AS
	SELECT	MIN( a.DiseaseCategoryID ) DiseaseCategoryID, a.URLSearchBy
	FROM (
		SELECT	c.DiseaseCategoryKey DiseaseCategoryID, app.fnURL_Strip(c.DiseaseCategoryName) URLSearchBy
		FROM	dbo.DimDiseaseCategory c

		UNION ALL
	
		SELECT	c.DiseaseCategoryID, c.URLSearchBy
		FROM	app.DiseaseCategoryUrlHistory c 
	) a
	WHERE	a.DiseaseCategoryID	IS NOT NULL
	  AND	a.URLSearchBy		IS NOT NULL
	  AND	a.URLSearchBy		!= ''
	GROUP BY	a.URLSearchBy
GO
/****** Object:  View [app].[vwDimDiseaseCategory ]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwDimDiseaseCategory ] as

SELECT 
       [DiseaseCategoryKey]
      ,[DiseaseCategoryName]
	  ,app.fnURL_Strip([DiseaseCategoryName]) AS EncodedDiseaseCategoryName
      ,[CreatedDate]
      ,[ModifiedDate]
      ,[CreatedProcessID]
      ,[ModifiedProcessID]
FROM dbo.DimDiseaseCategory;
GO
/****** Object:  Table [app].[StandardIndicationUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[StandardIndicationUrlHistory](
	[StandardIndicationID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwStandardIndicationUrls]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwStandardIndicationUrls]
AS
	SELECT	MIN( a.StandardIndicationID ) StandardIndicationID, a.URLSearchBy
	FROM (
		SELECT	c.StandardIndicationKey StandardIndicationID, app.fnURL_Strip(c.StandardIndicationName) URLSearchBy
		FROM	dbo.DimStandardIndication c

		UNION ALL
	
		SELECT	c.StandardIndicationID, c.URLSearchBy
		FROM	app.StandardIndicationUrlHistory c 
	) a
	WHERE	a.StandardIndicationID	IS NOT NULL
	  AND	a.URLSearchBy		IS NOT NULL
	  AND	a.URLSearchBy		!= ''
	GROUP BY	a.URLSearchBy
GO
/****** Object:  View [app].[vwDimProduct]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [app].[vwDimProduct] as
select *, app.fnURL_Strip(P.[Name]) as EncodedName
from dbo.DimProduct P
GO
/****** Object:  Table [dbo].[DealAsset_to_Company]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealAsset_to_Company](
	[DealCompanyKey] [int] NULL,
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyDealRole_Code] [int] NULL,
	[CompanyRole] [varchar](255) NULL,
	[Responsibilities] [varchar](4000) NULL,
	[CompanyRank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NULL,
	[ModifiedProcessID] [int] NULL,
	[MarketValue] [decimal](38, 2) NULL,
	[MarketValueDate] [datetime2](3) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactMarketCap]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactMarketCap](
	[StockTickerKey] [int] NOT NULL,
	[ValueDateKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[ValueDate] [date] NOT NULL,
	[MarketCap] [money] NULL,
	[MarketCap_USD] [money] NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[ModifiedDate] [datetimeoffset](7) NOT NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[SharesOutstandingCurrent] [float] NULL,
	[MarketCapCurrent] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCompanyLatestMarketCap]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCompanyLatestMarketCap]
AS

SELECT * 
FROM 
(
	SELECT
		dbo.DimStockTicker.CompanyKey,
		dbo.FactMarketCap.StockTickerKey,
		dbo.FactMarketCap.MarketCap,
		dbo.FactMarketCap.MarketCap_USD,
		dbo.FactMarketCap.CurrencyKey,
		dbo.FactMarketCap.ValueDate,
		dbo.DimStockTicker.IsPrimary,
		dbo.DimStockTicker.Exchange,
		dbo.DimStockTicker.Ticker,
		ROW_NUMBER() OVER(PARTITION BY dbo.DimStockTicker.CompanyKey ORDER BY dbo.FactMarketCap.ValueDate DESC) rn

	FROM
		dbo.FactMarketCap
			INNER JOIN
				dbo.DimStockTicker
					ON dbo.FactMarketCap.StockTickerKey = dbo.DimStockTicker.StockTickerKey
	WHERE
		dbo.FactMarketCap.MarketCap IS NOT NULL
		AND dbo.DimStockTicker.CompanyKey IS NOT NULL
		AND dbo.DimStockTicker.IsPrimary = N'Yes'
	) T
WHERE rn=1
GO
/****** Object:  View [dbo].[vwCompanyOrgTypeMCAP]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwCompanyOrgTypeMCAP] AS

SELECT
	C.CompanyKey,
	C.CompanyName,
	C.Country,
	C.CompanyCategory,
	CASE
		WHEN C.CompanyType not in ('Small-Cap Biopharma (<$1 billion)','Mid-Cap Biopharma ($1-$50 billion)','Large-Cap Biopharma (>=$50 billion)')
			OR CLMC.MarketCap_USD is null
			OR CLMC.MarketCap_USD = 0
		THEN C.CompanyType
		ELSE CASE
			WHEN CLMC.MarketCap_USD < 1000000000 THEN 'Small-Cap Biopharma (<$1 billion)'
			WHEN CLMC.MarketCap_USD >= 1000000000 AND CLMC.MarketCap_USD < 50000000000 THEN 'Mid-Cap Biopharma ($1-$50 billion)'
			WHEN CLMC.MarketCap_USD >= 50000000000 THEN 'Large-Cap Biopharma (>=$50 billion)'
		END
	END AS CompanyType
FROM
	DimCompany C
		LEFT OUTER JOIN
			vwCompanyLatestMarketCap CLMC
				ON C.CompanyKey = clmc.CompanyKey
GO
/****** Object:  View [dbo].[vwDealAssetCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   VIEW [dbo].[vwDealAssetCompany]
AS

SELECT   
	dbo.DealAsset_to_Company.DealCompanyKey,
	dbo.DealAsset_to_Company.DealKey,
	dbo.DealAsset_to_Company.DealAssetKey,
	dbo.DealAsset_to_Company.CompanyKey,
	C.CompanyName,
	CNH.CurrentNameCompanyKey,
	CNH.CurrentNameCompanyName, 
	dbo.DealAsset_to_Company.CompanyRole, 
	C.CompanyType, 
    C.CompanyCategory, 
	C.Country,
	resp.Responsibilities,
	--dbo.DealAsset_to_Company.CompanyRank,
	--coalesce(/*dbo.DealAsset_to_Company.CompanyRank*/null, RANK ( ) OVER (PARTITION BY DealAsset_to_Company.DealKey ORDER BY DealCompanyKey ) ) as CompanyRank,
	coalesce(/*dbo.DealAsset_to_Company.CompanyRank*/null, RANK ( ) OVER (PARTITION BY DealAsset_to_Company.DealAssetKey ORDER BY DealCompanyKey ) ) as CompanyRank,
	dbo.DealAsset_to_Company.MarketValueDate AS MarketCapDate,
	dbo.DealAsset_to_Company.DatePrior,
	dbo.DealAsset_to_Company.StockPricePrior,
	dbo.DealAsset_to_Company.StockPricePriorUSD,
	dbo.DealAsset_to_Company.SwapRate,
	dbo.DealAsset_to_Company.SharesIssued,
	dbo.DealAsset_to_Company.SharesOutstanding,
	dbo.DealAsset_to_Company.MarketValue AS MarketCap,
	dbo.DealAsset_to_Company.ExchangeRate,
	dbo.DealAsset_to_Company.StockValue,
	dbo.DealAsset_to_Company.CashValue,
	dbo.DealAsset_to_Company.CompanyHQCountryID,
	dbo.DealAsset_to_Company.CurrencyID,
	dbo.DealAsset_to_Company.CompanyTypeID,
	dbo.DealAsset_to_Company.OwnershipID,
	dbo.DealAsset_to_Company.ExchangeID1,
	dbo.DealAsset_to_Company.ExchangeID2,
	dbo.DealAsset_to_Company.Ticker1,
	dbo.DealAsset_to_Company.Ticker2,
	dbo.DealAsset_to_Company.SharesOutstandingDate,
	dbo.DealAsset_to_Company.PctOwnership
 
	--RANK ( ) OVER (PARTITION BY DealAsset_to_Company.DealKey ORDER BY DealCompanyKey )  AS CompanyRank
FROM            
	dbo.DealAsset_to_Company 
		INNER JOIN
			dbo.vwCompanyOrgTypeMCAP C
				ON dbo.DealAsset_to_Company.CompanyKey = C.CompanyKey
		LEFT OUTER JOIN dbo.vwCompanyNameHistory AS CNH 
				ON DealAsset_to_Company.companykey = CNH.companykey
		join (
SELECT
	dbo.DealAsset_to_Company.DealKey,
	dbo.DealAsset_to_Company.CompanyKey,
	STRING_AGG(dbo.DealAsset_to_Company.Responsibilities, CHAR(13) + CHAR(10)) AS Responsibilities
FROM DealAsset_to_Company
WHERE dbo.DealAsset_to_Company.CompanyKey > 0 AND dbo.DealAsset_to_Company.DealAssetKey > 0 AND dbo.DealAsset_to_Company.DealKey > 0 
 -- added on 03_17_2023 to exclude -1 and prevent STRING_AGG aggregation result exceeded the limit of 8000 bytes
GROUP BY	dbo.DealAsset_to_Company.DealKey,
			dbo.DealAsset_to_Company.CompanyKey
		)resp 
			on resp.DealKey = dbo.DealAsset_to_Company.DealKey and resp.CompanyKey = dbo.DealAsset_to_Company.CompanyKey


GO
/****** Object:  View [dbo].[vwDealAssetCompanies]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [dbo].[vwDealAssetCompanies]
AS  


SELECT 
C1.DealKey, 
C1.DealAssetKey,
C1.CompanyKey AS CompanyKey1,
C1.CompanyName AS CompanyName1, 
C1.CurrentNameCompanyKey AS CurrentNameCompanyKey1,
C1.CurrentNameCompanyName AS CurrentNameCompanyName1, 
C1.CompanyRole AS CompanyRole1,
C1.CompanyType AS CompanyType1, 
C1.CompanyCategory AS CompanyCategory1, 
C1.Country AS CompanyCountry1, 
C1.MarketCap AS MarketCap1,
C1.MarketCapDate AS MarketValueDate1,
C1.Responsibilities AS CompanyResponsibilities1,

C2.CompanyKey AS CompanyKey2,
C2.CompanyName AS CompanyName2, 
C2.CurrentNameCompanyKey AS CurrentNameCompanyKey2,
C2.CurrentNameCompanyName AS CurrentNameCompanyName2, 
C2.CompanyRole AS CompanyRole2,
C2.CompanyType AS CompanyType2, 
C2.CompanyCategory AS CompanyCategory2, 
C2.Country AS CompanyCountry2, 
C2.MarketCap AS MarketCap2,
C2.MarketCapDate AS MarketValueDate2,
C2.Responsibilities AS CompanyResponsibilities2,

C3.CompanyKey AS CompanyKey3,
C3.CompanyName AS CompanyName3, 
C3.CurrentNameCompanyKey AS CurrentNameCompanyKey3,
C3.CurrentNameCompanyName AS CurrentNameCompanyName3, 
C3.CompanyRole AS CompanyRole3,
C3.CompanyType AS CompanyType3, 
C3.CompanyCategory AS CompanyCategory3, 
C3.Country AS CompanyCountry3, 
C3.MarketCap AS MarketCap3,
C3.MarketCapDate AS MarketValueDate3,
C3.Responsibilities AS CompanyResponsibilities3,

C4.CompanyKey AS CompanyKey4,
C4.CompanyName AS CompanyName4, 
C4.CurrentNameCompanyKey AS CurrentNameCompanyKey4,
C4.CurrentNameCompanyName AS CurrentNameCompanyName4, 
C4.CompanyRole AS CompanyRole4,
C4.CompanyType AS CompanyType4, 
C4.CompanyCategory AS CompanyCategory4, 
C4.Country AS CompanyCountry4, 
C4.MarketCap AS MarketCap4,
C4.MarketCapDate AS MarketValueDate4,
C4.Responsibilities AS CompanyResponsibilities4

FROM            
    (SELECT * FROM 
    dbo.vwDealAssetCompany
    WHERE CompanyRank = 1) AS C1 
        LEFT OUTER JOIN
            (SELECT * FROM 
            dbo.vwDealAssetCompany
            WHERE CompanyRank = 2) AS C2
                ON C1.DealAssetKey = C2.DealAssetKey
        LEFT OUTER JOIN
            (SELECT * FROM 
            dbo.vwDealAssetCompany
            WHERE CompanyRank = 3) AS C3
                ON C1.DealAssetKey = C3.DealAssetKey
        LEFT OUTER JOIN
            (SELECT * FROM 
            dbo.vwDealAssetCompany
            WHERE CompanyRank = 4) AS C4
                ON C1.DealAssetKey = C4.DealAssetKey
				WHERE C1.DealKey > 0 AND C1.DealAssetKey > 0
				 -- added on 03_17_2023 to exclude -1 and prevent STRING_AGG aggregation result exceeded the limit of 8000 bytes
GO
/****** Object:  View [app].[vwDimStandardIndication]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwDimStandardIndication] as

SELECT 
       [StandardIndicationKey]
      ,[StandardIndicationName]
	  ,app.fnURL_Strip([StandardIndicationName]) AS [EncodedStandardIndicationName]
      ,dc.[DiseaseCategoryKey]
	  ,[DiseaseCategory]
FROM dbo.DimStandardIndication si INNER JOIN dbo.DimDiseaseCategory dc ON si.[DiseaseCategory] = dc.[DiseaseCategoryName];

GO
/****** Object:  Table [dbo].[Deal_to_PartnershipScope]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_PartnershipScope](
	[DealPartnershipScopeKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[PartnershipScopeKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartnershipScope]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartnershipScope](
	[PartnershipScopeKey] [int] NOT NULL,
	[PartnershipScopeName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwDealToPartnershipScopes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwDealToPartnershipScopes]
AS

SELECT        
	dbo.Deal_to_PartnershipScope.DealPartnershipScopeKey, 
	dbo.Deal_to_PartnershipScope.DealAssetKey, 
	dbo.DimPartnershipScope.PartnershipScopeName PartnershipScope
FROM            
	dbo.Deal_to_PartnershipScope 
		INNER JOIN
			dbo.DimPartnershipScope 
				ON dbo.Deal_to_PartnershipScope.PartnershipScopeKey = dbo.DimPartnershipScope.PartnershipScopeKey

GO
/****** Object:  View [app].[vwLinkifySynonym]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwLinkifySynonym] as
with tmp(MolecularTargetKey, EncodedMolecularTargetName, TermName, [Synonyms]) as 
(
	SELECT MolecularTargetKey, EncodedMolecularTargetName, CAST(LEFT([Synonyms], CHARINDEX('|',[Synonyms]+'|')-1) AS nvarchar(250)), STUFF([Synonyms], 1, CHARINDEX('|',[Synonyms]+'|'), '')
	FROM [app].vwDimMolecularTarget
	UNION ALL
	SELECT MolecularTargetKey, EncodedMolecularTargetName, CAST(LEFT([Synonyms], CHARINDEX('|',[Synonyms]+'|')-1) AS nvarchar(250)), STUFF([Synonyms], 1, CHARINDEX('|',[Synonyms]+'|'), '')
	FROM tmp
	WHERE [Synonyms] > ''
)
SELECT MolecularTargetKey AS Id, TermName, EncodedMolecularTargetName AS EncodedTermName, 'target' AS TermType
FROM tmp
WHERE [Synonyms] IS NOT NULL

GO
/****** Object:  View [app].[vwGeographyActive]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwGeographyActive] as
SELECT g.[GeographyKey], g.Region, g.SubRegion, g.Country, g.[State],	g.[City], g.[BioTechHub]
FROM dbo.DimGeography AS g 
WHERE g.Country in (SELECT DISTINCT c.Country FROM dbo.DimCompany AS c WHERE c.Country IS NOT NULL)
GO
/****** Object:  View [app].[vwRegion]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwRegion] AS
SELECT DISTINCT g.Region Id, g.Region Name, Null Parent, 'region' Dimension
FROM [app].[vwGeographyActive] g
WHERE g.Region IS NOT NULL
GO
/****** Object:  View [app].[vwSubRegion]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwSubRegion] AS
SELECT DISTINCT g.SubRegion Id, g.SubRegion Name, r.Id Parent, 'subregion' Dimension
FROM [app].[vwGeographyActive] g INNER JOIN app.vwRegion r ON g.Region = r.Id 
WHERE g.SubRegion IS NOT NULL
GO
/****** Object:  View [app].[vwCountry]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwCountry] AS
SELECT DISTINCT g.Country Id, g.Country Name, r.Id Parent, 'country' Dimension
FROM [app].[vwGeographyActive] g INNER JOIN app.vwSubRegion r ON g.SubRegion = r.Id 
WHERE g.Country IS NOT NULL
GO
/****** Object:  View [app].[vwState]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwState] AS
SELECT DISTINCT g.[State] Id, g.[State] Name, r.Id Parent, 'state' Dimension
FROM [app].[vwGeographyActive] g INNER JOIN app.vwCountry r ON g.Country = r.Id 
WHERE g.Country = 'United States of America' AND g.[State] IS NOT NULL
GO
/****** Object:  View [app].[vwMolecularTargetAndFamily]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [app].[vwMolecularTargetAndFamily]
CREATE VIEW [app].[vwMolecularTargetAndFamily]
AS
SELECT
	CONVERT(int, mt.MolecularTargetKey) AS MolecularTargetKey,
	mt.[LegacyTargetName] AS CompleteName,
	app.fnURL_Strip(mt.[LegacyTargetName]) AS EncodedName,
	[LegacyTargetName],
	'moleculartarget' dimension,
	[Synonyms],
	[SearchBy]
FROM dbo.DimMolecularTarget AS mt
UNION ALL
SELECT DISTINCT
	CONVERT(int, -ROW_NUMBER() OVER (ORDER BY mt.[MolecularTargetFamily_Name] ASC)),
	mt.[MolecularTargetFamily_Name] AS CompleteName,
	app.fnURL_Strip(mt.[MolecularTargetFamily_Name]) AS EncodedName,
	mt.[MolecularTargetFamily_Name] + ' (Family)',
	'moleculartargetfamily' dimension,
	'',
	[SearchBy]
FROM (SELECT DISTINCT
	mt.[MolecularTargetFamily_Name],
	'' as [SearchBy]
	--mt.[SearchBy]
FROM dbo.DimMolecularTarget AS mt) mt
WHERE mt.[MolecularTargetFamily_Name] IS NOT NULL

GO
/****** Object:  View [app].[vwGeographyHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwGeographyHierarchy] AS
SELECT	Id, Name, CONVERT(NVARCHAR(256), Parent) Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 1 [Level], convert(bit, 'True') Selectable
FROM	app.vwRegion  
UNION ALL
SELECT	Id, Name, Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 2 [Level], convert(bit, 'True') Selectable
FROM	app.vwSubRegion  
UNION ALL
SELECT	Id, Name, Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 3 [Level], convert(bit, 'True') Selectable
FROM	app.vwCountry
UNION ALL
SELECT	Id, Name, Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 4 [Level], convert(bit, 'True') Selectable
FROM	app.vwState
GO
/****** Object:  View [app].[vwConcatPartnersForProductEncoded_BU_01_16_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [app].[vwConcatPartnersForProductEncoded_BU_01_16_2023] as

select l.productKey, l.ProductDetailKey, STRING_AGG (app.fnURL_Strip(c.CompanyName),CHAR(13)+CHAR(10)) as CompaniesInvolved
from dbo.FactLicense l inner join dbo.DimCompany c on l.InlicenseCompanyKey = c.companyKey

group by l.productKey, l.ProductDetailKey
GO
/****** Object:  View [dbo].[vwConcatPartnersForProduct_BU_01_16_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwConcatPartnersForProduct_BU_01_16_2023] as

select l.productKey, l.ProductDetailKey, STRING_AGG (c.CompanyName,CHAR(13)+CHAR(10)) as CompaniesInvolved
from dbo.FactLicense l inner join dbo.DimCompany c on l.InlicenseCompanyKey = c.companyKey

group by l.productKey, l.ProductDetailKey
GO
/****** Object:  View [dbo].[vwCompanyHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCompanyHistory]

AS
SELECT
	c.CompanyKey,
	c.CompanyID,
	c.CompanyName,
	c.EventType,
	c.IsCurrent,
	c.IsActive,
	c.EffectiveEndDate,
	ROW_NUMBER() OVER (PARTITION BY CompanyID ORDER BY c.EffectiveEndDate) AS Number,
	c.ParentCompanyKey
FROM dbo.DimCompany AS C
GO
/****** Object:  View [dbo].[vwMergersAndAcquisitions]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwMergersAndAcquisitions]
AS
SELECT
	t1.CompanyKey AS CompanyKey,
	t1.CompanyID,
	t1.CompanyName AS CompanyName,
	t1.EffectiveEndDate AS EventDate,
	t2.CompanyKey AS CompanyKey2,
	t2.CompanyName AS CompanyName2,
	t2.EventType,
	ResultingCompanyKey =
							CASE
							WHEN t2.EventType = 'Merger' OR
								t2.EventType = 'Acquisition' THEN p.CompanyKey
							WHEN t2.EventType = 'Name Change' THEN t2.CompanyKey
							ELSE -1
							END,
	ResultingCompanyID =
						CASE
							WHEN t2.EventType = 'Merger' OR
							t2.EventType = 'Acquisition' THEN p.CompanyID
							WHEN t2.EventType = 'Name Change' THEN t2.CompanyID
							ELSE -1
						END,
	ResultingCompanyName =
							CASE
							WHEN t2.EventType = 'Merger' OR
								t2.EventType = 'Acquisition' THEN p.CompanyName
							WHEN t2.EventType = 'Name Change' THEN t2.CompanyName
							ELSE NULL
							END,
	IsCheckedByDefault = 
							CASE
							WHEN t2.EventType = 'Name Change' THEN CAST(1 AS BIT)
							ELSE CAST(0 AS BIT)
							END
FROM vwCompanyHistory t1
JOIN vwCompanyHistory t2
	ON t1.CompanyID = t2.CompanyID
	AND t1.Number + 1 = t2.Number
LEFT JOIN DimCompany p
	ON p.CompanyKey = t2.ParentCompanyKey
WHERE t2.EventType IN ('Merger', 'Acquisition', 'Name Change')
GO
/****** Object:  View [dbo].[vwDealProductNames_BU_01_01_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   VIEW [dbo].[vwDealProductNames_BU_01_01_2023]
AS

SELECT DealAssetKey,STRING_AGG(ProductNames,'; ') AS ProductNames, STRING_AGG((CAST(ProductNames AS NVARCHAR(MAX))) + '; ' + app.fnURL_Strip(ProductNames), CHAR(13)+CHAR(10)) AS EncodedProductNames
FROM
(
SELECT DISTINCT
	dbo.Deal_To_Product.DealAssetKey, dbo.DimProduct.Name as ProductNames
	--STRING_AGG(dbo.DimProduct.ProductNames,'; ') AS ProductNames
FROM            
	dbo.Deal_To_Product 
		INNER JOIN
			dbo.DimProduct 
				ON dbo.Deal_To_Product.ProductKey = dbo.DimProduct.ProductKey
) t
GROUP BY DealAssetKey
GO
/****** Object:  View [dbo].[vwDealMolecularTargets_BU_01_01_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealMolecularTargets_BU_01_01_2023]
AS


SELECT        
	dbo.Deal_to_MolecularTarget.DealAssetKey, 
	STRING_AGG( dbo.DimMolecularTarget.LegacyTargetName,'; ') AS DealMolecularTargets,
	STRING_AGG( dbo.DimMolecularTarget.LegacyTargetName + '; ' + app.fnURL_Strip(dbo.DimMolecularTarget.LegacyTargetName), CHAR(13)+CHAR(10)) AS EncodedDealMolecularTargets
FROM            
	dbo.Deal_to_MolecularTarget 
		INNER JOIN
			dbo.DimMolecularTarget 
				ON dbo.Deal_to_MolecularTarget.MolecularTargetKey = dbo.DimMolecularTarget.MolecularTargetKey
GROUP BY dbo.Deal_to_MolecularTarget.DealAssetKey
GO
/****** Object:  Table [dbo].[Deal_to_Geography]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_Geography](
	[DealGeographyKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[GeographyKey] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealLicensedTerritories]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealLicensedTerritories]
AS

SELECT      dtg.DealAssetKey, STRING_AGG( COALESCE( g.Country, g.SubRegion, g.Region) ,'; ') AS LicensedTerritories
FROM            
	dbo.Deal_to_Geography AS dtg 
		INNER JOIN
			dbo.DimGeography AS g 
				ON dtg.GeographyKey = g.GeographyKey
GROUP BY  dtg.DealAssetKey
GO
/****** Object:  View [dbo].[vwLeadPipeline]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwLeadPipeline] 
AS

SELECT DISTINCT
	P.PartnerCompanyKey,
	--P.PartnerCompanyName,
	P.CompanyKey,
	--P.CompanyName,
	P.ProductKey,
	--P.Name,
	P.ProductDetailKey,
	--P.DiseaseCategory,
	--P.StandardIndicationName,
	P.ClinicalPhaseKey--,
	--P.ClinicalPhase
FROM vwPipeline_Ext P
	JOIN
	(
		SELECT PartnerCompanyKey, MAX(ClinicalPhaseKey) as 'MaxClinPhaseKey'
		FROM vwPipeline_Ext
		WHERE ClinicalPhase <> 'Marketed'
		GROUP BY PartnerCompanyKey
	) P2
	ON P.PartnerCompanyKey = P2.PartnerCompanyKey AND P.ClinicalPhaseKey = P2.MaxClinPhaseKey

UNION ALL

SELECT DISTINCT
	P.PartnerCompanyKey,
	--P.PartnerCompanyName,
	P.CompanyKey,
	--P.CompanyName,
	P.ProductKey,
	--P.Name,
	P.ProductDetailKey,
	--P.DiseaseCategory,
	--P.StandardIndicationName,
	P.ClinicalPhaseKey--,
	--P.ClinicalPhase
FROM vwPipeline_Ext P
	JOIN
	(
		SELECT PartnerCompanyKey, MAX(ClinicalPhaseKey) as 'MaxClinPhaseKey'
		FROM vwPipeline_Ext
		WHERE ClinicalPhase = 'Marketed'
		GROUP BY PartnerCompanyKey
		HAVING COUNT(ProductKey) = 1
	) P2
	ON P.PartnerCompanyKey = P2.PartnerCompanyKey AND P.ClinicalPhaseKey = P2.MaxClinPhaseKey

GO
/****** Object:  Table [dbo].[FactDealAssets]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactDealAssets](
	[DealAssetKey] [bigint] NOT NULL,
	[DealKey] [int] NOT NULL,
	[DealID] [int] NULL,
	[AssetID] [int] NULL,
	[AssetTypeKey] [int] NOT NULL,
	[DealTypeKey] [int] NOT NULL,
	[MaxProductStatusKey] [int] NOT NULL,
	[RareOrphanIntent_Key] [int] NULL,
	[RareOrphanIntent_Name] [nvarchar](250) NULL,
	[MAAttitude_Key] [int] NULL,
	[MAAttitude_Name] [nvarchar](250) NULL,
	[DrugDevelopmentScope_Code] [nvarchar](250) NULL,
	[DrugDevelopmentScope_Name] [nvarchar](250) NULL,
	[DrugDevelopmentScopeKey] [int] NOT NULL,
	[MarketScaleKey] [int] NOT NULL,
	[TrialStatusKey] [int] NOT NULL,
	[AssetValue] [money] NULL,
	[OptionExclusivityPayment] [money] NULL,
	[OptionExercisePayment] [money] NULL,
	[UpfrontCash] [money] NULL,
	[UpfrontEquity] [money] NULL,
	[RDFunding] [money] NULL,
	[TotalMilestonePayements] [money] NULL,
	[RDRegulatoryMilestonePayments] [money] NULL,
	[SalesBasedMilestonePayments] [money] NULL,
	[NetSalesRoyalty] [money] NULL,
	[ProfitSplit] [money] NULL,
	[ManufacturingSupplyTransPrice] [money] NULL,
	[UnitBasedReimbursement] [money] NULL,
	[LoansAndOther] [money] NULL,
	[FinalSharePricePaid] [money] NULL,
	[SharePricePremium1Day] [money] NULL,
	[SharePricePremium5Day] [money] NULL,
	[SharePricePremium30Day] [money] NULL,
	[MinAnnouncedValue] [money] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[HasUndisclosedTerritories] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_to_Company]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_Company](
	[DealCompanyKey] [bigint] NOT NULL,
	[DealKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyRole] [varchar](255) NULL,
	[Responsibilities] [varchar](4000) NULL,
	[CompanyRank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[MarketValue] [decimal](38, 2) NULL,
	[MarketValueDate] [datetime2](7) NULL,
	[DatePrior] [datetime2](7) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](7) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwCompanyRoleToProduct]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [app].[vwCompanyRoleToProduct]
as
select distinct dc.CompanyKey, dc.CompanyRole, dc.DealKey, da.DealAssetkey, dp.ProductKey 
from Deal_to_Product dp
join FactDealAssets da on da.DealAssetKey = dp.DealAssetKey
join Deal_to_company dc on dc.DealKey = da.DealKey
GO
/****** Object:  Table [dbo].[Deal_to_CommercialPaymentStructure]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_CommercialPaymentStructure](
	[Deal_to_CommercialPaymentStructureKey] [bigint] NOT NULL,
	[DealAssetKey] [int] NULL,
	[CommercialPaymentStructureKey] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCommercialPmntStructure]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCommercialPmntStructure](
	[CommercialPmntStructureKey] [int] NULL,
	[CommercialPmntStructure] [varchar](255) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealCommercialPmntStructures_BU_01_01_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDealCommercialPmntStructures_BU_01_01_2023]
AS


SELECT        
	--dbo.Deal_to_CommercialPaymentStructure.DealKey, 
	dbo.Deal_to_CommercialPaymentStructure.DealAssetKey, 
	STRING_AGG( dbo.DimCommercialPmntStructure.CommercialPmntStructure,'; ') AS CommercialPmntStructures
FROM            
	dbo.Deal_to_CommercialPaymentStructure 
		INNER JOIN
			dbo.DimCommercialPmntStructure 
			ON dbo.Deal_to_CommercialPaymentStructure.CommercialPaymentStructureKey = dbo.DimCommercialPmntStructure.CommercialPmntStructureKey
GROUP BY dbo.Deal_to_CommercialPaymentStructure.DealAssetKey
GO
/****** Object:  View [app].[vwDealAssetCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [app].[vwDealAssetCompany]
as
select 
dc.DealCompanyKey, 
dc.DealKey, 
dc.CompanyKey, 
dc.CompanyRole, 
da.DealAssetKey,
	dbo.DimCompany.CompanyName, 
	dbo.DimCompany.CompanyType, 
    dbo.DimCompany.CompanyCategory, 
	dbo.DimCompany.Country,
	NULL AS MarketCap,
	dc.Responsibilities,
	dc.CompanyRank

from dbo.Deal_to_Company dc
join dbo.FactDealAssets da on da.DealKey = dc.DealKey
INNER JOIN
			dbo.DimCompany 
				ON dc.CompanyKey = dbo.DimCompany.CompanyKey
GO
/****** Object:  View [dbo].[vwDealDiseaseCategories_BU_01_01_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDealDiseaseCategories_BU_01_01_2023]
AS



SELECT DealAssetKey,
STRING_AGG( DiseaseCategory + ': ' + StandardIndications, '; ') AS DiseaseCategories
FROM
(
SELECT        
	dbo.Deal_to_StandardIndication.DealAssetKey, 
	dbo.DimStandardIndication.DiseaseCategory, 
	STRING_AGG( dbo.DimStandardIndication.StandardIndicationName, ', ') AS StandardIndications--,
	
    --dbo.DimStandardIndication.DiseaseCategoryID
FROM            
	dbo.Deal_to_StandardIndication 
		INNER JOIN
			dbo.DimStandardIndication 
				ON dbo.Deal_to_StandardIndication.StandardIndicationKey = dbo.DimStandardIndication.StandardIndicationKey
GROUP BY dbo.Deal_to_StandardIndication.DealAssetKey,dbo.DimStandardIndication.DiseaseCategory
) t
GROUP BY DealAssetKey
GO
/****** Object:  View [dbo].[vwDealMechanismOfAction_BU_01_01_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDealMechanismOfAction_BU_01_01_2023]
AS

SELECT	d2ma.DealAssetKey, 
		STRING_AGG(ma.MechanismOfActionName,'; ') WITHIN GROUP (ORDER BY d2ma.[Rank]  ASC) AS MOAs

FROM	dbo.Deal_to_MechanismOfAction AS d2ma
		INNER JOIN dbo.DimMechanismOfAction AS ma
			ON ma.MechanismOfActionKey = d2ma.MechanismOfActionKey
GROUP BY d2ma.DealAssetKey;
GO
/****** Object:  View [dbo].[vwPipeline_Ext_without_Discontinued_filter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwPipeline_Ext_without_Discontinued_filter]
AS 
WITH PMT
AS (
SELECT 
		ProductKey, 
		PMT.MolecularTargetKey, 
		CAST(MT.LegacyTargetName AS NVARCHAR(255)) AS MolecularTargetName,
		CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
		--MT.MolecularTargetFamily_Name,
		ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
	FROM 
		dbo.Product_to_MolecularTarget PMT
			INNER JOIN
					dbo.DimMolecularTarget MT     
					ON MT.MolecularTargetKey = PMT.MolecularTargetKey
					)

SELECT 
	CO.CompanyName,
	app.fnURL_Strip(CO.CompanyName) as EncodedCompanyName,
	CO.CompanyKey,
	--CO.IsCurrent AS Expr1, 
	P.ProductKey,
	p.ProductId,
	P.[Name],
	app.fnURL_Strip(P.[Name]) as EncodedName,
	P.Description,
	DS.ClinicalPhaseKey,
	DS.Category,
	DS.SubCategory,
	DS.ClinicalPhase,
	PMT1.MolecularTargetName,
	app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
	PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
	------ CP.CompanyName AS Partners,
	------CP.IsCurrent, 
	TM.TherapeuticModalityID,
	--TM.TherapeuticModalityName,
	CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
	CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
	CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
	CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
	Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
	ClP.ClinicalPhase AS [Latest Stage of Development],
	pd.ProductDetailKey,
	pd.DiseaseCategory,
	app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
	pd.StandardIndicationName,
	app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
	pd.ProductDetail,	 
	CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,	 
	app.fnURL_Strip(pmt1.MolecularTargetName) AS EncodedTarget1,
	CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
	app.fnURL_Strip(pmt2.MolecularTargetName) AS EncodedTarget2,
	l.LicenseKey,	   
	COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
	COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
	InLicenseCo.CompanyName AS InLicensedCompany,
	mst.MilestoneKey,
	mst.MilestoneText,
	mst.StartDate AS [Start Date of Milestone],
	mst.EndDate AS [End Date of Milestone],
	mst.MilestoneTypeKey AS MilestoneType,
	CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneTypeStr,
	COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
	COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,	 
	moa.MechanismOfActionKey,
	CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
	COGeneralInfo.GeographyKey,
	COGeneralInfo.Country,
	COGeneralInfo.[Lead Product Status],
	COGeneralInfo.[Date of Lead Product Status],
	COGeneralInfo.[Business Category],
	COGeneralInfo.Exchange,
	COGeneralInfo.[Exchange 2],
	COGeneralInfo.State,
	COGeneralInfo.Region,
	COGeneralInfo.SubRegion,
	COGeneralInfo.YearFounded,
	COGeneralInfo.[Type of Last Financing],
	COGeneralInfo.[Date of Last Financing],
	COGeneralInfo.[Total Amount Raised],
	COGeneralInfo.[Market Cap],
	COGeneralInfo.[Date of Market Cap],
	COGeneralInfo.[MarketCapTier],
	COGeneralInfo.[Date of IPO],
	COGeneralInfo.[Number of Products (Originated)],
	COGeneralInfo.CompanyType,
	COGeneralInfo.[4-Year CAGR of EPS],
	COGeneralInfo.CompanyURL,
	COGeneralInfo.Ticker,
	COGeneralInfo.[Ticker 2],
	COGeneralInfo.OwnershipStatus,
	COGeneralInfo.IsCurrent,
	COGeneralInfo.IsFinancier,
	rd.RegulatoryDesignation,
	rd.RegulatoryRegion,
	pl.PipelineKey,
	PL.Code,
	pl.EventDateKey,
	pl.EventDate,
	pl.EventStatus,
	pl.Notes,
	pl.PhaseOfDevelopmentKey,
	vwPP.CompaniesInvolved AS PartnerCompanies,
	vwPPEncoded.CompaniesInvolved AS EncodedPartnerCompanies,
	vwPT.Concat_Target,
	vwPT.[Concat_LegacyTargetName],
	LI.PartnerCompanyName, 
	LI.PartnerCompanyKey, 
	LI.Role,
	pc.IsCurrent as [PartnerCompanyIsCurrent]
	
 
FROM  
	dbo.FactPipeline AS PL
	    LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
		LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
				AND PMT1.Rn=1
		LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
				AND PMT1.Rn=2
				 LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
				ON P.ProductKey = PTM.ProductKey	
		LEFT JOIN
			[dbo].[vwTherapeuticModality] vtm 
				ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey		
        --LEFT OUTER JOIN
		INNER JOIN -- 03-21-2018 MI
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
		  mv.vwCompanyGeneralInfo AS COGeneralInfo
			ON Co.CompanyKey = COGeneralInfo.CompanyKey
		LEFT OUTER JOIN           
			DimClinicalPhase ClP
				ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
		LEFT OUTER JOIN 
			FactLicense l 
				ON l.ProductKey = pl.ProductKey 
				AND l.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN
			DimPartnershipTerms pt 
				ON pt.PartnershipTermsKey = l.PartnershipTermsKey
		LEFT OUTER JOIN
			(
				SELECT ProductKey, ProductDetailKey, MilestoneStatusKey, MilestoneKey, MilestoneText, EndDate, StartDate, m.MilestoneTypeKey
				FROM
					FactMilestone m
				WHERE
					(
						m.MilestoneStatusKey = 1
						AND m.EndDate >= GETDATE()
						)
						OR
						m.MilestoneKey is null
					
			) mst ON mst.ProductKey = pl.ProductKey AND mst.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN 
				DimMilestoneType DMT
				ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
		LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
		LEFT OUTER JOIN
				Product_to_MechanismOfAction pmoa
					ON pmoa.ProductKey = pl.ProductKey 
		LEFT OUTER JOIN
				dbo.DimMechanismOfAction AS moa
					ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey			 
	    LEFT OUTER JOIN
				DimCompany AS InLicenseCo
				ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
		LEFT OUTER JOIN
				FactRegulatoryDesignation AS RD 
				ON pd.ProductDetailKey = rd.ProductDetailKey
		LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
		-- added SJN 09-20-2017 per Lam & David
		LEFT OUTER JOIN 
			dbo.vwConcatPartnersForProduct AS vwPP
				ON PL.productkey = vwPP.ProductKey 
				AND PL.ProductDetailKey = vwPP.ProductDetailKey
		LEFT OUTER JOIN 
			[app].[vwConcatPartnersForProductEncoded] AS vwPPEncoded
				ON PL.productkey = vwPPEncoded.ProductKey AND PL.ProductDetailKey = vwPPEncoded.ProductDetailKey
		LEFT OUTER JOIN 
			dbo.vwConcatProductTarget AS vwPT
				ON PL.ProductKey = vwPT.ProductKey 
		LEFT OUTER JOIN 
				dbo.DimCompany AS PC 
					ON L.InLicenseCompanyKey = PC.CompanyKey 
		LEFT OUTER JOIN 
				vwProductLicense LI
					ON PL.ProductKey = LI.ProductKey 
					AND PL.ProductDetailKey = LI.ProductDetailKey
--WHERE
--	CO.IsActive = 'Yes'
--	AND P.IsDiscontinued = 'No'
--	AND pd.IsDiscontinued = 0


GO
/****** Object:  View [app].[vwDealToCommercialPmntStructures]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwDealToCommercialPmntStructures]
AS

SELECT        
	dbo.Deal_to_CommercialPaymentStructure.DealAssetKey, 
	dbo.DimCommercialPmntStructure.CommercialPmntStructure
FROM            
	dbo.Deal_to_CommercialPaymentStructure 
		INNER JOIN
			dbo.DimCommercialPmntStructure 
			ON dbo.Deal_to_CommercialPaymentStructure.CommercialPaymentStructureKey = dbo.DimCommercialPmntStructure.CommercialPmntStructureKey
GO
/****** Object:  View [dbo].[vwDealPartnershipScopes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vwDealPartnershipScopes]
AS

SELECT        
	dbo.Deal_to_PartnershipScope.DealAssetKey, 
	STRING_AGG(CAST(dbo.DimPartnershipScope.PartnershipScopeName AS VARCHAR(MAX)) ,'; ') AS PartnershipScopes
FROM            
	dbo.Deal_to_PartnershipScope 
		INNER JOIN
			dbo.DimPartnershipScope 
				ON dbo.Deal_to_PartnershipScope.PartnershipScopeKey = dbo.DimPartnershipScope.PartnershipScopeKey
GROUP BY DealAssetKey
GO
/****** Object:  View [app].[vwDealToMechanismOfAction]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealToMechanismOfAction]
AS

SELECT	d2ma.DealAssetKey, 
		ma.MechanismOfActionName as MechanismOfAction

FROM	dbo.Deal_to_MechanismOfAction AS d2ma
		INNER JOIN dbo.DimMechanismOfAction AS ma
			ON ma.MechanismOfActionKey = d2ma.MechanismOfActionKey
GO
/****** Object:  View [dbo].[vwDealTherapeuticModalities_BU_01_01_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDealTherapeuticModalities_BU_01_01_2023]
AS


SELECT        
	dbo.Deal_to_TherapeuticModality.DealAssetKey, 
	STRING_AGG(dbo.DimTherapeuticModality.TherapeuticModalityName,'; ') AS TherapeuticModalities
FROM            
	dbo.Deal_to_TherapeuticModality 
		INNER JOIN
			dbo.DimTherapeuticModality 
				ON dbo.Deal_to_TherapeuticModality.TherapeuticModalityKey = dbo.DimTherapeuticModality.TherapeuticModalityKey
GROUP BY DealAssetKey
GO
/****** Object:  View [app].[vwDealToMolecularTarget]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwDealToMolecularTarget]
AS

SELECT
	dbo.Deal_to_MolecularTarget.DealAssetKey,
	dbo.DimMolecularTarget.LegacyTargetName as MolecularTarget,
	dbo.DimMolecularTarget.MolecularTargetFamily_Name
FROM
	dbo.Deal_to_MolecularTarget 
		INNER JOIN
			dbo.DimMolecularTarget 
				ON dbo.Deal_to_MolecularTarget.MolecularTargetKey = dbo.DimMolecularTarget.MolecularTargetKey
GO
/****** Object:  View [dbo].[vwDealNumberOfAssets]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealNumberOfAssets]
AS
SELECT 
	DealKey,
	NumberOfAssets,
	CASE 
		WHEN NumberOfAssets>1 THEN 'Multiple'
		ELSE 'Single'
	END AS NumberOfAssetsName
FROM 
	(
	SELECT        DealKey, 
	COUNT(DealAssetKey) AS NumberOfAssets
	FROM            dbo.FactDealAssets
	GROUP BY DealKey
	) T

GO
/****** Object:  View [app].[vwDealToProductName]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwDealToProductName]
AS

SELECT DISTINCT
	dbo.Deal_To_Product.DealAssetKey, dbo.DimProduct.ProductKey,  dbo.DimProduct.[Name] as ProductName, dbo.DimProduct.[Description] as ProductDescription
FROM            
	dbo.Deal_To_Product 
		INNER JOIN
			dbo.DimProduct 
				ON dbo.Deal_To_Product.ProductKey = dbo.DimProduct.ProductKey
GO
/****** Object:  View [dbo].[vwDealNumberOfProducts]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealNumberOfProducts]
AS

SELECT 
	DealKey,
	NumberOfProducts,
	CASE 
		WHEN NumberOfProducts>1 THEN 'Multiple'
		WHEN NumberOfProducts=1 THEN 'Single'
		ELSE 'Unknown / Undisclosed'
	END AS NumberOfProductsName
FROM 
	(
	SELECT dbo.FactDealAssets.DealKey, COUNT(dbo.Deal_to_Product.ProductKey) AS NumberOfProducts
	FROM dbo.FactDealAssets LEFT OUTER JOIN
			dbo.Deal_to_Product 
				ON dbo.FactDealAssets.DealAssetKey = dbo.Deal_to_Product.DealAssetKey
	GROUP BY dbo.FactDealAssets.DealKey
	) T

GO
/****** Object:  View [dbo].[vwTechnologyPlatform]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwTechnologyPlatform]
AS 

	WITH TP 
	AS
	(
		SELECT  TherapeuticModalityKey ,
		TherapeuticModalityName ,
		ParentTherapeuticModalityKey ,
		ModalityLevel ,
		UseInDeals ,
		UseInClinical ,
		SortOrder
		FROM dbo.DimTherapeuticModality
		WHERE UseInDeals = 1 AND UseInClinical = 0
	)
	SELECT  TM1.TherapeuticModalityKey,
        TM1.TherapeuticModalityName AS [Technology Platform 1] ,
        NULL AS [Technology Platform 2] ,
        NULL AS [Technology Platform 3] ,
        TM1.UseInDeals AS UseInDeals1 ,
        NULL AS UseInDeals2 ,
        NULL AS UseInDeals3,
		TM1.UseInClinical AS UseInClinical1, 
		NULL AS UseInClinical2, 
		NULL AS UseInClinical3
	FROM
		TP AS TM1 
	WHERE 
		TM1.ModalityLevel = 1
	UNION

	SELECT  COALESCE(TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
			TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
			TM2.TherapeuticModalityName AS [Therapeutic Modality 2] ,
			NULL AS [Therapeutic Modality 3] ,
			TM1.UseInDeals AS UseInDeals1 ,
			TM2.UseInDeals AS UseInDeals2 ,
			NULL AS UseInDeals3,
			TM1.UseInClinical AS UseInClinical1, 
			TM2.UseInClinical AS UseInClinical2, 
			NULL AS UseInClinical3
	FROM
		TP AS TM2 
			RIGHT OUTER JOIN 
				TP AS TM1 
					ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey
					AND TM2.ModalityLevel = 2				
	WHERE 
		TM1.ModalityLevel = 1
	UNION

	SELECT  COALESCE(TM3.TherapeuticModalityKey ,TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
			TM1.TherapeuticModalityName AS [Technology Platform 1] ,
			TM2.TherapeuticModalityName AS [Technology Platform 2] ,
			TM3.TherapeuticModalityName AS [Technology Platform 3] ,
			TM1.UseInDeals AS UseInDeals1 ,
			TM2.UseInDeals AS UseInDeals2 ,
			TM3.UseInDeals AS UseInDeals3,
			TM1.UseInClinical AS UseInClinical1, 
			TM2.UseInClinical AS UseInClinical2, 
			TM3.UseInClinical AS UseInClinical3

	FROM    
		TP AS TM3
			RIGHT OUTER JOIN 
				TP AS TM2 
					ON TM3.ParentTherapeuticModalityKey = TM2.TherapeuticModalityKey					
			RIGHT OUTER JOIN 
				TP AS TM1 
					ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey				
	WHERE 
		TM1.ModalityLevel = 1

GO
/****** Object:  View [app].[vwDealToTechnologyPlatforms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwDealToTechnologyPlatforms]
AS

SELECT        
	DTM.DealAssetKey, 
	TP.TherapeuticModalityKey,
	TP.[Technology Platform 1] as TechnologyPlatformCategory, 
	TP.[Technology Platform 2] as TechnologyPlatformSubcategory, 
	TP.[Technology Platform 3] as TechnologyPlatformSubsubcategory
FROM 
	dbo.Deal_to_TherapeuticModality AS DTM 
		INNER JOIN
			dbo.vwTechnologyPlatform AS TP 
				ON DTM.TherapeuticModalityKey = TP.TherapeuticModalityKey
GO
/****** Object:  View [app].[vwDealToTherapeuticModality]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [app].[vwDealToTherapeuticModality]
AS

SELECT        
	dbo.Deal_to_TherapeuticModality.DealAssetKey, 
	tm.TherapeuticModalityKey,
	tm.[Therapeutic Modality 1] as 'TherapeuticModalityCategory',
	tm.[Therapeutic Modality 2] as 'TherapeuticModalitySubcategory',
	tm.[Therapeutic Modality 3] as 'TherapeuticModalitySubsubcategory',
	tm.[Therapeutic Modality 4] as 'TherapeuticModalitySubsubsubcategory'
FROM            
	dbo.Deal_to_TherapeuticModality 
		INNER JOIN
			[dbo].[vwTherapeuticModality] tm
				ON dbo.Deal_to_TherapeuticModality.TherapeuticModalityKey = tm.TherapeuticModalityKey
GO
/****** Object:  Table [app].[DimClinicalPhase]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimClinicalPhase](
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[Category_SortOrder] [int] NULL,
	[SubCategory] [nvarchar](250) NULL,
	[SubCategory_SortOrder] [int] NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[ClinicalPhase_SortOrder] [int] NULL,
	[Use_in_Phase_of_Development] [bit] NULL,
	[Use_in_Lead_Product_Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwPipeline_RENAMED]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwPipeline_RENAMED]
AS 
WITH PMT
AS (
SELECT 
		ProductKey, 
		PMT.MolecularTargetKey, 
		CAST(MT.MolecularTargetName AS NVARCHAR(255)) AS MolecularTargetName,
		CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
		--MT.MolecularTargetFamily_Name,
		ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
	FROM 
		dbo.Product_to_MolecularTarget PMT
			INNER JOIN
					dbo.DimMolecularTarget MT     
					ON MT.MolecularTargetKey = PMT.MolecularTargetKey
					)

SELECT 
	CO.CompanyName,
	CO.CompanyKey,
	--CO.IsCurrent AS Expr1, 
	P.ProductKey,
	P.[Name],
	app.fnURL_Strip(P.[Name]) as EncodedName,
	P.Description,
	DS.ClinicalPhaseKey,
	DS.Category,
	DS.SubCategory,
	DS.ClinicalPhase,
	PMT1.MolecularTargetName,
	app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
	PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
	------ CP.CompanyName AS Partners,
	------CP.IsCurrent, 
	TM.TherapeuticModalityID,
	TM.TherapeuticModalityKey,
	CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
	CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
	CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
	CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
	Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
	ClP.ClinicalPhase AS [Latest Stage of Development],
	pd.ProductDetailKey,
	pd.DiseaseCategory,
	app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
	pd.StandardIndicationName,
	app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
	pd.ProductDetail,	 
	CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,	 
	CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
	l.LicenseKey,	   
	COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
	COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
	InLicenseCo.CompanyName AS InLicensedCompany,
	mst.MilestoneKey,
	CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneType,
	mst.MilestoneText,
	mst.StartDate AS [Start Date of Milestone],
	mst.EndDate AS [End Date of Milestone],
	mst.MilestoneTypeKey AS MilestoneTypeKey,
	COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
	COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,	 
	moa.MechanismOfActionKey,
	CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
	COGeneralInfo.GeographyKey,
	COGeneralInfo.Country,
	COGeneralInfo.[Lead Product Status],
	COGeneralInfo.[Date of Lead Product Status],
	COGeneralInfo.[Business Category],
	COGeneralInfo.Exchange,
	COGeneralInfo.[Exchange 2],
	COGeneralInfo.State,
	COGeneralInfo.Region,
	COGeneralInfo.SubRegion,
	COGeneralInfo.YearFounded,
	COGeneralInfo.[Type of Last Financing],
	COGeneralInfo.[Date of Last Financing],
	COGeneralInfo.[Total Amount Raised],
	COGeneralInfo.[Market Cap],
	COGeneralInfo.[Date of Market Cap],
	COGeneralInfo.[Date of IPO],
	COGeneralInfo.[Number of Products (Originated)],
	COGeneralInfo.CompanyType,
	COGeneralInfo.[4-Year CAGR of EPS],
	COGeneralInfo.CompanyURL,
	COGeneralInfo.Ticker,
	COGeneralInfo.[Ticker 2],
	COGeneralInfo.OwnershipStatus,
	COGeneralInfo.IsCurrent,
	COGeneralInfo.IsFinancier,
	rd.RegulatoryDesignation,
	rd.RegulatoryRegion,
	pl.PipelineKey,
	PL.Code,
	pl.EventDateKey,
	pl.EventDate,
	pl.EventStatus,
	pl.Notes,
	pl.PhaseOfDevelopmentKey,
	vwPP.CompaniesInvolved AS PartnerCompanies,
	 vwPT.Concat_Target,
	LI.PartnerCompanyName, 
	LI.PartnerCompanyKey, 
	LI.Role,
	pc.IsCurrent as [PartnerCompanyIsCurrent]
 
FROM  
	dbo.FactPipeline AS PL
	    LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
		LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
				AND PMT1.Rn=1
		LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
				AND PMT2.Rn=2
				 LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
				ON P.ProductKey = PTM.ProductKey			
        LEFT JOIN --added by Oleksiy N-ko, Bug 5649: "Therapeutic Modality": Incorrect behavior in grids when items related to 3rd level are checked
			[dbo].[vwTherapeuticModality] vtm 
				ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey
		LEFT OUTER JOIN
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
		  mv.vwCompanyGeneralInfo AS COGeneralInfo
			ON Co.CompanyKey = COGeneralInfo.CompanyKey
		LEFT OUTER JOIN           
			DimClinicalPhase ClP
				ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
		LEFT OUTER JOIN 
			FactLicense l 
				ON l.ProductKey = pl.ProductKey 
				AND l.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN
			DimPartnershipTerms pt 
				ON pt.PartnershipTermsKey = l.PartnershipTermsKey
		LEFT OUTER JOIN
			FactMilestone mst 
				ON mst.ProductKey = pl.ProductKey 
				AND mst.Productdetailkey = pl.ProductDetailKey
				--***
				LEFT OUTER JOIN 
				DimMilestoneType DMT
				ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
		LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
		LEFT OUTER JOIN
				Product_to_MechanismOfAction pmoa
					ON pmoa.ProductKey = pl.ProductKey 
		LEFT OUTER JOIN
				dbo.DimMechanismOfAction AS moa
					ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey			 
	    LEFT OUTER JOIN
				DimCompany AS InLicenseCo
				ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
		LEFT OUTER JOIN
				FactRegulatoryDesignation AS RD 
				ON pd.ProductDetailKey = rd.ProductDetailKey
		LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
		-- added SJN 09-20-2017 per Lam & David
		LEFT OUTER JOIN 
			dbo.vwConcatPartnersForProduct AS vwPP
				ON PL.productkey = vwPP.ProductKey AND PL.ProductDetailKey = vwPP.ProductDetailKey
		LEFT OUTER JOIN 
			dbo.vwConcatProductTarget AS vwPT
				ON PL.productkey = vwPT.ProductKey
				
		LEFT OUTER JOIN 
				vwProductLicense LI
					ON PL.ProductKey = LI.ProductKey 
					AND PL.ProductDetailKey = LI.ProductDetailKey
		join DimCompany pc on pc.CompanyKey = LI.PartnerCompanyKey

		--where LI.Role = 'Licensee' or LI.Role is null
GO
/****** Object:  View [dbo].[vwDealTechnologyPlatforms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[vwDealTechnologyPlatforms]
AS

SELECT        
	DTM.DealAssetKey, 
	STRING_AGG (
		COALESCE(TP.[Technology Platform 3], TP.[Technology Platform 2], TP.[Technology Platform 1]),', ')
          WITHIN GROUP (ORDER BY DTM.Rank ASC) AS TechnologyPlatforms 
FROM 
	dbo.Deal_to_TherapeuticModality AS DTM 
		INNER JOIN
			dbo.vwTechnologyPlatform AS TP 
				ON DTM.TherapeuticModalityKey = TP.TherapeuticModalityKey
WHERE DTM.DealAssetKey > 0  -- added on 03_17_2023 to exclude -1 and prevent STRING_AGG aggregation result exceeded the limit of 8000 bytes
GROUP BY DealAssetKey
GO
/****** Object:  Table [mv].[vwPipeline_Ext]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwPipeline_Ext](
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CompanyKey] [int] NULL,
	[IsDiscontinued] [bit] NULL,
	[ProductKey] [int] NULL,
	[ProductId] [decimal](18, 0) NULL,
	[Name] [nvarchar](1000) NULL,
	[Description] [nvarchar](255) NULL,
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[SubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[MolecularTargetName] [nvarchar](255) NULL,
	[MolecularTargetNameFamily] [nvarchar](255) NULL,
	[TherapeuticModalityID] [int] NULL,
	[TherapeuticModalityName] [nvarchar](255) NULL,
	[TherapeuticModalityCategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubcategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubsubcategory] [nvarchar](255) NULL,
	[LatestClinicalStageKey] [int] NULL,
	[Latest Stage of Development] [nvarchar](250) NULL,
	[ProductDetailKey] [int] NULL,
	[DiseaseCategory] [nvarchar](255) NULL,
	[StandardIndicationName] [nvarchar](255) NULL,
	[ProductDetail] [varchar](8000) NULL,
	[Target1] [nvarchar](255) NULL,
	[EncodedTarget1] [nvarchar](255) NULL,
	[Target2] [nvarchar](255) NULL,
	[EncodedTarget2] [nvarchar](255) NULL,
	[LicenseKey] [int] NULL,
	[PartnershipTermsKey] [int] NULL,
	[PartneringStatus] [nvarchar](255) NULL,
	[InLicensedCompany] [nvarchar](255) NULL,
	[MilestoneKey] [int] NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[Start Date of Milestone] [date] NULL,
	[End Date of Milestone] [date] NULL,
	[MilestoneType] [int] NULL,
	[MilestoneTypeStr] [nvarchar](255) NULL,
	[RouteOfAdministrationKey] [int] NULL,
	[RouteOfAdministrationName] [nvarchar](255) NULL,
	[MechanismOfActionKey] [int] NULL,
	[MechanismOfActionName] [nvarchar](255) NULL,
	[GeographyKey] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[State] [nvarchar](200) NULL,
	[Region] [nvarchar](100) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[YearFounded] [int] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Date of Last Financing] [date] NULL,
	[Total Amount Raised] [money] NULL,
	[Market Cap] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[4-Year CAGR of EPS] [money] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[RegulatoryDesignation] [nvarchar](255) NULL,
	[RegulatoryRegion] [nvarchar](250) NULL,
	[PipelineKey] [int] NOT NULL,
	[Code] [nvarchar](250) NULL,
	[EventDateKey] [int] NOT NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[PhaseOfDevelopmentKey] [int] NOT NULL,
	[PartnerCompanies] [nvarchar](4000) NULL,
	[EncodedPartnerCompanies] [nvarchar](4000) NULL,
	[Concat_Target] [nvarchar](4000) NULL,
	[Concat_LegacyTargetName] [nvarchar](4000) NULL,
	[PartnerCompanyName] [nvarchar](255) NULL,
	[PartnerCompanyKey] [int] NULL,
	[Role] [varchar](16) NULL,
	[EncodedName] [nvarchar](255) NULL,
	[EncodedMolecularTargetName] [nvarchar](255) NULL,
	[EncodedMolecularTargetNameFamily] [nvarchar](255) NULL,
	[EncodedDiseaseCategory] [nvarchar](255) NULL,
	[EncodedStandardIndicationName] [nvarchar](255) NULL,
	[PartnerCompanyIsCurrent] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwPipelineActive_Ext]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwPipelineActive_Ext] 
AS
SELECT 
      [CompanyName]
      ,[EncodedCompanyName]
      ,[CompanyKey]
      ,[IsDiscontinued]
      ,[ProductKey]
      ,[ProductId]
      ,[Name]
      ,[EncodedName]
      ,[Description]
      ,[ClinicalPhaseKey]
      ,[Category]
      ,[SubCategory]
      ,[ClinicalPhase]
      ,[MolecularTargetName]
      ,[EncodedMolecularTargetName]
      ,[MolecularTargetNameFamily]
      ,[EncodedMolecularTargetNameFamily]
      ,[TherapeuticModalityID]
      ,[TherapeuticModalityName]
      ,[TherapeuticModalityCategory]
      ,[TherapeuticModalitySubcategory]
      ,[TherapeuticModalitySubsubcategory]
      ,[LatestClinicalStageKey]
      ,[Latest Stage of Development]
      ,[ProductDetailKey]
      ,[DiseaseCategory]
      ,[EncodedDiseaseCategory]
      ,[StandardIndicationName]
      ,[EncodedStandardIndicationName]
      ,[ProductDetail]
      ,[Target1]
      ,[EncodedTarget1]
      ,[Target2]
      ,[EncodedTarget2]
      ,[LicenseKey]
      ,[PartnershipTermsKey]
      ,[PartneringStatus]
      ,[InLicensedCompany]
      ,[MilestoneKey]
      ,[MilestoneText]
      ,[Start Date of Milestone]
      ,[End Date of Milestone]
      ,[MilestoneType]
      ,[MilestoneTypeStr]
      ,[RouteOfAdministrationKey]
      ,[RouteOfAdministrationName]
      ,[MechanismOfActionKey]
      ,[MechanismOfActionName]
      ,[GeographyKey]
      ,[Country]
      ,[Lead Product Status]
      ,[Date of Lead Product Status]
      ,[Business Category]
      ,[Exchange]
      ,[Exchange 2]
      ,[State]
      ,[Region]
      ,[SubRegion]
      ,[YearFounded]
      ,[Type of Last Financing]
      ,[Date of Last Financing]
      ,[Total Amount Raised]
      ,[Market Cap]
      ,[Date of Market Cap]
      ,[MarketCapTier]
      ,[Date of IPO]
      ,[Number of Products (Originated)]
      ,[CompanyType]
      ,[4-Year CAGR of EPS]
      ,[CompanyURL]
      ,[Ticker]
      ,[Ticker 2]
      ,[OwnershipStatus]
      ,[IsCurrent]
      ,[IsFinancier]
      ,[RegulatoryDesignation]
      ,[RegulatoryRegion]
      ,[PipelineKey]
      ,[Code]
      ,[EventDateKey]
      ,[EventDate]
      ,[EventStatus]
      ,[Notes]
      ,[PhaseOfDevelopmentKey]
      ,[PartnerCompanies]
      ,[EncodedPartnerCompanies]
      ,[Concat_Target]
      ,[Concat_LegacyTargetName]
      ,[PartnerCompanyName]
      ,[PartnerCompanyKey]
      ,[Role]
      ,[PartnerCompanyIsCurrent]
FROM [mv].[vwPipeline_Ext] p
WHERE
	p.IsDiscontinued = 0
GO
/****** Object:  View [app].[vwPipeline2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwPipeline2]
AS 
WITH PMT
AS (
SELECT 
		ProductKey, 
		PMT.MolecularTargetKey, 
		CAST(MT.MolecularTargetName AS NVARCHAR(255)) AS MolecularTargetName,
		CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
		--MT.MolecularTargetFamily_Name,
		ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
	FROM 
		dbo.Product_to_MolecularTarget PMT
			INNER JOIN
					dbo.DimMolecularTarget MT     
					ON MT.MolecularTargetKey = PMT.MolecularTargetKey
)

SELECT 
	CO.CompanyName,
	CO.CompanyKey,
	--CO.IsCurrent AS Expr1, 
	P.ProductKey,
	P.[Name],
	app.fnURL_Strip(P.[Name]) as EncodedName,
	P.Description,
	DS.ClinicalPhaseKey,
	DS.Category,
	DS.SubCategory,
	DS.ClinicalPhase,
	PMT1.MolecularTargetName,
	app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
	PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
	------ CP.CompanyName AS Partners,
	------CP.IsCurrent, 
	TM.TherapeuticModalityID,
	TM.TherapeuticModalityKey,
	CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
	CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
	CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
	CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
	Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
	ClP.ClinicalPhase AS [Latest Stage of Development],
	pd.ProductDetailKey,
	pd.DiseaseCategory,
	app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
	pd.StandardIndicationName,
	app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
	pd.ProductDetail,	 
	CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,	 
	CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
	l.LicenseKey,	   
	COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
	COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
	InLicenseCo.CompanyName AS InLicensedCompany,
	mst.MilestoneKey,
	CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneType,
	mst.MilestoneText,
	mst.StartDate AS [Start Date of Milestone],
	mst.EndDate AS [End Date of Milestone],
	mst.MilestoneTypeKey AS MilestoneTypeKey,
	COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
	COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,	 
	moa.MechanismOfActionKey,
	CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
	COGeneralInfo.GeographyKey,
	COGeneralInfo.Country,
	COGeneralInfo.[Lead Product Status],
	COGeneralInfo.[Date of Lead Product Status],
	COGeneralInfo.[Business Category],
	COGeneralInfo.Exchange,
	COGeneralInfo.[Exchange 2],
	COGeneralInfo.State,
	COGeneralInfo.Region,
	COGeneralInfo.SubRegion,
	COGeneralInfo.YearFounded,
	COGeneralInfo.[Type of Last Financing],
	COGeneralInfo.[Date of Last Financing],
	COGeneralInfo.[Total Amount Raised],
	COGeneralInfo.[Market Cap],
	COGeneralInfo.[Date of Market Cap],
	COGeneralInfo.[MarketCapTier],
	COGeneralInfo.[Date of IPO],
	COGeneralInfo.[Number of Products (Originated)],
	COGeneralInfo.CompanyType,
	COGeneralInfo.[4-Year CAGR of EPS],
	COGeneralInfo.CompanyURL,
	COGeneralInfo.Ticker,
	COGeneralInfo.[Ticker 2],
	COGeneralInfo.OwnershipStatus,
	COGeneralInfo.IsCurrent,
	COGeneralInfo.IsFinancier,
	rd.RegulatoryDesignation,
	rd.RegulatoryRegion,
	pl.PipelineKey,
	PL.Code,
	pl.EventDateKey,
	pl.EventDate,
	pl.EventStatus,
	pl.Notes,
	pl.PhaseOfDevelopmentKey,
	vwPP.CompaniesInvolved AS PartnerCompanies,
	 vwPT.Concat_Target,
	LI.PartnerCompanyName, 
	LI.PartnerCompanyKey, 
	LI.Role,
	InLicenseCo.IsCurrent as [PartnerCompanyIsCurrent]
 
FROM  
	dbo.FactPipeline AS PL
	    LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
		LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
				AND PMT1.Rn=1
		LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
				AND PMT2.Rn=2
				 LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
				ON P.ProductKey = PTM.ProductKey			
        LEFT JOIN --added by Oleksiy N-ko, Bug 5649: "Therapeutic Modality": Incorrect behavior in grids when items related to 3rd level are checked
			[dbo].[vwTherapeuticModality] vtm 
				ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey
		LEFT OUTER JOIN
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
		  mv.vwCompanyGeneralInfo AS COGeneralInfo
			ON Co.CompanyKey = COGeneralInfo.CompanyKey
		LEFT OUTER JOIN           
			DimClinicalPhase ClP
				ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
		LEFT OUTER JOIN 
			FactLicense l 
				ON l.ProductKey = pl.ProductKey 
				AND l.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN
			DimPartnershipTerms pt 
				ON pt.PartnershipTermsKey = l.PartnershipTermsKey
		LEFT OUTER JOIN
			FactMilestone mst 
				ON mst.ProductKey = pl.ProductKey 
				AND mst.Productdetailkey = pl.ProductDetailKey
				--***
				LEFT OUTER JOIN 
				DimMilestoneType DMT
				ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
		LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
		LEFT OUTER JOIN
				Product_to_MechanismOfAction pmoa
					ON pmoa.ProductKey = pl.ProductKey 
		LEFT OUTER JOIN
				dbo.DimMechanismOfAction AS moa
					ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey			 
	    LEFT OUTER JOIN
				DimCompany AS InLicenseCo
				ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
		LEFT OUTER JOIN
				FactRegulatoryDesignation AS RD 
				ON pd.ProductDetailKey = rd.ProductDetailKey
		LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
		-- added SJN 09-20-2017 per Lam & David
		LEFT OUTER JOIN 
			dbo.vwConcatPartnersForProduct AS vwPP
				ON PL.productkey = vwPP.ProductKey AND PL.ProductDetailKey = vwPP.ProductDetailKey
		LEFT OUTER JOIN 
			dbo.vwConcatProductTarget AS vwPT
				ON PL.productkey = vwPT.ProductKey
		--LEFT OUTER JOIN 
		--		dbo.DimCompany AS PC 
		--			ON L.InLicenseCompanyKey = PC.CompanyKey	
		LEFT OUTER JOIN 
				vwProductLicense LI
					ON PL.ProductKey = LI.ProductKey 
					AND PL.ProductDetailKey = LI.ProductDetailKey
					--and LI.[Role] = 'Licensee'
		--left join DimCompany pc on pc.CompanyKey = LI.PartnerCompanyKey
GO
/****** Object:  Table [dbo].[DimDealType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDealType](
	[DealTypeKey] [int] NOT NULL,
	[DealType] [varchar](250) NOT NULL,
	[DealClass] [varchar](250) NOT NULL,
	[SortOrder] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwProductByDealType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwProductByDealType]
AS
SELECT
	dp.DealProductKey,
	dp.DealAssetKey,
	dp.ProductKey,
	dbo.DimDealType.DealTypeKey,
	dbo.DimDealType.DealType,
	dbo.DimDealType.DealClass
FROM dbo.Deal_To_Product dp
JOIN FactDealAssets da
	ON da.DealAssetkey = dp.DealAssetKey
JOIN dbo.DimDealType
	ON da.DealTypeKey = dbo.DimDealType.DealTypeKey
GO
/****** Object:  Table [app].[DimGeographyTree]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimGeographyTree](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](64) NULL,
	[Parent] [int] NULL,
	[Dimension] [nvarchar](64) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Selectable] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwBCRegionHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwBCRegionHierarchy] AS

SELECT
	BTH.BCBiotechHubKey,
	--C.Id,
	--C.Name,
	--C.Parent,
	--C.Dimension,
	--C.SortOrder,
	--C.Level,
	--C.Selectable,
	--GT.Id,
	--GT.Name,
	--GT.Parent,
	--GT.Dimension,
	--GT.SortOrder,
	--GT.Level,
	--GT.Selectable,
	--GT2.Id,
	--GT2.Name,
	--GT2.Parent,
	--GT2.Dimension,
	--GT2.SortOrder,
	--GT2.Level,
	--GT2.Selectable,
	--GT3.Id,
	--GT3.Name,
	--GT3.Parent,
	--GT3.Dimension,
	--GT3.SortOrder,
	--GT3.Level,
	--GT3.Selectable
	CASE
		WHEN C.Dimension = 'country' THEN C.Name
		WHEN C.Dimension = 'BcBiotechHub' THEN C.Name
		ELSE null
	END as 'State/Province',
	CASE
		WHEN C.Dimension = 'country' THEN C.Name
		WHEN GT.Name = 'United States of America' THEN 'United States of America'
		WHEN GT.Name = 'Canada' THEN 'Canada'
		ELSE null
	END as 'Country',
	CASE
		WHEN GT.Dimension = 'subregion' THEN GT.Name
		WHEN GT.Dimension = 'region' THEN GT.Name
		WHEN GT.Name = 'United States of America' THEN 'North America'
		WHEN GT.Name = 'Canada' THEN 'North America'
		ELSE null
	END as 'Subregion',
	CASE
		WHEN GT2.Dimension = 'region' THEN GT2.Name
		WHEN GT.Name = 'Asia-Pacific' THEN 'Asia-Pacific'
		WHEN GT.Name = 'Other' THEN 'Other'
		WHEN GT2.Name = 'North America' THEN 'Americas'
		ELSE null
	END as 'Region'
FROM
	(
		SELECT Id, Parent, Dimension, SortOrder, Level, Selectable,
			CASE
				WHEN Name = 'Jersey' THEN 'Isle of Jersey'
				WHEN Name = 'United Arab Emirates' THEN 'UAE'
				WHEN Name = 'Virgin Islands, US' THEN 'U.S. Virgin Islands'
				WHEN Name = 'Iran, Islamic Republic of' THEN 'Iran'
				WHEN Name = 'Tanzania, United Republic of' THEN 'Tanzania'
				WHEN Name = 'South Sudan' THEN 'Sudan'
				ELSE Name
			END as 'Name'
		FROM
			app.DimGeographyTree GT
		WHERE
			Dimension = 'BCBiotechHub'
			OR Dimension = 'country'
	) C
		LEFT JOIN
			app.DimGeographyTree GT
				ON C.Parent = GT.Id
		LEFT JOIN
			app.DimGeographyTree GT2
				ON GT.Parent = GT2.Id
		LEFT JOIN
			app.DimGeographyTree GT3
				ON GT2.Parent = GT3.Id
		LEFT JOIN
			DimBCBiotechHub BTH
				ON BTH.BCBiotechHub = C.Name
GO
/****** Object:  View [app].[vwProductLicensedStatus]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwProductLicensedStatus] AS
SELECT  p.ProductKey, ISNULL( u.[PartnershipTermsKey], -1 ) PartnershipTermsKey, ISNULL( PartnershipTerms, 'Unlicensed' ) PartnershipTerm
FROM	[dbo].DimProduct p 
LEFT JOIN (
	SELECT  DISTINCT [ProductKey], l.[PartnershipTermsKey], pa.PartnershipTerms
	FROM	[dbo].[FactLicense] l INNER JOIN DimPartnershipTerms pa ON l.[PartnershipTermsKey] = pa.[PartnershipTermsKey]
) u ON p.ProductKey = u.ProductKey
GO
/****** Object:  Table [dbo].[FactDeals]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactDeals](
	[DealKey] [bigint] NOT NULL,
	[DealCode] [int] NULL,
	[DealID] [int] NULL,
	[DateAnnounced] [date] NULL,
	[DateAnnouncedKey] [int] NOT NULL,
	[DateCompleted] [date] NULL,
	[DateCompletedKey] [int] NOT NULL,
	[DateTerminated] [date] NULL,
	[DateTerminatedKey] [int] NOT NULL,
	[DateStatus] [date] NULL,
	[DateStatusKey] [int] NOT NULL,
	[StatusKey] [int] NOT NULL,
	[ExclusivityKey] [int] NOT NULL,
	[TerminationReasonKey] [int] NOT NULL,
	[Headline] [varchar](8000) NULL,
	[InternalNotes] [nvarchar](2000) NULL,
	[DealValueNotes] [nvarchar](2000) NULL,
	[DealValue] [money] NULL,
	[OptionExclusivityPayment] [money] NULL,
	[OptionExercisePayment] [money] NULL,
	[UpfrontCash] [money] NULL,
	[UpfrontEquity] [money] NULL,
	[RDFunding] [money] NULL,
	[TotalMilestonePayments] [money] NULL,
	[SalesBasedMilestonePayments] [money] NULL,
	[NetSalesRoyalty] [money] NULL,
	[ProfitSplit] [money] NULL,
	[ManufacturingSupplyTransPrice] [money] NULL,
	[UnitBasedReimbursement] [money] NULL,
	[LoansAndOther] [money] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[OtherPmntNotes] [nvarchar](1000) NULL,
	[OptionNotes] [nvarchar](1000) NULL,
	[UpfrontPmntNotes] [nvarchar](1000) NULL,
	[RDFundingNotes] [nvarchar](1000) NULL,
	[MilestonePmntNotes] [nvarchar](1000) NULL,
	[CommercialPmntNotes] [nvarchar](1000) NULL,
	[StageAtTermination] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealMakers]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDealMakers] 
AS

SELECT DISTINCT
	C.CompanyKey,
	c.code as CompanyCode,
	C.CompanyName,
	D.DealKey,
	CASE 
		WHEN DT.DealClass='Mergers and Acquisitions' THEN 'M&A'
		ELSE 'Partnership/Asset Purchase'
	END DealClass,
	D.DealValue TotalDealValue,
	D.UpfrontCash,
	DC.CompanyRole,
	CASE 
		WHEN D.DealValue=-1 THEN 0
		ELSE 1
	END AS DealValueIsDisclosed,
	CASE 
		WHEN D.UpfrontCash=-1 THEN 0
		ELSE 1
	END AS UpfrontCashIsDisclosed,
	da.Modifieddate as LastUpdated
FROM
  dbo.FactDeals D
	INNER JOIN
		FactDealAssets da
			ON da.DealKey = d.DealKey
	INNER JOIN
      dbo.DealAsset_to_Company AS DC
        ON D.DealKey = DC.DealKey
		AND da.DealAssetKey = dc.DealAssetKey
    INNER JOIN
      dbo.DimCompany AS C
        ON DC.CompanyKey = C.CompanyKey
    INNER JOIN
      dbo.DimDealType AS DT
        ON Da.DealTypeKey = DT.DealTypeKey
--WHERE d.DealKey in ( 728,3386)
GO
/****** Object:  View [dbo].[vwDealMakersSummary]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealMakersSummary]
AS

SELECT
	DA.CompanyKey,
	[Company Name],
	app.fnURL_Strip([Company Name]) as EncodedCompanyName,
	[Number of Deals] AS [All Deals],
	[Partnership/Asset Purchase],
	[M&A],
	[Aggregate Deal Value] AS [Total Deal Value],
	[Aggregate Upfront Cash] AS [Upfront Cash],
	[# Disclosed (DV)],		
	[# Disclosed (UC)],
	[Licensor],	
	[Licensee],					
	[Seller],
	[Buyer],
	[Investor],
	[Advisor],
	[Other],
	[Research Partner],
	[Undisclosed / Unknown]				
FROM	
--all deals summary
(
	SELECT
		CompanyKey,     
		CompanyName AS [Company Name], 		 
		COUNT(DealKey) AS [Number of Deals], 
		SUM(TotalDealValue) AS [Aggregate Deal Value],
		SUM(DealValueIsDisclosed) AS [# Disclosed (DV)],
		SUM(UpfrontCash) AS [Aggregate Upfront Cash],
		SUM(UpfrontCashIsDisclosed) AS [# Disclosed (UC)]	
	FROM            
		dbo.vwDealMakers DM
	GROUP BY CompanyName, CompanyKey
) DA
	INNER JOIN
		(
----deal by type summary
		SELECT
			CompanyKey,
			[M&A],	--MNADeals,
			[Partnership/Asset Purchase]-- PartneringDeals	
				
		FROM 
			(
			SELECT DISTINCT CompanyKey,DealKey,DealClass
			FROM vwDealMakers AS DM 

			) p
		PIVOT
			(
			COUNT (DealKey)
			FOR DealClass IN ([M&A],[Partnership/Asset Purchase])

		) AS pvt
	) DT
		ON DA.CompanyKey=DT.CompanyKey

	INNER JOIN
--deals by company role summary
		(
		SELECT
			CompanyKey,
			[Licensor],	
			[Licensee],					
			[Seller],
			[Buyer],
			[Investor],
			[Advisor],
			[Other],
			[Research Partner],
			[Undisclosed / Unknown]								
				
		FROM 
			(
			SELECT DISTINCT   CompanyKey,CompanyRole, DealKey
			FROM         vwDealMakers AS DM
				
			) p
		PIVOT
			(
			COUNT ( DealKey)
			FOR CompanyRole IN ([Buyer],[Licensee],[Other],[Undisclosed / Unknown],[Investor],[Advisor],[Seller],[Licensor],[Research Partner])

		) AS pvt
		) DR
			ON DA.CompanyKey=DR.CompanyKey
GO
/****** Object:  View [app].[vwProductToMolecularTarget]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwProductToMolecularTarget]
AS
SELECT
	pmt.ProductMolecularTargetKey,
	pmt.ProductKey,
	pmt.MolecularTargetKey,
	mt.MolecularTargetName,
	mt.MolecularTargetFamily_Name,
	mt.LegacyTargetName,
	mt.[Synonyms]
FROM dbo.Product_to_MolecularTarget pmt
INNER JOIN dbo.DimMolecularTarget mt
	ON MT.MolecularTargetKey = pmt.MolecularTargetKey
GO
/****** Object:  Table [dbo].[DealDocuments]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealDocuments](
	[DealDocumentKey] [int] NOT NULL,
	[DealID] [int] NULL,
	[Deal_Code] [int] NULL,
	[Deal_Name] [nvarchar](255) NULL,
	[DealKey] [int] NULL,
	[DocumentID] [int] NULL,
	[DocumentType_code] [int] NULL,
	[DocumentType_Name] [nvarchar](255) NULL,
	[DealEventCode] [int] NULL,
	[DocumentBlob] [image] NULL,
	[FileName] [varchar](255) NULL,
	[DocumentDate] [datetime] NULL,
	[DocumentSource] [varchar](500) NULL,
	[Notes] [varchar](255) NULL,
	[UserCreated] [varchar](60) NULL,
	[DateCreated] [datetime] NULL,
	[UserModified] [varchar](60) NULL,
	[DateModified] [datetime] NULL,
	[FileURL] [nvarchar](512) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[DocumentTypes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DocumentTypes](
	[DocumentTypeID] [int] NOT NULL,
	[DocumentType] [varchar](255) NULL,
	[DocumentTypeAbbr] [varchar](50) NULL,
	[SortOrder] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwDealDocuments]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealDocuments]
AS
SELECT
	d.DealDocumentKey,
	d.DealDocumentKey as DocumentID,
	d.[Deal_Code] as Code,
	d.[FileName],
	d.DocumentDate,
	d.DocumentSource,
	d.Notes,
	dt.DocumentTypeID,
	dt.DocumentType,
	dt.DocumentTypeAbbr,
	d.FileURL

FROM DealDocuments d
JOIN [app].[DocumentTypes] dt
	ON dt.DocumentType = d.DocumentType_Name
GO
/****** Object:  View [app].[vwProductToTechnologyPlatform]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [app].[vwProductToTechnologyPlatform]
AS
SELECT
	dp.DealProductKey,
	dp.DealAssetKey,
	p.ProductKey,
	TP.TherapeuticModalityKey,
	TP.[Technology Platform 1] AS TechnologyPlatformCategory,
	TP.[Technology Platform 2] AS TechnologyPlatformSubcategory,
	TP.[Technology Platform 3] AS TechnologyPlatformSubsubcategory,
	dbo.DimPartnershipScope.PartnershipScopeName AS PartnershipScope
FROM dbo.Deal_To_Product dp
LEFT JOIN dbo.DimProduct p
	ON dp.ProductKey = p.ProductKey
LEFT JOIN dbo.Deal_to_TherapeuticModality AS DTM
	ON DTM.DealAssetKey = dp.DealAssetKey
LEFT JOIN dbo.vwTechnologyPlatform AS TP
	ON DTM.TherapeuticModalityKey = TP.TherapeuticModalityKey
LEFT JOIN dbo.Deal_to_PartnershipScope
	ON dp.DealAssetKey = dbo.Deal_to_PartnershipScope.DealAssetKey
LEFT JOIN dbo.DimPartnershipScope
	ON dbo.Deal_to_PartnershipScope.PartnershipScopeKey = dbo.DimPartnershipScope.PartnershipScopeKey
GO
/****** Object:  Table [dbo].[FactStock]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactStock](
	[TradeDateKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[StockTickerKey] [int] NOT NULL,
	[TradeDate] [date] NULL,
	[LastSharePrice] [money] NULL,
	[OpenSharePrice] [money] NULL,
	[HighSharePrice] [money] NULL,
	[LowSharePrice] [money] NULL,
	[Volume] [int] NULL,
	[LastClose] [money] NULL,
	[ChangeFromLastClose] [numeric](19, 9) NULL,
	[PercentChangeFromLastClose] [numeric](19, 9) NULL,
	[EndOfDayPrice] [money] NULL,
	[EndOfDayPriceDate] [date] NULL,
	[SplitRatio] [int] NULL,
	[CumulativeCashDividend] [money] NULL,
	[CumulativeStockDividendRatio] [numeric](19, 9) NULL,
	[OriginalClosePrice] [money] NULL,
	[OriginalVolume] [int] NULL,
	[ExchangeRate] [numeric](19, 9) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[DateNum] [int] NULL,
	[LastPriceSource] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnStock]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	--DECLARE 
	--	@dateFrom datetime='7-10-2017',
	--	@dateTo datetime='10-16-2017'


CREATE FUNCTION [dbo].[fnStock]
(		@dateFrom datetime,
		@dateTo datetime)
RETURNS table
AS
/*SELECT * FROM dbo.fnStock('7-10-2017',	'10-16-2017') */
RETURN (
WITH StocksDaily AS
(
	SELECT  DISTINCT
			st.CompanyKey ,
			st.Ticker ,
			st.Exchange ,
			st.IsPrimary ,
			s.TradeDateKey ,
			s.TradeDate ,
			s.LastSharePrice ,
			s.Volume ,
			s.OriginalClosePrice ,
			s.OriginalVolume ,
			cr.CurrencyAbbr
	FROM    dbo.FactStock AS s
			INNER JOIN dbo.DimStockTicker AS st ON s.StockTickerKey = st.StockTickerKey
			INNER JOIN dbo.DimCurrency AS cr ON s.CurrencyKey = cr.CurrencyKey
	WHERE s.TradeDate BETWEEN @dateFrom AND @dateTo
	AND st.CompanyKey  IS NOT NULL
)
SELECT     
		cgi.*,
		tt.Date_from AS [Start Date], 
		tt.Date_to AS [End Date], 
		--dp1.Footnotes AS [Notes],  
		dp1.LastSharePrice AS [Start Date Closing Price], 
		dp2.LastSharePrice AS [End Date Closing Price],
		((dp2.LastSharePrice * 100 /NULLIF(dp1.LastSharePrice,0))-100) AS [Price Change %], 
		dp1.Volume AS [Start Date Volume], 
		dp2.Volume AS [End Date Volume], 
		CAST(dp2.Volume AS real)*100/NULLIF(CAST(dp1.Volume AS real),0) - 100 AS [Volume Change %], 
		tt.[Total Volume], 
		tt.[Average Volume],		
		dp1.OriginalClosePrice AS [Start Date Closing Price (original)], 
		dp2.OriginalClosePrice AS [End Date Closing Price (original)],
		dp1.OriginalVolume AS [Start Date Volume (original)], 
		dp2.OriginalVolume AS [End Date Volume (original)],
		dp1.CurrencyAbbr AS [Start Date Currency],
		dp2.CurrencyAbbr AS [End Date Currency]
	FROM  

(SELECT     
			CompanyKey, 
			SUM(Volume) AS [Total Volume], 
			AVG(Volume) AS [Average Volume], 
			MIN(TradeDate) AS Date_from, 
			MAX(TradeDate) AS Date_to
		FROM StocksDaily	
		GROUP BY CompanyKey) AS tt 
			LEFT OUTER JOIN
			      StocksDaily AS dp1 
					ON tt.CompanyKey = dp1.CompanyKey 
					AND tt.Date_from = dp1.TradeDate 
			LEFT OUTER JOIN
			      StocksDaily AS dp2 
					ON tt.CompanyKey = dp2.CompanyKey 
					AND tt.Date_to = dp2.TradeDate
						INNER JOIN
	        	mv.vwCompanyGeneralInfo cgi
					ON tt.CompanyKey = cgi.CompanyKey


	)
GO
/****** Object:  Table [app].[DimPeriod]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimPeriod](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DateFrom] [datetime] NOT NULL,
	[DateTo] [datetime] NULL,
	[SortOrder] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwFinancingInvestorsUnderwriters]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwFinancingInvestorsUnderwriters]
AS


SELECT  DISTINCT
	f.FinancingKey, 
	Investors,
	Underwriters

FROM
	dbo.Financing_to_Financier f
		LEFT OUTER JOIN
			(
				SELECT  
					dbo.Financing_to_Financier.FinancingKey, 
					STRING_AGG (dbo.DimCompany.CompanyName,', ') WITHIN GROUP (ORDER BY Rank) as Investors--,
					--NULL AS  Underwriters
				FROM
					dbo.Financing_to_Financier 
						INNER JOIN
							dbo.DimCompany 
								ON dbo.Financing_to_Financier.CompanyKey = dbo.DimCompany.CompanyKey
				WHERE InvestorID  IS NOT NULL
				GROUP BY dbo.Financing_to_Financier.FinancingKey
			) i
				ON f.FinancingKey =i.FinancingKey
		LEFT OUTER JOIN
			(
				SELECT  
					dbo.Financing_to_Financier.FinancingKey, 
					--NULL as Investors,
					STRING_AGG (dbo.DimCompany.CompanyName,', ') WITHIN GROUP (ORDER BY Rank) AS Underwriters
				FROM
					dbo.Financing_to_Financier 
						INNER JOIN
							dbo.DimCompany 
								ON dbo.Financing_to_Financier.CompanyKey = dbo.DimCompany.CompanyKey
				WHERE UnderwriterID IS NOT NULL
				GROUP BY dbo.Financing_to_Financier.FinancingKey
			) u
				ON f.FinancingKey =u.FinancingKey


GO
/****** Object:  View [dbo].[vwFinancing]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vwFinancing]
AS

SELECT
    F.FinancingKey,
    F.CompanyKey,
	F.Code,
	F.FinancingID,
    c.CompanyName,
	app.fnURL_Strip(CNH.CurrentNameCompanyName) as EncodedCompanyName,
    c.GeographyKey,
    c.CompanyType,
    c.CompanyCategory,
    c.OwnershipStatus,
    c.YearFounded,
    FT.FinancingType,
    FT.Category AS FinancingTypeCategory,
    FT.SubCategory AS FinancingTypeSubCategory,
    F.FinancingTypeKey,
    F.DateCompleted,
	app.fnYearQtr(f.DateCompleted) as YearQtr,
    COALESCE(F.AmountRaised, 0) as AmountRaised,
	c.[Total Amount Raised],
    F.SharePrice,
    F.SharesSold,
	F.Completed,
	F.ComplComments,
    FF.Financiers,
	FIU.Investors,
	FIU.Underwriters,
    CASE
		WHEN PriceRangeLow <> PriceRangeHigh THEN CAST(PriceRangeLow as varchar(50)) + '-' + CAST(PriceRangeHigh as varchar(50))
		ELSE CAST(PriceRangeHigh as varchar(50))
	END FilingPrice,
    F.DateFiled,
    F.Overallotment,
    F.SharesOutstanding,
	F.SharePriceOrigCurrency,
    F.MarketCap AS [Post-Money Valuation],
	(case when (F.MarketCap is NULL or F.MarketCap = 0) then NULL else (F.MarketCap - F.AmountRaised) end) AS [Pre-Money Valuation],
    F.SharesProposed,
    CAST(F.Note AS NVARCHAR(MAX)) AS Note,
    F.Rate,
    Cr.CurrencyAbbr,
    CPh.Category AS ClinicalPhaseCategory,
	CPh.SubCategory AS ClinicalPhaseSubCategory,
	CPh.ClinicalPhase,
    d.Year,
    c.Region,
    c.SubRegion,
    c.Country,
    c.State,
    c.BCBiotechHub,
	c.City,
    c.[Lead Product Status],
    c.[4-Year CAGR of EPS],
	c.[Date of Market Cap],
	c.[Market Cap],
	CNH.CurrentNameCompanyKey,
	CNH.CurrentNameCompanyName,
	c.[Active/Not active],
	bullbear.[Name] as BullBearWindow,
	ipo.[Name] as IpoWindow,
	c.Exchange as Exchange1,
	c.[Exchange 2] as Exchange2,
	c.[Business Category],
	F.ModifiedDate as LastUpdated
FROM
    dbo.FactFinancing AS F
        INNER JOIN
            mv.vwCompanyGeneralInfo c
                ON c.CompanyKey = F.CompanyKey
        INNER JOIN
            dbo.DimDate d
                ON F.DateCompletedKey = d.DateKey
        INNER JOIN
            app.vwGeographyActive g
                ON c.GeographyKey = g.GeographyKey
        LEFT OUTER JOIN
            dbo.DimClinicalPhase AS CPh
                ON F.PhaseAtFinancingKey = CPh.ClinicalPhaseKey
        LEFT OUTER JOIN
            dbo.DimCurrency AS Cr
                ON F.CurrencyKey = Cr.CurrencyKey
        LEFT OUTER JOIN
            dbo.DimFinancingType AS FT
                ON F.FinancingTypeKey = FT.FinancingTypeKey
        LEFT OUTER JOIN
            dbo.vwFinancingFinanciers AS FF
                ON F.FinancingKey = FF.FinancingKey
		LEFT OUTER JOIN
            dbo.vwFinancingInvestorsUnderwriters AS FIU
                ON F.FinancingKey = FIU.FinancingKey
		LEFT OUTER JOIN dbo.vwCompanyNameHistory AS CNH 
				ON F.companykey = CNH.companykey
		LEFT JOIN [app].[DimPeriod] bullbear 
				ON	bullbear.[Type] = 'bullbear' 
				and bullbear.[DateFrom] <= F.DateCompleted 
				and (
					bullbear.[DateTo] >= F.DateCompleted or 
					bullbear.[DateTo] is null
				)
		LEFT JOIN [app].[DimPeriod] ipo 
				ON	ipo.[Type] = 'ipo' 
				and ipo.[DateFrom] <= F.DateCompleted
				and (
					ipo.[DateTo] >= F.DateCompleted or
					ipo.[DateTo] is null
				)




GO
/****** Object:  View [dbo].[vwCompaniesInvolved]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    VIEW [dbo].[vwCompaniesInvolved]
AS
 --3-22-2023 added join to mdm.CompanyDealRole for get CompanyDealRole_Name by Code
SELECT        
	dc.DealKey, 
	dc.DealAssetKey, 
	 STRING_AGG (c.CompanyName +' (' +	cdr.Name +')', CHAR(13)+CHAR(10)) as CompaniesInvolved,
	 STRING_AGG (
		c.CompanyName 
		+ ';| ' + app.fnURL_Strip(c.CompanyName) 
		+ ';| ' + cdr.Name 
		+ ';| ' + coalesce(c.Country, '')
		+ ';| ' + coalesce(c.CompanyType, '')
		+ ';| ' + coalesce(dc.Responsibilities,'') -- US 25015 to handle NULLs
		+ ';| ' + coalesce(CONVERT(nvarchar, dc.MarketValue), '')
		+ ';| ' + coalesce(CONVERT(nvarchar, dc.MarketValueDate), '')
		,
		CHAR(13)+CHAR(10)+'|') as EncodedCompaniesInvolved
FROM
	dbo.DealAsset_to_Company dc
		INNER JOIN
			dbo.DimCompany c
				ON dc.CompanyKey = c.CompanyKey
		join BCIQ_ODS.mdm.CompanyDealRole cdr ON cdr.Code = dc.CompanyDealRole_Code
WHERE dc.DealKey>-1
GROUP BY dc.DealKey,dc.DealAssetKey
GO
/****** Object:  View [dbo].[vwFinancingFinanciers_BU_01_20_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwFinancingFinanciers_BU_01_20_2023]
AS

SELECT  
	dbo.Financing_to_Financier.FinancingKey, 
	STRING_AGG (dbo.DimCompany.CompanyName,', ') WITHIN GROUP (ORDER BY Rank) as Financiers 
FROM
	dbo.Financing_to_Financier 
		INNER JOIN
			dbo.DimCompany 
				ON dbo.Financing_to_Financier.CompanyKey = dbo.DimCompany.CompanyKey
GROUP BY dbo.Financing_to_Financier.FinancingKey


GO
/****** Object:  View [dbo].[vwFinancingFinancierDetails]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwFinancingFinancierDetails]
AS


SELECT      
	F.FinancingKey, 
	FC.CompanyKey AS FinanciersKey, 
	C.CompanyKey, C.CompanyName, 
	F.AmountRaised, F.DateCompletedKey, 
	dbo.DimDate.Date AS DateCompleted,
	FT.FinancingType, 
	G.Region, G.SubRegion, 
	G.Country, FC.CompanyName AS Financier, 
	dbo.vwFinancingFinanciers.Financiers,
	NULL AS [Date of IPO]
FROM            
	dbo.vwFinancingFinanciers 
		INNER JOIN
			dbo.Financing_to_Financier AS FF 
		INNER JOIN
			dbo.DimCompany AS FC 
				ON FF.CompanyKey = FC.CompanyKey 
		INNER JOIN
			dbo.FactFinancing AS F 
		INNER JOIN
		dbo.DimCompany AS C 
			ON F.CompanyKey = C.CompanyKey 
			ON FF.FinancingKey = F.FinancingKey 
			ON dbo.vwFinancingFinanciers.FinancingKey = F.FinancingKey 
		INNER JOIN
			dbo.DimDate 
				ON F.DateCompletedKey = dbo.DimDate.DateKey 
		INNER JOIN
			dbo.DimGeography AS G 
				ON C.GeographyKey = G.GeographyKey
		INNER JOIN
            dbo.DimFinancingType AS FT 
				ON F.FinancingTypeKey = FT.FinancingTypeKey
GO
/****** Object:  View [dbo].[vwPipeline_Ext_BU_03_28_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwPipeline_Ext_BU_03_28_2023]
AS 
WITH PMT
AS (
SELECT 
		ProductKey, 
		PMT.MolecularTargetKey, 
		CAST(MT.LegacyTargetName AS NVARCHAR(255)) AS MolecularTargetName,
		CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
		--MT.MolecularTargetFamily_Name,
		ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
	FROM 
		dbo.Product_to_MolecularTarget PMT
			INNER JOIN
					dbo.DimMolecularTarget MT     
					ON MT.MolecularTargetKey = PMT.MolecularTargetKey
					)

SELECT 
	CO.CompanyName,
	app.fnURL_Strip(CO.CompanyName) as EncodedCompanyName,
	CO.CompanyKey,
	CASE
		WHEN CO.IsActive = 'Yes' AND
		P.IsDiscontinued = 'No' AND
		pd.IsDiscontinued = 0 THEN CONVERT(bit, 0)
		ELSE CONVERT(bit, 1)
	END AS [IsDiscontinued],
	--CO.IsCurrent AS Expr1, 
	P.ProductKey,
	p.ProductId,
	P.[Name],
	app.fnURL_Strip(P.[Name]) as EncodedName,
	P.Description,
	DS.ClinicalPhaseKey,
	DS.Category,
	DS.SubCategory,
	DS.ClinicalPhase,
	PMT1.MolecularTargetName,
	app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
	PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
	------ CP.CompanyName AS Partners,
	------CP.IsCurrent, 
	TM.TherapeuticModalityID,
	--TM.TherapeuticModalityName,
	CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
	CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
	CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
	CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
	Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
	ClP.ClinicalPhase AS [Latest Stage of Development],
	pd.ProductDetailKey,
	pd.DiseaseCategory,
	app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
	pd.StandardIndicationName,
	app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
	pd.ProductDetail,	 
	CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,	 
	app.fnURL_Strip(pmt1.MolecularTargetName) AS EncodedTarget1,
	CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
	app.fnURL_Strip(pmt2.MolecularTargetName) AS EncodedTarget2,
	l.LicenseKey,	   
	COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
	COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
	InLicenseCo.CompanyName AS InLicensedCompany,
	mst.MilestoneKey,
	mst.MilestoneText,
	mst.StartDate AS [Start Date of Milestone],
	mst.EndDate AS [End Date of Milestone],
	mst.MilestoneTypeKey AS MilestoneType,
	CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneTypeStr,
	COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
	COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,	 
	moa.MechanismOfActionKey,
	CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
	COGeneralInfo.GeographyKey,
	COGeneralInfo.Country,
	COGeneralInfo.[Lead Product Status],
	COGeneralInfo.[Date of Lead Product Status],
	COGeneralInfo.[Business Category],
	COGeneralInfo.Exchange,
	COGeneralInfo.[Exchange 2],
	COGeneralInfo.State,
	COGeneralInfo.Region,
	COGeneralInfo.SubRegion,
	COGeneralInfo.YearFounded,
	COGeneralInfo.[Type of Last Financing],
	COGeneralInfo.[Date of Last Financing],
	COGeneralInfo.[Total Amount Raised],
	COGeneralInfo.[Market Cap],
	COGeneralInfo.[Date of Market Cap],
	COGeneralInfo.[MarketCapTier],
	COGeneralInfo.[Date of IPO],
	COGeneralInfo.[Number of Products (Originated)],
	COGeneralInfo.CompanyType,
	COGeneralInfo.[4-Year CAGR of EPS],
	COGeneralInfo.CompanyURL,
	COGeneralInfo.Ticker,
	COGeneralInfo.[Ticker 2],
	COGeneralInfo.OwnershipStatus,
	COGeneralInfo.IsCurrent,
	COGeneralInfo.IsFinancier,
	rd.RegulatoryDesignation,
	rd.RegulatoryRegion,
	pl.PipelineKey,
	PL.Code,
	pl.EventDateKey,
	pl.EventDate,
	pl.EventStatus,
	pl.Notes,
	pl.PhaseOfDevelopmentKey,
	vwPP.CompaniesInvolved AS PartnerCompanies,
	vwPPEncoded.CompaniesInvolved AS EncodedPartnerCompanies,
	vwPT.Concat_Target,
	vwPT.[Concat_LegacyTargetName],
	LI.PartnerCompanyName, 
	LI.PartnerCompanyKey, 
	LI.Role,
	pc.IsCurrent as [PartnerCompanyIsCurrent]
	
 
FROM  
	dbo.FactPipeline AS PL
	    LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
		LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
				AND PMT1.Rn=1
		LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
				AND PMT1.Rn=2
				 LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
				ON P.ProductKey = PTM.ProductKey	
		LEFT JOIN
			[dbo].[vwTherapeuticModality] vtm 
				ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey		
        --LEFT OUTER JOIN
		INNER JOIN -- 03-21-2018 MI
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
		  mv.vwCompanyGeneralInfo AS COGeneralInfo
			ON Co.CompanyKey = COGeneralInfo.CompanyKey
		LEFT OUTER JOIN           
			DimClinicalPhase ClP
				ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
		LEFT OUTER JOIN 
			FactLicense l 
				ON l.ProductKey = pl.ProductKey 
				AND l.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN
			DimPartnershipTerms pt 
				ON pt.PartnershipTermsKey = l.PartnershipTermsKey
		LEFT OUTER JOIN
			(
				SELECT ProductKey, ProductDetailKey, MilestoneStatusKey, MilestoneKey, MilestoneText, EndDate, StartDate, m.MilestoneTypeKey
				FROM
					FactMilestone m
				WHERE
					(
						m.MilestoneStatusKey = 1
						AND m.EndDate >= GETDATE()
						)
						OR
						m.MilestoneKey is null
					
			) mst ON mst.ProductKey = pl.ProductKey AND mst.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN 
				DimMilestoneType DMT
				ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
		LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
		LEFT OUTER JOIN
				Product_to_MechanismOfAction pmoa
					ON pmoa.ProductKey = pl.ProductKey 
		LEFT OUTER JOIN
				dbo.DimMechanismOfAction AS moa
					ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey			 
	    LEFT OUTER JOIN
				DimCompany AS InLicenseCo
				ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
		LEFT OUTER JOIN
				FactRegulatoryDesignation AS RD 
				ON pd.ProductDetailKey = rd.ProductDetailKey
		LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
		-- added SJN 09-20-2017 per Lam & David
		LEFT OUTER JOIN 
			dbo.vwConcatPartnersForProduct AS vwPP
				ON PL.productkey = vwPP.ProductKey 
				AND PL.ProductDetailKey = vwPP.ProductDetailKey
		LEFT OUTER JOIN 
			[app].[vwConcatPartnersForProductEncoded] AS vwPPEncoded
				ON PL.productkey = vwPPEncoded.ProductKey AND PL.ProductDetailKey = vwPPEncoded.ProductDetailKey
		LEFT OUTER JOIN 
			dbo.vwConcatProductTarget AS vwPT
				ON PL.ProductKey = vwPT.ProductKey 
		LEFT OUTER JOIN 
				dbo.DimCompany AS PC 
					ON L.InLicenseCompanyKey = PC.CompanyKey 
		LEFT OUTER JOIN 
				vwProductLicense LI
					ON PL.ProductKey = LI.ProductKey 
					AND PL.ProductDetailKey = LI.ProductDetailKey
GO
/****** Object:  View [app].[vwPipelineAlert]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [app].[vwPipelineAlert]
CREATE VIEW [app].[vwPipelineAlert]
AS
SELECT
	fp.ProductDetail_ID Code,
	p.Name ProductName,
	c.CompanyID CompanyCode,
	pd.StandardIndicationName,
	fp.PhaseOfDevelopmentKey
FROM [dbo].[FactPipeline] fp 
	INNER JOIN dbo.DimCompany c ON fp.CompanyKey = c.CompanyKey
	INNER JOIN dbo.DimProduct p ON fp.ProductKey = p.ProductKey
	LEFT OUTER JOIN dbo.DimProductDetail pd ON pd.ProductDetailKey = fp.ProductDetailKey
GO
/****** Object:  View [app].[vwDealClass]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealClass] AS
SELECT DISTINCT g.[DealClass] Id, g.[DealClass] Name, Null Parent, 'dealclass' Dimension, MIN(g.SortOrder) SortOrder
FROM DimDealType g
GROUP BY g.[DealClass]
GO
/****** Object:  View [app].[vwDealType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealType] AS
SELECT DISTINCT g.[DealType] Id, g.[DealType] Name, r.Id Parent, 'dealtype' Dimension, g.SortOrder SortOrder
FROM DimDealType g INNER JOIN app.vwDealClass r ON g.DealClass = r.Id 
GO
/****** Object:  View [app].[vwDealTypeHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealTypeHierarchy] AS
SELECT	Id, Name, CONVERT(NVARCHAR(256), Parent) Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY SortOrder)) SortOrder, 1 [Level], convert(bit, 'True') Selectable
FROM	app.vwDealClass  
UNION ALL
SELECT	Id, Name, Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY SortOrder)) SortOrder, 2 [Level], convert(bit, 'True') Selectable
FROM	app.vwDealType  
GO
/****** Object:  Table [app].[DimCompanyType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimCompanyType](
	[CompanyTypeKey] [int] NOT NULL,
	[CompanyType] [nvarchar](255) NOT NULL,
	[SortOrder] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwCompanyTypes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwCompanyTypes]
AS
SELECT
	--CASE
	--	WHEN t.CompanyTypeKey IS NULL THEN cast( - RANK() OVER (ORDER BY t.CompanyType) as int)
	--	ELSE t.CompanyTypeKey
	--END AS CompanyTypeKey,
	coalesce(t.CompanyTypeKey, cast( -RANK() OVER (ORDER BY t.CompanyType) as int), 0) AS CompanyTypeKey,
	t.CompanyType,
	t.SortOrder
FROM (SELECT DISTINCT
	ct.CompanyTypeKey,
	c.CompanyType,
	ct.SortOrder
FROM vwCompanyGeneralinfo c
LEFT JOIN [app].[DimCompanyType] ct
	ON ct.CompanyType = c.CompanyType
WHERE c.CompanyType IS NOT NULL) t
GO
/****** Object:  View [app].[vwDiseaseCategory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDiseaseCategory] AS
SELECT DISTINCT g.[DiseaseCategoryName] Id, g.[DiseaseCategoryName] Name, Null Parent, 'diseasecategory' Dimension
FROM DimDiseaseCategory g
WHERE g.[DiseaseCategoryName] IS NOT NULL
GO
/****** Object:  View [app].[vwStandardIndication]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwStandardIndication] AS
SELECT DISTINCT g.[StandardIndicationName] Id, g.[StandardIndicationName] Name, r.Id Parent, 'standardindication' Dimension
FROM [DimStandardIndication] g INNER JOIN app.vwDiseaseCategory r ON g.[DiseaseCategory] = r.Id 
WHERE g.[StandardIndicationName] IS NOT NULL
GO
/****** Object:  View [dbo].[vwCompanyGeneralInfo_11_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE   VIEW [dbo].[vwCompanyGeneralInfo_11_2022]
AS

SELECT --TOP (10) 
	C.CompanyKey, 
	c.code as CompanyCode,
	C.CompanyName,
	app.fnURL_Strip(C.CompanyName) AS EncodedCompanyName,
	CNH.CurrentNameCompanyKey,
	CNH.CurrentNameCompanyName, 
	app.fnURL_Strip(CNH.CurrentNameCompanyName) AS CurrentNameEncodedName,
	CNH.EventType,  --01-25-2021 CatH change
	C.CompanyNameAbbr,
	CAST(ET.ExchangeDescription  AS NVARCHAR(255)) as Exchange, 
	CAST(ET.Ticker  AS NVARCHAR(255)) AS Ticker, 
	CAST(ET2.ExchangeDescription AS NVARCHAR(255)) AS [Exchange 2],
	CAST(ET2.Ticker AS NVARCHAR(255)) AS [Ticker 2],
	CAST(cbt.BusinessTypes  AS NVARCHAR(255)) AS [Business Category],
	concat_ws(', ', c.AddressLine1, c.City, c.State, c.Country, c.ZipCode) AS [Location],
	c.AddressLine1,
	c.AddressLine2,
	coalesce(bhr.Region, G.Region) AS Region, 
	C.Country, 
	c.ZipCode,
	C.YearFounded, 
	C.CompanyURL, 
	CP.Category as ClinicalPhaseCategory,
	CP.SubCategory as ClinicalPhaseSubCategory,
	CP.ClinicalPhase AS [Lead Product Status],
	c.LeadProductStatusDate AS [Date of Lead Product Status],
	c.IsActive AS [Active/Not active],
	cf.DateCompleted AS [Date of Last Financing],
	cf.FinancingType AS [Type of Last Financing],
	cf.AmountRaised AS [Amount Raised in Last Financing],
	cf.Financiers AS [Financiers of Last Financing],
	TotalAmountRaised AS [Total Amount Raised],
	clmc.ValueDate AS [Date of Market Cap],
	clmc.MarketCap_USD AS [Market Cap],
	clmc.MarketCap_USD AS [Market Cap USD],
	cipo.DateCompleted AS [Date of IPO],
	ProductsNumber AS [Number of Products (Originated)],
	0.00 AS [4-Year CAGR of EPS],
	C.CompanyType AS [OriginalCompanyType],
	CASE
		WHEN C.CompanyType not in ('Small-Cap Biopharma (<$1 billion)',
									 'Mid-Cap Biopharma ($1-$50 billion)',
									 'Large-Cap Biopharma (>=$50 billion)')
						OR clmc.MarketCap_USD is null
						OR clmc.MarketCap_USD = 0
									 THEN C.CompanyType
		ELSE CASE
				WHEN clmc.MarketCap_USD < 1000000000 THEN 'Small-Cap Biopharma (<$1 billion)'
				WHEN clmc.MarketCap_USD >= 1000000000 
					 and clmc.MarketCap_USD < 50000000000 THEN 'Mid-Cap Biopharma ($1-$50 billion)'
				WHEN clmc.MarketCap_USD >= 50000000000 THEN 'Large-Cap Biopharma (>=$50 billion)'
				END
		END AS CompanyType,
	c.State, 
	C.CompanyCategory, 
	C.CompanyID, 
	C.Legacy_CompanyID, 
	C.Territory, 
	C.IsCurrent, 
	G.SubRegion, 
	C.GeographyKey,
	c.OwnershipStatus,
	c.[Legacy_UnderwriterID] as [LegacyUnderwriterId],
	c.[Legacy_InvestorID] as [LegacyInvestorId],
	CAST(bh.BCBiotechHub  AS NVARCHAR(255)) AS BCBiotechHub,
	c.City,
	c.IsFinancier,
	c.BCBiotechHubKey,
	CASE --PER TJ
		WHEN OwnershipStatus='Private' THEN NULL
		ELSE mct.MarketCapTier
	END AS MarketCapTier, 
	coalesce(CAST(bh.BCBiotechHub  AS NVARCHAR(255)),  C.Country, G.SubRegion, G.Region) as GeoLeaf,
	c.ModifiedDate as LastUpdated,
	c.SearchBy,
	CASE
		WHEN ET.Ticker IS NOT NULL THEN 'Public'
		WHEN ET.Ticker IS NULL THEN 'Private'
	END AS [Public/Private],
	c.Archived, --01-25-2021 CatH change
	(CASE WHEN (c.isActive = 'No') THEN 'No' ELSE (CASE WHEN c.Archived = 1 THEN 'Archived' ELSE  'Yes' END ) END) AS [Active/Archived/Not active] --Task 22561 changed on 11-11-2022
	--(CASE WHEN (c.Archived = 1) THEN 'Archived' else c.IsActive END) AS [Active/Archived/Not active] --Task 22561 added on 11-10-2022
FROM            
	dbo.DimCompany AS C 
		LEFT OUTER JOIN
			dbo.DimGeography AS G 
				ON C.GeographyKey = G.GeographyKey 
		LEFT OUTER JOIN [mv].[vwBiotechHubToRegion] bhr
				ON c.BCBiotechHubKey = bhr.BCBiotechHubKey
		LEFT OUTER JOIN
			dbo.DimStockTicker AS ET 
				ON C.CompanyKey = ET.CompanyKey
				AND ET.IsPrimary='Yes'
		LEFT OUTER JOIN
			dbo.DimStockTicker AS ET2 
				ON C.CompanyKey = ET2.CompanyKey 
				AND ET2.IsPrimary='No'
		LEFT OUTER JOIN
			mv.vwCompanyLatestMarketCap clmc
				ON C.CompanyKey = clmc.CompanyKey
		LEFT OUTER JOIN DimBCBiotechHub bh
				ON  c.BCBiotechHubKey = bh.BCBiotechHubKey
		LEFT OUTER JOIN
			DimClinicalPhase CP
			ON C.LeadProductStatusKey=CP.ClinicalPhaseKey
		LEFT OUTER JOIN
			(
				SELECT  F.CompanyKey,
				CurrentNameCompanyKey,
				FinancingType,
				DateCompleted,
				AmountRaised,
				FF.Financiers,
				SUM(AmountRaised) OVER(PARTITION BY CurrentNameCompanyKey) AS TotalAmountRaised,
				ROW_NUMBER() OVER(PARTITION BY CurrentNameCompanyKey ORDER By DateCompleted DESC) AS rn
				FROM    
					dbo.FactFinancing f
						INNER JOIN dbo.DimFinancingType ft
							ON f.FinancingTypeKey = ft.FinancingTypeKey
						JOIN mv.vwCompanyNameHistory CH
							ON F.CompanyKey = CH.CompanyKey
						LEFT JOIN vwFinancingFinanciers FF
							ON F.FinancingKey = FF.FinancingKey
				WHERE Completed = 'Completed') cf
						ON c.CompanyKey =cf.CurrentNameCompanyKey
						AND cf.rn=1
		LEFT OUTER JOIN
			(
			SELECT OriginatorCompanyKey, COUNT(ProductKey) AS ProductsNumber
			FROM dbo.DimProduct
			GROUP BY OriginatorCompanyKey
			) p
			ON c.CompanyKey =p.OriginatorCompanyKey
		LEFT OUTER JOIN
			(SELECT f.CompanyKey, min(f.DateCompleted) as DateCompleted
			FROM dbo.FactFinancing AS f 
				INNER JOIN
					dbo.DimFinancingType AS ft 
						ON f.FinancingTypeKey = ft.FinancingTypeKey
			WHERE ft.FinancingType = 'IPO'
			group by f.CompanyKey) cipo
				ON c.CompanyKey =cipo.CompanyKey
		LEFT OUTER JOIN
				mv.vwCompanyBusinessTypes cbt
					ON c.CompanyKey =cbt.CompanyKey
		 LEFT OUTER JOIN 
			app.DimMarketCapTier mct	
				ON clmc.MarketCap_USD >=mct.LowerBound--- COALESCE(mct.LowerBound,clmc.MarketCap_USD) 
				AND clmc.MarketCap_USD <= COALESCE(mct.UpperBound,clmc.MarketCap_USD)
		LEFT OUTER JOIN dbo.vwCompanyNameHistory AS CNH 
				ON C.companykey = CNH.companykey

GO
/****** Object:  View [app].[vwProductDetail]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwProductDetail] AS
SELECT DISTINCT g.[ProductDetail] Id, g.[ProductDetail] Name, r.Id Parent, 'productdetail' Dimension
FROM [DimProductDetail] g INNER JOIN app.vwStandardIndication r ON g.[StandardIndicationName] = r.Id 
WHERE g.[ProductDetail] IS NOT NULL
GO
/****** Object:  View [app].[vwDiseaseCategoryHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDiseaseCategoryHierarchy] AS
SELECT	Id, Name, CONVERT(NVARCHAR(256), Parent) Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 1 [Level], convert(bit, 'True') Selectable
FROM	app.vwDiseaseCategory  
UNION ALL
SELECT	Id, Name, Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 2 [Level], convert(bit, 'True') Selectable
FROM	app.vwStandardIndication
UNION ALL
SELECT	Id, Name, Parent, Dimension, CONVERT(INT, ROW_NUMBER() OVER (ORDER BY Parent, Name)) SortOrder, 3 [Level], convert(bit, 'False') Selectable
FROM	app.vwProductDetail
GO
/****** Object:  View [dbo].[vwFinancingDateYear]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwFinancingDateYear] AS
SELECT DISTINCT CONVERT(INT, [Year]) Id, [Year] Name, 'financingdateyear' Dimension
FROM DimDate
WHERE [DayOfMonth] <> 0
GO
/****** Object:  View [dbo].[vwTherapeuticModality_BU_05_25_2021]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/****** Object:  View [dbo].[vwTherapeuticModality]    Script Date: 9/11/2017 10:52:59 AM ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

CREATE VIEW [dbo].[vwTherapeuticModality_BU_05_25_2021]
AS 

WITH TM 
	AS
	(
		SELECT  TherapeuticModalityKey ,
		TherapeuticModalityName ,
		ParentTherapeuticModalityKey ,
		ModalityLevel ,
		UseInDeals ,
		UseInClinical ,
		SortOrder
		FROM dbo.DimTherapeuticModality
		WHERE COALESCE(UseInDeals,1)=1 AND COALESCE(UseInClinical,1)=1 
	)


SELECT  TM1.TherapeuticModalityKey,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        NULL AS [Therapeutic Modality 2] ,
        NULL AS [Therapeutic Modality 3] ,
        TM1.UseInDeals AS UseInDeals1 ,
        NULL AS UseInDeals2 ,
        NULL AS UseInDeals3,
		TM1.UseInClinical AS UseInClinical1, 
		NULL AS UseInClinical2, 
		NULL AS UseInClinical3
FROM
	TM AS TM1 
WHERE 
	TM1.ModalityLevel = 1
	
UNION

SELECT  COALESCE(TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        TM2.TherapeuticModalityName AS [Therapeutic Modality 2] ,
        NULL AS [Therapeutic Modality 3] ,
        TM1.UseInDeals AS UseInDeals1 ,
        TM2.UseInDeals AS UseInDeals2 ,
        NULL AS UseInDeals3,
		TM1.UseInClinical AS UseInClinical1, 
		TM2.UseInClinical AS UseInClinical2, 
		NULL AS UseInClinical3
FROM
	TM AS TM2 
        RIGHT OUTER JOIN 
			TM AS TM1 
				ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey
				AND TM2.ModalityLevel = 2				
WHERE 
	TM1.ModalityLevel = 1
	
UNION

SELECT  COALESCE(TM3.TherapeuticModalityKey ,TM2.TherapeuticModalityKey,TM1.TherapeuticModalityKey) AS TherapeuticModalityKey ,
        TM1.TherapeuticModalityName AS [Therapeutic Modality 1] ,
        TM2.TherapeuticModalityName AS [Therapeutic Modality 2] ,
        TM3.TherapeuticModalityName AS [Therapeutic Modality 3] ,
        TM1.UseInDeals AS UseInDeals1 ,
        TM2.UseInDeals AS UseInDeals2 ,
        TM3.UseInDeals AS UseInDeals3,
		TM1.UseInClinical AS UseInClinical1, 
		TM2.UseInClinical AS UseInClinical2, 
		TM3.UseInClinical AS UseInClinical3

FROM    
	TM AS TM3
        RIGHT OUTER JOIN 
			TM AS TM2 
				ON TM3.ParentTherapeuticModalityKey = TM2.TherapeuticModalityKey				
        RIGHT OUTER JOIN 
			TM AS TM1 
				ON TM2.ParentTherapeuticModalityKey = TM1.TherapeuticModalityKey				
WHERE 
	TM1.ModalityLevel = 1


GO
/****** Object:  View [dbo].[vwFinancingDateQuarter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwFinancingDateQuarter] AS
SELECT ROW_NUMBER() OVER(ORDER BY [Year], [Quarter] ASC) Id, [Quarter] + 'Q' + Substring([Year], 3, 2) Name, 'financingdatequarter' Dimension
FROM (
	SELECT DISTINCT [Year], [Quarter]
	FROM DimDate
	WHERE [DayOfMonth] <> 0
) a
GO
/****** Object:  Table [dbo].[DimAssetType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAssetType](
	[AssetTypeKey] [int] NULL,
	[AssetType] [varchar](250) NULL,
	[AssetClass] [varchar](250) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDealExclusivity]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDealExclusivity](
	[ExclusivityKey] [int] NULL,
	[ExclusivityID] [int] NULL,
	[Exclusivity] [varchar](50) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDealStatus]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDealStatus](
	[DealStatusKey] [int] NOT NULL,
	[DealStatus] [varchar](50) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDealTerminationReason]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDealTerminationReason](
	[DealTerminationReasonKey] [int] NOT NULL,
	[DealTerminationReasonName] [varchar](50) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDrugDevelopmentScope]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDrugDevelopmentScope](
	[DrugDevelopmentScopeKey] [int] NOT NULL,
	[DrugDevelopmentScopeName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMarketScale]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMarketScale](
	[MarketScaleKey] [int] NOT NULL,
	[MarketScaleName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealDiseaseCategories]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealDiseaseCategories](
	[DealAssetKey] [int] NULL,
	[DiseaseCategories] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealTherapeuticModalities]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealTherapeuticModalities](
	[DealAssetKey] [int] NULL,
	[TherapeuticModalities] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealPartnershipScopes]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealPartnershipScopes](
	[DealAssetKey] [int] NULL,
	[PartnershipScopes] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealProductNames]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealProductNames](
	[DealAssetKey] [int] NULL,
	[ProductNames] [nvarchar](4000) NULL,
	[EncodedProductNames] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealMolecularTargets]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealMolecularTargets](
	[DealAssetKey] [int] NULL,
	[DealMolecularTargets] [nvarchar](4000) NULL,
	[EncodedDealMolecularTargets] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealMechanismOfAction]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealMechanismOfAction](
	[DealAssetKey] [int] NULL,
	[MOAs] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealAssetCompanies]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealAssetCompanies](
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey1] [int] NULL,
	[CompanyName1] [nvarchar](255) NULL,
	[CurrentNameCompanyKey1] [int] NULL,
	[CurrentNameCompanyName1] [nvarchar](255) NULL,
	[CompanyRole1] [varchar](255) NULL,
	[CompanyType1] [nvarchar](250) NULL,
	[CompanyCategory1] [nvarchar](250) NULL,
	[CompanyCountry1] [nvarchar](250) NULL,
	[MarketCap1] [decimal](38, 2) NULL,
	[MarketValueDate1] [datetime2](3) NULL,
	[CompanyResponsibilities1] [varchar](8000) NULL,
	[CompanyKey2] [int] NULL,
	[CompanyName2] [nvarchar](255) NULL,
	[CurrentNameCompanyKey2] [int] NULL,
	[CurrentNameCompanyName2] [nvarchar](255) NULL,
	[CompanyRole2] [varchar](255) NULL,
	[CompanyType2] [nvarchar](250) NULL,
	[CompanyCategory2] [nvarchar](250) NULL,
	[CompanyCountry2] [nvarchar](250) NULL,
	[MarketCap2] [decimal](38, 2) NULL,
	[MarketValueDate2] [datetime2](3) NULL,
	[CompanyResponsibilities2] [varchar](8000) NULL,
	[CompanyKey3] [int] NULL,
	[CompanyName3] [nvarchar](255) NULL,
	[CurrentNameCompanyKey3] [int] NULL,
	[CurrentNameCompanyName3] [nvarchar](255) NULL,
	[CompanyRole3] [varchar](255) NULL,
	[CompanyType3] [nvarchar](250) NULL,
	[CompanyCategory3] [nvarchar](250) NULL,
	[CompanyCountry3] [nvarchar](250) NULL,
	[MarketCap3] [decimal](38, 2) NULL,
	[MarketValueDate3] [datetime2](3) NULL,
	[CompanyResponsibilities3] [varchar](8000) NULL,
	[CompanyKey4] [int] NULL,
	[CompanyName4] [nvarchar](255) NULL,
	[CurrentNameCompanyKey4] [int] NULL,
	[CurrentNameCompanyName4] [nvarchar](255) NULL,
	[CompanyRole4] [varchar](255) NULL,
	[CompanyType4] [nvarchar](250) NULL,
	[CompanyCategory4] [nvarchar](250) NULL,
	[CompanyCountry4] [nvarchar](250) NULL,
	[MarketCap4] [decimal](38, 2) NULL,
	[MarketValueDate4] [datetime2](3) NULL,
	[CompanyResponsibilities4] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealCommercialPmntStructures]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealCommercialPmntStructures](
	[DealAssetKey] [int] NULL,
	[CommercialPmntStructures] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompaniesInvolved]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompaniesInvolved](
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompaniesInvolved] [nvarchar](4000) NULL,
	[EncodedCompaniesInvolved] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealTechnologyPlatforms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealTechnologyPlatforms](
	[DealAssetKey] [int] NULL,
	[TechnologyPlatforms] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealLicensedTerritories]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealLicensedTerritories](
	[DealAssetKey] [int] NULL,
	[LicensedTerritories] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealNumberOfAssets]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealNumberOfAssets](
	[DealKey] [int] NOT NULL,
	[NumberOfAssets] [int] NULL,
	[NumberOfAssetsName] [varchar](8) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealNumberOfProducts]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealNumberOfProducts](
	[DealKey] [int] NOT NULL,
	[NumberOfProducts] [int] NULL,
	[NumberOfProductsName] [varchar](21) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTrialStatus]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTrialStatus](
	[TrialStatusKey] [int] NOT NULL,
	[TrialStatus] [varchar](50) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealDateOfLatestEvent]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealDateOfLatestEvent](
	[DealKey] [bigint] NOT NULL,
	[DateOfLatestEvent] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDeals]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDeals]
AS   

SELECT DISTINCT 
    d.DealKey,
	da.DealAssetKey,
	d.DealCode AS Code,
	d.DealID,
    ci.CompaniesInvolved,
	ci.EncodedCompaniesInvolved,
    d.DateAnnounced,
	YEAR(d.DateAnnounced) AS [Year Announced],
	d.[DateCompleted],
	d.[DateTerminated],
    d.Headline,
    DimAssetType.AssetClass,
	DimAssetType.AssetType,
    NumberOfAssets AS NumberOfAssets,
	NumberOfAssetsName AS NumberOfAssetsName,
    d.DealValue AS DealTotalValue,
    da.AssetValue AS TotalAssetValue, 
	d.[DealValueNotes],
	d.OptionNotes, --nvarchar(1000)
    d.UpfrontCash, -- changed from da.UpfrontCash 03/24/2023
    d.TotalMilestonePayments,
	d.StageAtTermination,
    da.NetSalesRoyalty, 
	da.NetSalesRoyalty / 100 as NetSalesRoyalty100,
	da.RareOrphanIntent_Name AS RareOrphanIntent, --nvarchar(250)
    --si.DiseaseCategory AS PrimaryDiseaseCategory the column has been commented out as per 6958, 05/16/2018
    dbo.DimMarketScale.MarketScaleName,
    LicensedTerritories,
	da.HasUndisclosedTerritories,	
    dc.CompanyKey1,
    dc.CompanyName1,
	dc.CurrentNameCompanyKey1,
    dc.CurrentNameCompanyName1,
    dc.CompanyRole1,
    dc.CompanyType1,
    dc.CompanyCategory1,
    dc.CompanyCountry1,
    dc.MarketCap1,
	dc.MarketValueDate1,
    dc.CompanyResponsibilities1,
    dc.CompanyKey2,
    dc.CompanyName2,
	dc.CurrentNameCompanyKey2,
    dc.CurrentNameCompanyName2,
    dc.CompanyRole2,
    dc.CompanyType2,
    dc.CompanyCategory2,
    dc.CompanyCountry2,
    dc.MarketCap2,
	dc.MarketValueDate2,
    dc.CompanyResponsibilities2,
    dc.CompanyKey3,
    dc.CompanyName3,
	dc.CurrentNameCompanyKey3,
    dc.CurrentNameCompanyName3,
    dc.CompanyRole3,
    dc.CompanyType3,
    dc.CompanyCategory3,
    dc.CompanyCountry3,
    dc.MarketCap3,
	dc.MarketValueDate3,
    dc.CompanyResponsibilities3,
    dc.CompanyKey4,
    dc.CompanyName4,
	dc.CurrentNameCompanyKey4,
    dc.CurrentNameCompanyName4,
    dc.CompanyRole4,
    dc.CompanyType4,
    dc.CompanyCategory4,
    dc.CompanyCountry4,
    dc.MarketCap4,
	dc.MarketValueDate4,
    dc.CompanyResponsibilities4,
    dbo.DimDealType.DealType,
	dbo.DimDealType.DealClass,
    dps.PartnershipScopes,
    dbo.DimDrugDevelopmentScope.DrugDevelopmentScopeName,
    NumberOfProducts AS NumberOfProducts,
	NumberOfProductsName AS NumberOfProductsName,
    dpn.ProductNames,
	dpn.EncodedProductNames,
    dtm.TherapeuticModalities,
    ddc.DiseaseCategories,
    dmt.DealMolecularTargets,
	dmt.EncodedDealMolecularTargets,
    dma.MOAs,
	d.StatusKey,
    dbo.DimDealStatus.DealStatus,
    DateOfLatestEvent, 
    dbo.DimDealExclusivity.Exclusivity,
    d.UpfrontEquity,
    da.[OptionExclusivityPayment], 
    da.[OptionExercisePayment],
    d.RDFunding,
    da.RDRegulatoryMilestonePayments,
    da.[SalesBasedMilestonePayments],
    d.ProfitSplit,
	d.ProfitSplit / 100 as ProfitSplit100,
    d.ManufacturingSupplyTransPrice,
	d.ManufacturingSupplyTransPrice / 100 as ManufacturingSupplyTransPrice100,
    d.UnitBasedReimbursement,
    d.LoansAndOther,
    dcps.CommercialPmntStructures,
    da.MinAnnouncedValue,
    ts.TrialStatus AS TrialStatusAtSigning,
	clp.Category AS ClinicalPhaseCategory,
	clp.SubCategory AS ClinicalPhaseSubCategory,
	clp.ClinicalPhase AS [Stage at Signing],
    dbo.DimDealTerminationReason.DealTerminationReasonName,
    TechnologyPlatforms,
	d.[UpfrontPmntNotes],
	d.[MilestonePmntNotes],
	d.[CommercialPmntNotes],
	d.RDFundingNotes,
	da.Modifieddate as LastUpdated
FROM
    dbo.FactDeals d
        JOIN
            FactDealAssets da
                ON da.DealKey = d.DealKey
       LEFT OUTER JOIN
          dbo.DimClinicalPhase clp
            ON da.MaxProductStatusKey = clp.ClinicalPhaseKey
        LEFT OUTER JOIN
            mv.vwDealDiseaseCategories ddc
                ON da.DealAssetKey =
                    ddc.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealTherapeuticModalities dtm
                ON da.DealAssetKey = dtm.DealAssetKey
        LEFT OUTER JOIN
            dbo.DimDealType
                ON da.DealTypeKey = dbo.DimDealType.DealTypeKey
        LEFT OUTER JOIN
            mv.vwDealPartnershipScopes dps
                ON da.DealAssetKey = dps.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealProductNames dpn
                ON da.DealAssetKey = dpn.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealMolecularTargets dmt
                ON da.DealAssetKey = dmt.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealMechanismOfAction dma
                ON da.DealAssetKey = dma.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealAssetCompanies dc
                ON d.DealKey = dc.DealKey and dc.DealAssetKey = da.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealCommercialPmntStructures dcps
                ON da.DealAssetKey = dcps.DealAssetKey
        LEFT OUTER JOIN
            mv.vwCompaniesInvolved ci
				--ON d.DealKey = dbo.vwCompaniesInvolved.DealKey
                ON da.DealAssetKey = ci.DealAssetKey
        LEFT OUTER JOIN
            dbo.DimDrugDevelopmentScope
                ON da.DrugDevelopmentScopeKey = dbo.DimDrugDevelopmentScope.DrugDevelopmentScopeKey
        LEFT OUTER JOIN
            DimAssetType
                ON DimAssetType.AssetTypeKey = da.AssetTypeKey
        LEFT OUTER JOIN
            dbo.DimDealStatus
                ON d.StatusKey =
                    dbo.DimDealStatus.DealStatusKey
        LEFT OUTER JOIN
            dbo.DimMarketScale
                ON da.MarketScaleKey = dbo.DimMarketScale.MarketScaleKey
        LEFT OUTER JOIN
            dbo.DimDealExclusivity
                ON d.ExclusivityKey = dbo.DimDealExclusivity.ExclusivityKey
        LEFT OUTER JOIN
            dbo.DimDealTerminationReason
                ON d.TerminationReasonKey = dbo.DimDealTerminationReason.DealTerminationReasonKey
		LEFT OUTER JOIN
			dbo.DimTrialStatus ts
				ON da.TrialStatusKey=ts.TrialStatusKey
		LEFT OUTER JOIN
			dbo.Deal_to_StandardIndication dsi
				ON da.DealAssetKey=dsi.DealAssetKey
				AND dsi.StandardIndicationRank=1
		LEFT OUTER JOIN
			dbo.DimStandardIndication si
				ON dsi.StandardIndicationKey=si.StandardIndicationKey
		LEFT OUTER JOIN
			[mv].[vwDealNumberOfAssets] dna
				ON dna.DealKey = d.DealKey
		LEFT OUTER JOIN
			[mv].[vwDealNumberOfProducts] dnp
				ON dnp.DealKey = d.DealKey
		LEFT OUTER JOIN
			[mv].[vwDealDateOfLatestEvent] dle
				ON dle.DealKey = d.DealKey
		LEFT OUTER JOIN
			mv.vwDealTechnologyPlatforms dtp
				ON da.DealAssetKey = dtp.DealAssetKey
		LEFT OUTER JOIN
			mv.vwDealLicensedTerritories dlt
				ON da.DealAssetKey = dlt.DealAssetKey

GO
/****** Object:  View [dbo].[vwFinancingDateSpecificWindow]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE VIEW [dbo].[vwFinancingDateSpecificWindow] AS
SELECT 1 Id, '03-07 IPO Window' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 2 Id, '99-00 IPO Window' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 3 Id, '95-97 IPO Window' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 4 Id, 'Current Bull' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 5 Id, '08-09 Bear' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 6 Id, '03-08 Bear' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 7 Id, '00-03 Bear' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 8 Id, '98-00 Bull' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 9 Id, '97-98 Bear' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 10 Id, '96-97 Bull' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 11 Id, '96 Mini Bear' Name, 'financingdatespecificwindow' Dimension
UNION ALL
SELECT 12 Id, '94-96 Bull' Name, 'financingdatespecificwindow' Dimension
GO
/****** Object:  View [dbo].[vwFinancingDate]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwFinancingDate] AS
SELECT CONVERT(INT, Id) Id, Name, Dimension
FROM dbo.vwFinancingDateYear
UNION ALL 
SELECT CONVERT(INT, Id) Id, Name, Dimension
FROM dbo.vwFinancingDateQuarter
UNION ALL 
SELECT CONVERT(INT, Id) Id, Name, Dimension
FROM dbo.vwFinancingDateSpecificWindow
GO
/****** Object:  View [app].[vwTechnologyPlatform]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwTechnologyPlatform]
AS

WITH technologyPlatformRool
AS (SELECT
	tm.TherapeuticModalityKey
FROM dbo.DimTherapeuticModality tm
WHERE tm.TherapeuticModalityName IN ('Discovery Technologies', 'Drug Formulation and Delivery Technologies')
AND tm.ParentTherapeuticModalityKey IS NULL)

SELECT
	TherapeuticModalityKey,
	TherapeuticModalityName,
	TherapeuticModalityID,
	null ParentID,
	ParentTherapeuticModalityKey,
	ModalityLevel,
	case UseInDeals when 1 then 'Yes' else 'No' end UseInDeals,
	case UseInClinical when 1 then 'Yes' else 'No' end UseInClinical,
	SortOrder
FROM dbo.DimTherapeuticModality tm
WHERE tm.TherapeuticModalityKey IN (SELECT * FROM technologyPlatformRool)
OR tm.ParentTherapeuticModalityKey IN (SELECT * FROM technologyPlatformRool)

GO
/****** Object:  View [dbo].[vwDealCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealCompany]
AS

SELECT   
	dbo.Deal_to_Company.DealCompanyKey,
	dbo.Deal_to_Company.DealKey, 
	dbo.Deal_to_Company.CompanyKey,
	dbo.DimCompany.CompanyName, 
	dbo.Deal_to_Company.CompanyRole, 
	dbo.DimCompany.CompanyType, 
    dbo.DimCompany.CompanyCategory, 
	dbo.DimCompany.Country,
	--NULL AS MarketCap,
	dbo.Deal_to_Company.Responsibilities,
	dbo.Deal_to_Company.CompanyRank,
	-- >>
	dbo.Deal_to_Company.MarketValueDate AS MarketCapDate,
	dbo.Deal_to_Company.DatePrior,
	dbo.Deal_to_Company.StockPricePrior,
	dbo.Deal_to_Company.StockPricePriorUSD,
	dbo.Deal_to_Company.SwapRate,
	dbo.Deal_to_Company.SharesIssued,
	dbo.Deal_to_Company.SharesOutstanding,
	dbo.Deal_to_Company.MarketValue AS MarketCap,
	dbo.Deal_to_Company.ExchangeRate,
	dbo.Deal_to_Company.StockValue,
	dbo.Deal_to_Company.CashValue,
	dbo.Deal_to_Company.CompanyHQCountryID,
	dbo.Deal_to_Company.CurrencyID,
	dbo.Deal_to_Company.CompanyTypeID,
	dbo.Deal_to_Company.OwnershipID,
	dbo.Deal_to_Company.ExchangeID1,
	dbo.Deal_to_Company.ExchangeID2,
	dbo.Deal_to_Company.Ticker1,
	dbo.Deal_to_Company.Ticker2,
	dbo.Deal_to_Company.SharesOutstandingDate,
	dbo.Deal_to_Company.PctOwnership
 
	--RANK ( ) OVER (PARTITION BY DealKey ORDER BY DealCompanyKey )  AS CompanyRank
FROM            
	dbo.Deal_to_Company 
		INNER JOIN
			dbo.DimCompany 
				ON dbo.Deal_to_Company.CompanyKey = dbo.DimCompany.CompanyKey
			
GO
/****** Object:  View [app].[vwTherapeuticModalityBU_05_25_2021]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwTherapeuticModalityBU_05_25_2021]
AS

SELECT
	TherapeuticModalityKey,
	TherapeuticModalityName,
	TherapeuticModalityID,
	null as ParentID,
	ParentTherapeuticModalityKey,
	ModalityLevel,
	case UseInDeals when 1 then 'Yes' else 'No' end UseInDeals,
	case UseInClinical when 1 then 'Yes' else 'No' end UseInClinical,
	SortOrder
FROM dbo.DimTherapeuticModality tm
WHERE tm.TherapeuticModalityKey  IN (select distinct tm.TherapeuticModalitykey from dbo.vwTherapeuticModality tm)

GO
/****** Object:  View [dbo].[vwDealCompanies]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vwDealCompanies]
AS  


SELECT  
C1.DealKey, 
C1.CompanyKey AS CompanyKey1,
C1.CompanyName AS CompanyName1, 
C1.CompanyRole AS CompanyRole1,
C1.CompanyType AS CompanyType1, 
C1.CompanyCategory AS CompanyCategory1, 
C1.Country AS CompanyCountry1, 
C1.MarketCap AS MarketCap1,
C1.Responsibilities AS CompanyResponsibilities1,

C2.CompanyKey AS CompanyKey2,
C2.CompanyName AS CompanyName2, 
C2.CompanyRole AS CompanyRole2,
C2.CompanyType AS CompanyType2, 
C2.CompanyCategory AS CompanyCategory2, 
C2.Country AS CompanyCountry2, 
C2.MarketCap AS MarketCap2,
C2.Responsibilities AS CompanyResponsibilities2,

C3.CompanyKey AS CompanyKey3,
C3.CompanyName AS CompanyName3, 
C3.CompanyRole AS CompanyRole3,
C3.CompanyType AS CompanyType3, 
C3.CompanyCategory AS CompanyCategory3, 
C3.Country AS CompanyCountry3, 
C3.MarketCap AS MarketCap3,
C3.Responsibilities AS CompanyResponsibilities3,

C4.CompanyKey AS CompanyKey4,
C4.CompanyName AS CompanyName4, 
C4.CompanyRole AS CompanyRole4,
C4.CompanyType AS CompanyType4, 
C4.CompanyCategory AS CompanyCategory4, 
C4.Country AS CompanyCountry4, 
C4.MarketCap AS MarketCap4,
C4.Responsibilities AS CompanyResponsibilities4

FROM            
	(SELECT * FROM 
	dbo.vwDealCompany
	WHERE CompanyRank = 1) AS C1 
		LEFT OUTER JOIN
			(SELECT * FROM 
			dbo.vwDealCompany
			WHERE CompanyRank = 2) AS C2
				ON C1.DealKey = C2.DealKey
		LEFT OUTER JOIN
			(SELECT * FROM 
			dbo.vwDealCompany
			WHERE CompanyRank = 3) AS C3
				ON C1.DealKey = C3.DealKey
		LEFT OUTER JOIN
			(SELECT * FROM 
			dbo.vwDealCompany
			WHERE CompanyRank = 4) AS C4
				ON C1.DealKey = C4.DealKey
	

GO
/****** Object:  View [dbo].[vwTherapeuticModality2_BU_05_25_2021]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwTherapeuticModality2_BU_05_25_2021]
AS 

	
		SELECT TOP 1000 *
		FROM
			(
				(
					SELECT
						TherapeuticModalityKey =
						CASE
							WHEN TM3.TherapeuticModalityName IS NOT NULL THEN TM3.TherapeuticModalityKey
							WHEN TM2.TherapeuticModalityName IS NOT NULL THEN TM2.TherapeuticModalityKey
							WHEN TM1.TherapeuticModalityName IS NOT NULL THEN TM1.TherapeuticModalityKey
						END,
						TM1.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						TM2.TherapeuticModalityName as 'Therapeutic Modality Level 2',
						TM3.TherapeuticModalityName as 'Therapeutic Modality Level 3'
					FROM
						(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM1
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM2
									ON TM1.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM3
									ON TM2.TherapeuticModalityKey = TM3.ParentTherapeuticModalityKey
					WHERE TM1.ModalityLevel = 1
				)
				UNION ALL
				(
					SELECT DISTINCT
						TM.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM
					WHERE TM.ModalityLevel = 1 AND TM.UseInClinical = 1
				)
				UNION ALL
				(
						SELECT DISTINCT
						TM2.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM JOIN DimTherapeuticModality TM2 ON TM.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
					WHERE TM2.ModalityLevel = 2 AND TM2.UseInClinical = 1
				)
			) A

		ORDER BY A.[Therapeutic Modality Level 1], A.[Therapeutic Modality Level 2], A.[Therapeutic Modality Level 3]
		
		
		
	
GO
/****** Object:  View [dbo].[vwTherapeuticModality2_BU_06_29_2021]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   VIEW [dbo].[vwTherapeuticModality2_BU_06_29_2021]
AS 
	
	SELECT TOP 100000 * FROM
			(
				(
					SELECT
						TherapeuticModalityKey =
						CASE
						    WHEN TM4.TherapeuticModalityName IS NOT NULL THEN TM4.TherapeuticModalityKey
							WHEN TM3.TherapeuticModalityName IS NOT NULL THEN TM3.TherapeuticModalityKey
							WHEN TM2.TherapeuticModalityName IS NOT NULL THEN TM2.TherapeuticModalityKey
							WHEN TM1.TherapeuticModalityName IS NOT NULL THEN TM1.TherapeuticModalityKey
						END,
						TM1.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						TM2.TherapeuticModalityName as 'Therapeutic Modality Level 2',
						TM3.TherapeuticModalityName as 'Therapeutic Modality Level 3',
						TM4.TherapeuticModalityName as 'Therapeutic Modality Level 4'
					FROM
						(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM1
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM2
									ON TM1.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM3
									ON TM2.TherapeuticModalityKey = TM3.ParentTherapeuticModalityKey
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM4
									ON TM3.TherapeuticModalityKey = TM4.ParentTherapeuticModalityKey
					WHERE TM1.ModalityLevel = 1
				)
				UNION ALL
				(
					SELECT DISTINCT
						TM.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 4] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM
					WHERE TM.ModalityLevel = 1 AND TM.UseInClinical = 1
				)
				UNION ALL
				(
						SELECT DISTINCT
						TM2.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 4] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM JOIN DimTherapeuticModality TM2 ON TM.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
					WHERE TM2.ModalityLevel = 2 AND TM2.UseInClinical = 1
				)
				UNION ALL
				(
						SELECT DISTINCT
						TM3.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM3.ModalityLevel = 3 THEN TM3.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM3.ModalityLevel = 3 THEN TM3.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 4] =
						CASE
							WHEN TM3.ModalityLevel = 3 THEN TM3.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM JOIN DimTherapeuticModality TM3 ON TM.TherapeuticModalityKey = TM3.ParentTherapeuticModalityKey
					WHERE TM3.ModalityLevel = 3 AND TM3.UseInClinical = 1
				)
			) A

		ORDER BY A.[Therapeutic Modality Level 1], A.[Therapeutic Modality Level 2], A.[Therapeutic Modality Level 3], A.[Therapeutic Modality Level 4]
		
GO
/****** Object:  View [app].[vwFinancingTypeCategory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwFinancingTypeCategory] AS
SELECT DISTINCT [Category] Id, [Category] Name, Null Parent, 'financingtypecategory' Dimension, [Category_SortOrder] SortOrder
FROM DimFinancingType
WHERE [Category] IS NOT NULL
GO
/****** Object:  View [dbo].[vwTechnologyPlatform_PBI]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vwTechnologyPlatform_PBI] AS

SELECT *
		FROM
			(
				(
					SELECT
						TherapeuticModalityKey =
						CASE
							WHEN TM2.TherapeuticModalityName IS NOT NULL THEN TM2.TherapeuticModalityKey
							WHEN TM1.TherapeuticModalityName IS NOT NULL THEN TM1.TherapeuticModalityKey
						END,
						TM1.TherapeuticModalityName as 'Technology Platform Category',
						TM2.TherapeuticModalityName as 'Technology Platform'
					FROM
						(SELECT * FROM DimTherapeuticModality WHERE UseInDeals = 1 AND (UseInClinical = 0 OR TherapeuticModalityKey = 12)) TM1
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInDeals = 1 AND (UseInClinical = 0 OR TherapeuticModalityKey = 12)) TM2
									ON TM1.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
					WHERE TM1.ModalityLevel = 1
				)
				UNION ALL
				(
					SELECT DISTINCT
						TM.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Technology Platform Category',
						[Technology Platform] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM
					WHERE TM.ModalityLevel = 1 AND TM.UseInDeals = 1 AND (UseInClinical = 0 OR TherapeuticModalityKey = 12)
				)
			) A

--ORDER BY A.[Technology Platform Level 1], TherapeuticModalityKey

GO
/****** Object:  View [app].[vwTherapeuticModality]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [app].[vwTherapeuticModality]
AS

SELECT
	TherapeuticModalityKey,
	TherapeuticModalityName,
	TherapeuticModalityID,
	NULL AS ParentID,
	ParentTherapeuticModalityKey,
	ModalityLevel,
	CASE UseInDeals 
		WHEN 1 THEN 'Yes' 
		ELSE 'No' 
		END UseInDeals,
	CASE UseInClinical 
		WHEN 1 THEN 'Yes' 
		ELSE 'No' 
		END UseInClinical,
	SortOrder
FROM dbo.DimTherapeuticModality tm
WHERE tm.TherapeuticModalityKey IN (SELECT DISTINCT tm.TherapeuticModalitykey FROM [dbo].[vwTherapeuticModality] tm)

GO
/****** Object:  View [app].[vwFinancingTypeSubCategory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwFinancingTypeSubCategory] AS
SELECT DISTINCT [SubCategory] Id, [SubCategory] Name, p.Id Parent, 'financingtypesubcategory' Dimension, [SubCategory_SortOrder] SortOrder 
FROM DimFinancingType a inner join app.vwFinancingTypeCategory p on a.[Category] = p.Id
WHERE a.[SubCategory] IS NOT NULL
GO
/****** Object:  Table [app].[LinkifyIgnoreOrigin]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[LinkifyIgnoreOrigin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LinkifyIgnoreOrigin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkifyIgnoreOriginCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkifyIgnoreOriginCompany](
	[LinkifyIgnoreOriginCompany_Key] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwLinkifyOriginTerm]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwLinkifyOriginTerm]
AS
	SELECT data.* FROM 
	(
		SELECT c.CompanyCode AS Id, c.CompanyName AS TermName, c.EncodedCompanyName AS EncodedTermName, 'company' AS TermType FROM [mv].vwCompanyGeneralInfo c
			LEFT JOIN [dbo].[LinkifyIgnoreOriginCompany] i ON i.CompanyName = c.CompanyName
			WHERE i.Name IS NULL
		UNION ALL
		SELECT ProductKey AS Id, p.Name AS TermName, EncodedName AS EncodedTermName, 'product' AS TermType FROM [app].vwDimProduct p 
				LEFT JOIN [app].[LinkifyIgnoreOrigin] i ON i.Name = p.Name AND i.[Type] = 'product'
				WHERE i.Id IS NULL
		UNION ALL
		SELECT MolecularTargetKey AS Id, MolecularTargetName AS TermName, EncodedMolecularTargetName AS EncodedTermName, 'target' AS TermType FROM [app].vwDimMolecularTarget 
		UNION ALL
		SELECT DiseaseCategoryKey AS Id, DiseaseCategoryName AS TermName, EncodedDiseaseCategoryName AS EncodedTermName, 'disease' AS TermType FROM [app].vwDimDiseaseCategory 
		UNION ALL
		SELECT StandardIndicationKey AS Id, StandardIndicationName AS TermName, EncodedStandardIndicationName AS EncodedTermName, 'disease' AS TermType FROM [app].vwDimStandardIndication 
		UNION ALL
		SELECT * FROM [app].[vwLinkifySynonym] 
	) AS data
	--ORDER BY LEN(TermName) DESC

GO
/****** Object:  View [app].[vwFinancingTypeItem]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwFinancingTypeItem] AS
SELECT DISTINCT [FinancingType] Id, [FinancingType] Name, p.Id Parent, 'financingtypeitem' Dimension, [FinancingType_SortOrder] SortOrder 
FROM DimFinancingType a inner join app.vwFinancingTypeSubCategory p on a.[SubCategory] = p.Id
WHERE a.[FinancingType] IS NOT NULL
GO
/****** Object:  View [app].[vwPipelineDiscontinued_summarized]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwPipelineDiscontinued_summarized]
AS
WITH 
ProductToMechanismOfAction
AS (
select ProductKey,
	StandardIndicationName,
	STRING_AGG(CAST(MechanismOfActionName AS nvarchar(max)), '; ') AS MechanismOfActionName
from(
	SELECT distinct
		pl.ProductKey,
		pd.StandardIndicationName,
		moa.MechanismOfActionName AS MechanismOfActionName
	FROM dbo.FactPipeline AS PL
	LEFT OUTER JOIN dbo.DimProductDetail pd
		ON pl.ProductDetailKey = pd.ProductDetailKey
	LEFT OUTER JOIN Product_to_MechanismOfAction pmoa
		ON pmoa.ProductKey = pl.ProductKey 
	LEFT OUTER JOIN dbo.DimMechanismOfAction AS moa
		ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey
	) moa
GROUP BY ProductKey, StandardIndicationName
	)
	, ProductToPartners
	as (
SELECT
	p.productKey,
	p.StandardIndicationName,
	STRING_AGG(p.CompanyName, CHAR(13)+CHAR(10)) WITHIN GROUP (ORDER BY p.CompanyName ASC) AS CompaniesInvolved,
	STRING_AGG(app.fnURL_Strip(p.CompanyName), CHAR(13)+CHAR(10)) WITHIN GROUP (ORDER BY p.CompanyName ASC) AS CompaniesInvolvedEncoded
FROM (SELECT DISTINCT
	l.productKey,
	pd.StandardIndicationName,
	c.CompanyName
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
LEFT JOIN dbo.FactLicense l
	ON l.ProductKey = pl.ProductKey
	AND l.ProductDetailKey = pl.ProductDetailKey
INNER JOIN dbo.DimCompany c
	ON l.InlicenseCompanyKey = c.companyKey) p
GROUP BY	p.productKey,
			p.StandardIndicationName
	)
	, ProductToRegulatoryDesignation
	as (
SELECT
	rd.Productkey,
	rd.StandardIndicationName,
	STRING_AGG(rd.rd, '; ') AS RegulatoryDesignation
FROM (SELECT
DISTINCT
	pl.Productkey,
	pd.StandardIndicationName,
	rd.RegulatoryRegion + ' - ' + rd.RegulatoryDesignation AS rd
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
LEFT JOIN FactRegulatoryDesignation AS rd
	ON pd.ProductDetailKey = rd.ProductDetailKey
) rd
GROUP BY	rd.Productkey,
			rd.StandardIndicationName
),
ProductToMilestone as
(
select
	t.ProductKey,
	t.StandardIndicationName,
	string_agg(t.MilestoneText , '; ') AS MilestoneText,
	MIN(t.StartDate) as [Start Date of Milestone],
	MAX(t.EndDate) as [End Date of Milestone],
	STRING_AGG(t.MilestoneType, '; ') AS MilestoneTypeStr
from 
(SELECT distinct
	pl.ProductKey,
	pd.StandardIndicationName,
	mst.MilestoneText,
	mst.StartDate,
	mst.EndDate,
	DMT.MilestoneType
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
LEFT OUTER JOIN FactMilestone mst
	ON mst.ProductKey = pl.ProductKey
	AND mst.Productdetailkey = pl.ProductDetailKey
LEFT OUTER JOIN DimMilestoneType DMT
	ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
WHERE -- 7/9/18 LL added WHERE clause to filter out past milestones
	mst.MilestoneStatusKey = 1
	AND mst.EndDate >= GETDATE()
) t
group by t.ProductKey,	t.StandardIndicationName
),
ProductToProductDetails as
(
SELECT
	pl.ProductKey,
	pd.StandardIndicationName,
	STRING_AGG(CAST(pd.ProductDetail AS nvarchar(max)), '; ') AS ProductDetails
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
--WHERE pd.IsDiscontinued = 1
GROUP BY pl.ProductKey, pd.StandardIndicationName
),
ClinicalPhaseToPipeline as
(
SELECT	*
FROM (SELECT
	ProductID,
	StandardIndicationName,
	ClinicalPhaseKey,
	ClinicalPhase,
	SubCategory,
	Category,
	RouteOfAdministrationKey,
	RouteOfAdministrationName,
	RANK() OVER (PARTITION BY ProductID, StandardIndicationName ORDER BY ClinicalPhase_SortOrder DESC) AS ClinicalPhaseRank
	--RANK() OVER (PARTITION BY ProductID, StandardIndicationName ORDER BY EventDate DESC) AS ClinicalPhaseRank
FROM (SELECT DISTINCT
	p.ProductID,
	p.StandardIndicationName,
	p.ClinicalPhaseKey,
	p.ClinicalPhase,
	p.SubCategory,
	p.Category,
	p.EventDate,
	p.RouteOfAdministrationKey,
	p.RouteOfAdministrationName,
	clph.ClinicalPhase_SortOrder
FROM dbo.vwPipeline_Ext p
JOIN DimClinicalPhase clph
	ON clph.ClinicalPhaseKey = p.ClinicalPhaseKey) t) t2
WHERE ClinicalPhaseRank = 1 and ProductID is not null
)
/* 7/9/18 LL commented out section below and uncommented section above to fix phase rank bug in ClinicalPhasetoPipeline
(
SELECT DISTINCT
	p.ProductID,
	p.StandardIndicationName,
	p.ClinicalPhaseKey,
	p.ClinicalPhase,
	p.SubCategory,
	p.Category,
	p.EventDate,
--	p.RouteOfAdministrationKey,
--	p.RouteOfAdministrationName,
	clph.ClinicalPhase_SortOrder
FROM dbo.vwPipeline_Ext p
JOIN DimClinicalPhase clph
	ON clph.ClinicalPhaseKey = p.ClinicalPhaseKey
WHERE ProductID is not null
)
*/
,
RouteOfAdministrationToPipeine as
(
SELECT	*
FROM (SELECT
	ProductID,
	StandardIndicationName,
	RouteOfAdministrationKey,
	RouteOfAdministrationName,
	RANK() OVER (PARTITION BY ProductID, StandardIndicationName ORDER BY EventDate DESC) AS ClinicalPhaseRank
FROM (SELECT DISTINCT
	p.ProductID,
	p.StandardIndicationName,
	p.EventDate,
	p.RouteOfAdministrationKey,
	p.RouteOfAdministrationName
FROM dbo.vwPipeline_Ext p) t) t2
WHERE ClinicalPhaseRank = 1 and ProductID is not null
)

SELECT
DISTINCT
	p.ProductKey
	--p.Code
	,p.StandardIndicationName --Standard Indication
	,DimProduct.ProductID
	,si.StandardIndicationKey
	,p.[CompanyName] --Company Name (Originator)
	,[EncodedCompanyName]
	,[CompanyKey]
	,p.[Name] --Product Names
	,[EncodedName]
	,p.[Description]  --Description
	,cp.[ClinicalPhaseKey]
	,cp.[Category]
	,cp.[SubCategory]
	,cp.[ClinicalPhase] --Phase of Development
	--,[ClinicalPhaseKey]
	--,[Category]
	--,[SubCategory]
	--,[ClinicalPhase] --Phase of Development
	,[MolecularTargetName] --Molecular Target
	,[EncodedMolecularTargetName]
	,[MolecularTargetNameFamily]
	,[EncodedMolecularTargetNameFamily]
	,[TherapeuticModalityID]
	,[TherapeuticModalityName]
	,[TherapeuticModalityCategory]
	,[TherapeuticModalitySubcategory]
	,[TherapeuticModalitySubsubcategory] --Therapeutic Modality
	,[LatestClinicalStageKey]
	,[Latest Stage of Development]
	--,[ProductDetailKey] --it was aggregated!!!
	,p.[DiseaseCategory] --Disease Category
	,[EncodedDiseaseCategory]
	,[EncodedStandardIndicationName]
	,ptpd.ProductDetails AS [ProductDetail] --,[ProductDetail] --Indication Details
	--,[Target1] --remove
	--,[EncodedTarget1] --remove
	--,[Target2] --remove
	--,[EncodedTarget2] --remove
	--,[LicenseKey]
	--,[PartnershipTermsKey]
	--,[PartneringStatus]
	--,[InLicensedCompany]
	--,[MilestoneKey]
	,ptm.MilestoneText --,[MilestoneText] --Milestones
	,ptm.[Start Date of Milestone]--,[Start Date of Milestone] --StartDate of Milestones
	,ptm.[End Date of Milestone]--,[End Date of Milestone] --EndDate of Milestones
	--,[MilestoneType] 
	,ptm.MilestoneTypeStr --,[MilestoneTypeStr] --Milestone Type
	,ra.[RouteOfAdministrationKey]
	,ra.[RouteOfAdministrationName]
	--,[MechanismOfActionKey]
	,ptmoa.MechanismOfActionName--,[MechanismOfActionName] -- Mechanism of Action
	,[GeographyKey]
	,[Country] --Country
	,[Lead Product Status] --Lead Product Status
	,[Date of Lead Product Status] --Date of Lead Product Status
	,[Business Category] --Business Category
	,[Exchange] --Exchange 1
	,[Exchange 2] --Exchange 2
	,[State] --State
	,[Region] --Region
	,[SubRegion]
	,[YearFounded] --Year Founded
	,[Type of Last Financing] --Type of Last Financing
	,[Date of Last Financing] --Date of Last Financing
	,[Total Amount Raised] --Total Amount Raised
	,[Market Cap] --Market Cap
	,[Date of Market Cap] --Date of Market Cap
	,[MarketCapTier]
	,[Date of IPO] --Date of IPO
	,[Number of Products (Originated)] --Number of Products (Originated)
	,[CompanyType] --Company Type
	,[CompanyURL] --Website
	,[Ticker] -- Ticker 1
	,[Ticker 2] --Ticker 2
	,[OwnershipStatus]
	,[IsCurrent]
	,[IsFinancier]
	,prd.RegulatoryDesignation --,[RegulatoryDesignation] --Regulatory Designation
	--,[RegulatoryRegion]
	--,[PipelineKey]
	--,[Code]
	,null as [EventDateKey]
	, null as [EventDate]
	,null as [EventStatus]
	,null as [Notes]
	,ProductToPartners.CompaniesInvolved as [PartnerCompanies] --Partners
	,ProductToPartners.CompaniesInvolvedEncoded as [EncodedPartnerCompanies]
	,[Concat_Target]
	,[Concat_LegacyTargetName]
	,DimProduct.ModifiedDate as [LastUpdated]
--FROM dbo.vwPipelineDiscontinued_Ext p
FROM mv.vwPipeline_Ext p
join ClinicalPhaseToPipeline cp 
	on cp.ProductID = p.ProductID and cp.StandardIndicationName = p.StandardIndicationName
left join RouteOfAdministrationToPipeine ra
	on ra.ProductID = p.ProductID and ra.StandardIndicationName = p.StandardIndicationName
LEFT JOIN ProductToMechanismOfAction ptmoa
	ON ptmoa.Productkey = p.Productkey and p.StandardIndicationName = ptmoa.StandardIndicationName
left join ProductToPartners
	on ProductToPartners.ProductKey = p.ProductKey and ProductToPartners.StandardIndicationName = p.StandardIndicationName
left join ProductToRegulatoryDesignation prd
	on p.ProductKey = prd.ProductKey and p.StandardIndicationName = prd.StandardIndicationName
left join ProductToMilestone ptm
	on p.ProductKey = ptm.ProductKey and p.StandardIndicationName = ptm.StandardIndicationName
left join ProductToProductDetails ptpd
	on p.ProductKey = ptpd.ProductKey and p.StandardIndicationName = ptpd.StandardIndicationName
left join DimProduct on p.ProductKey = DimProduct.ProductKey
join DimStandardIndication si on si.StandardIndicationName = p.StandardIndicationName


GO
/****** Object:  Table [app].[FinancingTypeHierarchy_Light]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[FinancingTypeHierarchy_Light](
	[Id] [nvarchar](250) NULL,
	[Parent] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[SortOrder] [int] NULL,
	[Dimension] [varchar](24) NOT NULL,
	[Level] [int] NOT NULL,
	[Selectable] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwFinancingTypeHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [app].[vwFinancingTypeHierarchy] AS
SELECT * FROM [app].[FinancingTypeHierarchy_Light]
GO
/****** Object:  View [app].[vwDealLicensedTerritory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwDealLicensedTerritory]
AS
SELECT      dtg.DealAssetKey, g.Country AS LicensedTerritory
FROM            
	dbo.Deal_to_Geography AS dtg 
		INNER JOIN
			dbo.DimGeography AS g 
				ON dtg.GeographyKey = g.GeographyKey

--where Country in(  'United kingdom', 'Netherlands')

union

SELECT dtg.DealAssetKey, bth.BCBiotechHub AS LicensedTerritory
FROM            
	dbo.Deal_to_Geography AS dtg 
		INNER JOIN
(
select * from DimBCBiotechHub t where 
not exists (select null from dbo.DimGeography g where g.Country = t.BCBiotechHub)
and t.GeographyKey in (
select GeographyKey from DimBCBiotechHub
group by GeographyKey
having COUNT(*) = 1)
) bth on dtg.GeographyKey = bth.GeographyKey


GO
/****** Object:  Table [dbo].[FactDealEvent]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactDealEvent](
	[DealEventKey] [int] NOT NULL,
	[DealID] [int] NULL,
	[DealKey] [int] NULL,
	[EventID] [int] NULL,
	[DealEventTypeKey] [int] NOT NULL,
	[EventDescription] [nvarchar](max) NULL,
	[EventDate] [date] NULL,
	[EventDateKey] [int] NOT NULL,
	[PublicationDate] [date] NULL,
	[PublicationDateKey] [int] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDealDateOfLatestEvent]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [dbo].[vwDealDateOfLatestEvent]
CREATE VIEW [dbo].[vwDealDateOfLatestEvent]
AS 

SELECT  dbo.FactDeals.DealKey ,
        MAX(dbo.FactDealEvent.EventDate) AS DateOfLatestEvent
FROM    
	dbo.FactDealEvent
        INNER JOIN 
			dbo.FactDeals 
				ON dbo.FactDealEvent.DealKey = dbo.FactDeals.DealKey
GROUP BY dbo.FactDeals.DealKey;

GO
/****** Object:  View [app].[vwPipeline]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwPipeline]
AS 
WITH PMT
AS (
SELECT 
		ProductKey, 
		PMT.MolecularTargetKey, 
		CAST(MT.LegacyTargetName AS NVARCHAR(255)) AS MolecularTargetName,
		CAST(MT.MolecularTargetFamily_Name AS NVARCHAR(255)) AS MolecularTargetFamily_Name,
		--MT.MolecularTargetFamily_Name,
		ROW_NUMBER() OVER(PARTITION BY ProductKey ORDER BY PMT.MolecularTargetKey ASC) AS rn
	FROM 
		dbo.Product_to_MolecularTarget PMT
			INNER JOIN
					dbo.DimMolecularTarget MT     
					ON MT.MolecularTargetKey = PMT.MolecularTargetKey
					)

SELECT 
	CO.CompanyName,
	app.fnURL_Strip(CO.CompanyName) as EncodedCompanyName,
	CO.CompanyKey,
	--CO.IsCurrent AS Expr1, 
	P.ProductKey,
	P.[Name],
	app.fnURL_Strip(P.[Name]) as EncodedName,
	P.Description,
	DS.ClinicalPhaseKey,
	DS.Category,
	DS.SubCategory,
	DS.ClinicalPhase,
	PMT1.MolecularTargetName,
	app.fnURL_Strip(PMT1.MolecularTargetName) as EncodedMolecularTargetName,
	PMT1.MolecularTargetFamily_Name AS [MolecularTargetNameFamily],
    app.fnURL_Strip(PMT1.MolecularTargetFamily_Name) as [EncodedMolecularTargetNameFamily],
	------ CP.CompanyName AS Partners,
	------CP.IsCurrent, 
	TM.TherapeuticModalityID,
	TM.TherapeuticModalityKey,
	CAST(TM.TherapeuticModalityName AS NVARCHAR(255)) AS TherapeuticModalityName,
	CAST(vtm.[Therapeutic Modality 1] AS NVARCHAR(255)) as TherapeuticModalityCategory,
	CAST(vtm.[Therapeutic Modality 2] AS NVARCHAR(255)) as TherapeuticModalitySubcategory,
	CAST(vtm.[Therapeutic Modality 3] AS NVARCHAR(255)) as TherapeuticModalitySubsubcategory,
	Clp.ClinicalPhaseKey AS LatestClinicalStageKey,
	ClP.ClinicalPhase AS [Latest Stage of Development],
	pd.ProductDetailKey,
	pd.DiseaseCategory,
	app.fnURL_Strip(pd.DiseaseCategory) as EncodedDiseaseCategory,
	pd.StandardIndicationName,
	app.fnURL_Strip(pd.StandardIndicationName) as [EncodedStandardIndicationName],
	pd.ProductDetail,	 
	CAST(pmt1.MolecularTargetName AS NVARCHAR(255)) AS  Target1,	 
	app.fnURL_Strip(pmt1.MolecularTargetName) AS EncodedTarget1,
	CAST(pmt2.MolecularTargetName AS NVARCHAR(255)) AS Target2,
	app.fnURL_Strip(pmt2.MolecularTargetName) AS EncodedTarget2,
	l.LicenseKey,	   
	COALESCE(pt.PartnershipTermsKey, -1) PartnershipTermsKey,
	COALESCE(CAST(pt.PartnershipTerms AS NVARCHAR(255)), 'unpartnered') [PartneringStatus],
	InLicenseCo.CompanyName AS InLicensedCompany,
	mst.MilestoneKey,
	CAST(DMT.MilestoneType AS NVARCHAR(255)) AS MilestoneType,
	mst.MilestoneText,
	mst.StartDate AS [Start Date of Milestone],
	mst.EndDate AS [End Date of Milestone],
	mst.MilestoneTypeKey AS MilestoneTypeKey,
	COALESCE(roa.RouteOfAdministrationKey, -1) RouteOfAdministrationKey,
	COALESCE(CAST(roa.RouteOfAdministrationName AS NVARCHAR(255)), 'NA') RouteOfAdministrationName,	 
	moa.MechanismOfActionKey,
	CAST(moa.MechanismOfActionName AS NVARCHAR(255)) AS MechanismOfActionName,
	COGeneralInfo.GeographyKey,
	COGeneralInfo.Country,
	COGeneralInfo.[Lead Product Status],
	COGeneralInfo.[Date of Lead Product Status],
	COGeneralInfo.[Business Category],
	COGeneralInfo.Exchange,
	COGeneralInfo.[Exchange 2],
	COGeneralInfo.State,
	COGeneralInfo.Region,
	COGeneralInfo.SubRegion,
	COGeneralInfo.YearFounded,
	COGeneralInfo.[Type of Last Financing],
	COGeneralInfo.[Date of Last Financing],
	COGeneralInfo.[Total Amount Raised],
	COGeneralInfo.[Market Cap],
	COGeneralInfo.[Date of Market Cap],
	COGeneralInfo.[MarketCapTier],
	COGeneralInfo.[Date of IPO],
	COGeneralInfo.[Number of Products (Originated)],
	COGeneralInfo.CompanyType,
	COGeneralInfo.[4-Year CAGR of EPS],
	COGeneralInfo.CompanyURL,
	COGeneralInfo.Ticker,
	COGeneralInfo.[Ticker 2],
	COGeneralInfo.OwnershipStatus,
	COGeneralInfo.IsCurrent,
	COGeneralInfo.IsFinancier,
	rd.RegulatoryDesignation,
	rd.RegulatoryRegion,
	pl.PipelineKey,
	PL.Code,
	pl.EventDateKey,
	pl.EventDate,
	pl.EventStatus,
	pl.Notes,
	pl.PhaseOfDevelopmentKey,
	vwPP.CompaniesInvolved AS PartnerCompanies,
	vwPPEncoded.CompaniesInvolved AS EncodedPartnerCompanies,
	vwPT.Concat_Target,
	LI.PartnerCompanyName, 
	LI.PartnerCompanyKey, 
	LI.Role,
	pc.IsCurrent as [PartnerCompanyIsCurrent]
 
FROM  
	dbo.FactPipeline AS PL
	    LEFT OUTER JOIN
            dbo.DimProductDetail pd
                ON pl.ProductDetailKey = pd.ProductDetailKey
        LEFT OUTER JOIN
            dbo.DimProduct AS P            
                ON P.ProductKey = PL.ProductKey
		LEFT OUTER JOIN
            PMT PMT1
                ON P.ProductKey = PMT1.ProductKey
				AND PMT1.Rn=1
		LEFT OUTER JOIN
            PMT PMT2
                ON P.ProductKey = PMT2.ProductKey
				AND PMT2.Rn=2
				 LEFT OUTER JOIN
            dbo.DimTherapeuticModality AS TM
        LEFT OUTER JOIN
            dbo.Product_to_TherapeuticModality AS PTM
                ON TM.TherapeuticModalityKey = PTM.TherapeuticModalityKey
				ON P.ProductKey = PTM.ProductKey			
        LEFT JOIN --added by Oleksiy N-ko, Bug 5649: "Therapeutic Modality": Incorrect behavior in grids when items related to 3rd level are checked
			[dbo].[vwTherapeuticModality] vtm 
				ON vtm.TherapeuticModalityKey = PTM.TherapeuticModalityKey
		LEFT OUTER JOIN
            dbo.DimCompany AS CO
                ON P.OriginatorCompanyKey = CO.CompanyKey
        LEFT OUTER JOIN
		  mv.vwCompanyGeneralInfo AS COGeneralInfo
			ON Co.CompanyKey = COGeneralInfo.CompanyKey
		LEFT OUTER JOIN           
			DimClinicalPhase ClP
				ON CO.LeadProductStatusKey=ClP.ClinicalPhaseKey
		LEFT OUTER JOIN 
			FactLicense l 
				ON l.ProductKey = pl.ProductKey 
				AND l.Productdetailkey = pl.ProductDetailKey
		LEFT OUTER JOIN
			DimPartnershipTerms pt 
				ON pt.PartnershipTermsKey = l.PartnershipTermsKey
		LEFT OUTER JOIN
			FactMilestone mst 
				ON mst.ProductKey = pl.ProductKey 
				AND mst.Productdetailkey = pl.ProductDetailKey
				--***
				LEFT OUTER JOIN 
				DimMilestoneType DMT
				ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
		LEFT OUTER JOIN
            DimRouteOfAdministration roa
                ON roa.RouteOfAdministrationKey = PL.RouteOfAdministrationKey
		LEFT OUTER JOIN
				Product_to_MechanismOfAction pmoa
					ON pmoa.ProductKey = pl.ProductKey 
		LEFT OUTER JOIN
				dbo.DimMechanismOfAction AS moa
					ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey			 
	    LEFT OUTER JOIN
				DimCompany AS InLicenseCo
				ON L.InLicenseCompanyKey = InLicenseCo.CompanyKey
		LEFT OUTER JOIN
				FactRegulatoryDesignation AS RD 
				ON pd.ProductDetailKey = rd.ProductDetailKey
		LEFT OUTER JOIN
            dbo.DimClinicalPhase AS DS
                ON PL.PhaseOfDevelopmentKey = DS.ClinicalPhaseKey
		-- added SJN 09-20-2017 per Lam & David
		LEFT OUTER JOIN 
			dbo.vwConcatPartnersForProduct AS vwPP
				ON PL.productkey = vwPP.ProductKey AND PL.ProductDetailKey = vwPP.ProductDetailKey
		LEFT OUTER JOIN 
			[app].[vwConcatPartnersForProductEncoded] AS vwPPEncoded
				ON PL.productkey = vwPPEncoded.ProductKey AND PL.ProductDetailKey = vwPPEncoded.ProductDetailKey
		LEFT OUTER JOIN 
			dbo.vwConcatProductTarget AS vwPT
				ON PL.productkey = vwPT.ProductKey
		LEFT OUTER JOIN 
				dbo.DimCompany AS PC 
					ON L.InLicenseCompanyKey = PC.CompanyKey	
		LEFT OUTER JOIN 
				vwProductLicense LI
					ON PL.ProductKey = LI.ProductKey 
					AND PL.ProductDetailKey = LI.ProductDetailKey
		--join DimCompany pc on pc.CompanyKey = LI.PartnerCompanyKey
GO
/****** Object:  View [app].[vwBiotechHubToRegion]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwBiotechHubToRegion]
AS

WITH region
AS (SELECT
	t.*,
	COALESCE(t4.[Name], t3.[Name]) AS Region
FROM app.DimGeographyTree t
LEFT JOIN app.DimGeographyTree t2
	ON t.Parent = t2.Id
LEFT JOIN app.DimGeographyTree t3
	ON t2.Parent = t3.Id
LEFT JOIN app.DimGeographyTree t4
	ON t3.Parent = t4.Id
WHERE t.Dimension IN ('country', 'BcBiotechHub'))
SELECT
	bh.BCBiotechHubKey,
	bh.BCBiotechHub,
	bh.GeographyKey,
	region.Id,
	region.Region
FROM DimBCBiotechHub bh
JOIN region
	ON region.[Name] = bh.BCBiotechHub

GO
/****** Object:  View [app].[vwClinicalPhaseCategory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwClinicalPhaseCategory] AS
SELECT	DISTINCT RTRIM(LTRIM(c.[Category])) Id,  RTRIM(LTRIM(c.[Category])) Name, null Parent, 'clinicalphasecategory' Dimension, c.[Category_SortOrder] SortOrder, c.[Use_in_Phase_of_Development], c.[Use_in_Lead_Product_Status]
FROM dbo.DimClinicalPhase c
WHERE c.[Category] IS NOT NULL
GO
/****** Object:  View [app].[vwClinicalPhaseSubCategory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwClinicalPhaseSubCategory] AS
SELECT	DISTINCT RTRIM(LTRIM(c.[SubCategory])) Id, RTRIM(LTRIM(c.[SubCategory])) Name, p.Id Parent, 'clinicalphasesubcategory' Dimension, c.[SubCategory_SortOrder] SortOrder, c.[Use_in_Phase_of_Development], c.[Use_in_Lead_Product_Status]
FROM dbo.DimClinicalPhase c INNER JOIN app.vwClinicalPhaseCategory p ON RTRIM(LTRIM(c.[Category])) = p.Id
WHERE c.[SubCategory] IS NOT NULL
GO
/****** Object:  View [app].[vwClinicalPhaseItem]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwClinicalPhaseItem] AS
SELECT	DISTINCT RTRIM(LTRIM(c.[ClinicalPhase])) Id, RTRIM(LTRIM(c.[ClinicalPhase])) Name, p.Id Parent, 'clinicalphaseitem' Dimension, c.[ClinicalPhase_SortOrder] SortOrder, c.[Use_in_Phase_of_Development], c.[Use_in_Lead_Product_Status]
FROM dbo.DimClinicalPhase c INNER JOIN app.vwClinicalPhaseSubCategory p ON RTRIM(LTRIM(c.[SubCategory])) = p.Id
WHERE c.[ClinicalPhase] IS NOT NULL
GO
/****** Object:  View [app].[vwClinicalPhaseHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwClinicalPhaseHierarchy] AS
SELECT Id, Name, CONVERT(NVARCHAR(256), Parent) Parent, SortOrder, Dimension, 1 [Level], convert(bit, 'True') Selectable, [Use_in_Phase_of_Development], [Use_in_Lead_Product_Status]
FROM app.vwClinicalPhaseCategory
UNION ALL
SELECT Id, Name, Parent, SortOrder, Dimension, 2 [Level], convert(bit, 'True') Selectable, [Use_in_Phase_of_Development], [Use_in_Lead_Product_Status]
FROM app.vwClinicalPhaseSubCategory
UNION ALL
SELECT Id, Name, Parent, SortOrder, Dimension, 3 [Level], convert(bit, 'True') Selectable, [Use_in_Phase_of_Development], [Use_in_Lead_Product_Status]
FROM app.vwClinicalPhaseItem
GO
/****** Object:  View [app].[vwClinicalPhaseCategory_v2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwClinicalPhaseCategory_v2] AS
SELECT	DISTINCT RTRIM(LTRIM(c.[Category])) Id,  RTRIM(LTRIM(c.[Category])) Name, null Parent, 'clinicalphasecategory' Dimension, c.[Category_SortOrder] SortOrder, c.[Use_in_Phase_of_Development], c.[Use_in_Lead_Product_Status]
FROM app.DimClinicalPhase c
WHERE c.[Category] IS NOT NULL
GO
/****** Object:  View [app].[vwClinicalPhaseSubCategory_v2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwClinicalPhaseSubCategory_v2] AS
SELECT	DISTINCT RTRIM(LTRIM(c.[SubCategory])) Id, RTRIM(LTRIM(c.[SubCategory])) Name, p.Id Parent, 'clinicalphasesubcategory' Dimension, c.[SubCategory_SortOrder] SortOrder, c.[Use_in_Phase_of_Development], c.[Use_in_Lead_Product_Status]
FROM app.DimClinicalPhase c INNER JOIN app.vwClinicalPhaseCategory_v2 p ON RTRIM(LTRIM(c.[Category])) = p.Id
WHERE c.[SubCategory] IS NOT NULL
GO
/****** Object:  View [app].[vwClinicalPhaseItem_v2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwClinicalPhaseItem_v2] AS
SELECT	DISTINCT RTRIM(LTRIM(c.[ClinicalPhase])) Id, RTRIM(LTRIM(c.[ClinicalPhase])) Name, p.Id Parent, 'clinicalphaseitem' Dimension, c.[ClinicalPhase_SortOrder] SortOrder, c.[Use_in_Phase_of_Development], c.[Use_in_Lead_Product_Status]
FROM app.DimClinicalPhase c INNER JOIN app.vwClinicalPhaseSubCategory_v2 p ON RTRIM(LTRIM(c.[SubCategory])) = p.Id
WHERE c.[ClinicalPhase] IS NOT NULL
GO
/****** Object:  View [app].[vwClinicalPhaseHierarchy_v2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [app].[vwClinicalPhaseHierarchy_v2] AS
SELECT Id, Name, CONVERT(NVARCHAR(256), Parent) Parent, SortOrder, Dimension, 1 [Level], convert(bit, 'True') Selectable, [Use_in_Phase_of_Development], [Use_in_Lead_Product_Status]
FROM app.vwClinicalPhaseCategory_v2 --++
UNION ALL
SELECT Id, Name, Parent, SortOrder, Dimension, 2 [Level], convert(bit, 'True') Selectable, [Use_in_Phase_of_Development], [Use_in_Lead_Product_Status]
FROM app.vwClinicalPhaseSubCategory_v2 --++
UNION ALL
SELECT Id, Name, Parent, SortOrder, Dimension, 3 [Level], convert(bit, 'True') Selectable, [Use_in_Phase_of_Development], [Use_in_Lead_Product_Status]
FROM app.vwClinicalPhaseItem_v2 --++
;
GO
/****** Object:  Table [dbo].[StockFundamentals]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockFundamentals](
	[Code] [int] NOT NULL,
	[Company_Code] [int] NULL,
	[Company_Name] [nvarchar](250) NULL,
	[Currency] [nvarchar](50) NULL,
	[StockTicker_Code] [int] NULL,
	[StockTicker_Name] [nvarchar](250) NULL,
	[HighPriceLast52Weeks] [money] NULL,
	[LowPriceLast52Weeks] [money] NULL,
	[LatestCloseAsPercentOf52WeekHigh] [float] NULL,
	[LatestCloseAsPercentOf52WeekLow] [float] NULL,
	[PercentPriceChangeYTD] [float] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[AsOfDate] [date] NULL,
	[RequestDate] [date] NULL,
 CONSTRAINT [PK__StockFun__A25C5AA60F2219C3] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwStock]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--DROP VIEW [dbo].[vwStock]
CREATE VIEW [dbo].[vwStock]
AS

SELECT
	S.*,
	C.UniversalCurrencyAbbr + CAST(S.LastSharePrice as varchar) as 'LastSharePriceCurrency',
	CAST(S.Volume as decimal)/1000000 as 'Volume_M',
	MC.MarketCap_USD, 
	MC.MarketCap_USD/1000000 as 'MarketCap_USD_M',
	S.PercentChangeFromLastClose/100 AS PercentChange,
	C.CurrencyAbbr AS CurrencySymbol,
	C.UniversalCurrencyAbbr,
	CASE
		WHEN MarketCap_USD >= 50000000000 THEN 'Tier VIII $50B+'
		WHEN MarketCap_USD >= 10000000000 THEN 'Tier VII $10B-50B'
		WHEN MarketCap_USD >= 5000000000 THEN 'Tier VI $5B-10B'
		WHEN MarketCap_USD >= 1000000000 THEN 'Tier V $1B-5B'
		WHEN MarketCap_USD >= 500000000 THEN 'Tier IV $500M-1B'
		WHEN MarketCap_USD >= 250000000 THEN 'Tier III $250M-500M'
		WHEN MarketCap_USD >= 100000000 THEN 'Tier II $100M-250M'
		WHEN MarketCap_USD >= 0 THEN 'Tier I $0-100M'
		ELSE 'Not Available'
	END as 'MarketCapTier',
	SF.Currency as 'Currency_StockFundamentals',
	SF.HighPriceLast52Weeks,
	SF.LowPriceLast52Weeks,
	CAST(SF.LowPriceLast52Weeks as varchar) + ' - ' + CAST(SF.HighPriceLast52Weeks as varchar) as '52wkRange',
	SF.Currency + CAST(SF.LowPriceLast52Weeks as varchar) + ' - ' + CAST(SF.HighPriceLast52Weeks as varchar) as '52wkRangeCurrency',
	(SF.LatestCloseAsPercentOf52WeekHigh - 100)/100 as 'PercentChangeFrom52WeekHigh',
	(SF.LatestCloseAsPercentOf52WeekLow - 100)/100 as 'PercentChangeFrom52WeekLow',
	PercentPriceChangeYTD/100 as 'PercentPriceChangeYTD'
FROM
	FactStock S
		LEFT JOIN
			dbo.FactMarketCap MC
				ON S.StockTickerKey = MC.StockTickerKey
				AND S.TradeDateKey = MC.ValueDateKey
		INNER JOIN
			dbo.DimCurrency C
				ON S.CurrencyKey = C.CurrencyKey
		LEFT JOIN
			dbo.StockFundamentals SF
				ON MC.StockTickerKey = SF.StockTicker_Code
				AND S.TradeDate = SF.RequestDate

GO
/****** Object:  View [app].[vwLinkifyTerm]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [app].[vwLinkifyTerm]
AS
	SELECT * FROM [app].[vwLinkifyOriginTerm]
	UNION ALL
	SELECT [Id], REPLACE([TermName], '&', '&amp;') AS [TermName], [EncodedTermName], [TermType]
	FROM [app].[vwLinkifyOriginTerm]
	where [TermName] LIKE '%&%' AND [TermName] NOT LIKE '%&#%' AND [TermName] NOT LIKE '%&amp;%'


GO
/****** Object:  View [app].[vwAssetTypeHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwAssetTypeHierarchy]
AS

WITH AssetClass
AS (SELECT
	CONVERT(nvarchar(50), t.[Name]) AS Id,
	NULL AS Parent,
	t.[Name],
	'assetclass' AS Dimension,
	t.SortOrder,
	1 AS [Level],
	CONVERT(bit, 'True') AS [Selectable]
FROM (SELECT
	t.AssetClass AS [Name],
	MIN(t.AssetTypeKey) AS SortOrder
FROM DimAssetType t
GROUP BY t.AssetClass) t)

SELECT
	*
FROM AssetClass
UNION
SELECT
	CONVERT(nvarchar(50), t.AssetTypeKey) AS Id,
	c.[Name] AS Parent,
	t.AssetType AS [Name],
	'assettype' AS Dimension,
	t.AssetTypeKey AS SortOrder,
	2 AS [Level],
	CONVERT(bit, 'True') AS [Selectable]
FROM AssetClass c
JOIN DimAssetType t
	ON t.AssetClass = c.[Name]

GO
/****** Object:  Table [dbo].[DailyResults]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyResults](
	[ID] [int] NOT NULL,
	[DownloadDate] [date] NULL,
	[BC100Price] [money] NULL,
	[BC100Volume] [int] NULL,
	[NumberOfGainers] [smallint] NULL,
	[NumberOfDecliners] [smallint] NULL,
	[BC100Index] [float] NULL,
	[BC100Multiplier] [float] NULL,
 CONSTRAINT [DailyResults_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDailyResults]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDailyResults] AS

SELECT D.*, V.WeekEnded, I.FridayChange, I.FridayPercentChange, V.WeeklyVolume, V.WeeklyVolumeChange, V.WeeklyVolumePercentChange
FROM
	dbo.DailyResults D
		LEFT JOIN
			(
				SELECT B.ID, B.DownloadDate, B.BC100Index, --B.BC100Volume,
					--B2.ID, B2.DownloadDate, B2.BC100Index, B2.BC100Volume,
					B.BC100Index - B2.BC100Index as 'FridayChange',
					B.BC100Index/NULLIF(B2.BC100Index,0)-1 as 'FridayPercentChange'
				FROM dbo.DailyResults B
						JOIN
							DimDate D
								ON B.DownloadDate = D.FullDateUSA
						JOIN
							dbo.DailyResults B2
								ON B.DownloadDate = DATEADD(DAY, 7, B2.DownloadDate)
				WHERE
					D.DayName = 'Friday'
				--ORDER BY B.DownloadDate desc
			) I
				ON D.DownloadDate = I.DownloadDate
		LEFT JOIN
			(
				SELECT C.*,
					C.WeeklyVolume-P.WeeklyVolume as 'WeeklyVolumeChange',
					C.WeeklyVolume/NULLIF(P.WeeklyVolume,0) - 1 as 'WeeklyVolumePercentChange'
				FROM
					(
						SELECT MAX(B.DownloadDate) as 'WeekEnded', SUM(CONVERT(float,BC100Volume)) as 'WeeklyVolume'
						FROM dbo.DailyResults B
								JOIN
									DimDate D
										ON B.DownloadDate = D.FullDateUSA
						GROUP BY Year, WeekOfYear
					) C
						JOIN
							(
								SELECT MAX(B.DownloadDate) as 'WeekEnded', SUM(CONVERT(float,BC100Volume)) as 'WeeklyVolume'
								FROM dbo.DailyResults B
										JOIN
											DimDate D
												ON B.DownloadDate = D.FullDateUSA
								GROUP BY Year, WeekOfYear
							) P
								ON C.WeekEnded = DATEADD(DAY, 7, P.WeekEnded)
				--ORDER BY C.WeekEnded desc
			) V
				ON I.DownloadDate = V.WeekEnded

GO
/****** Object:  View [app].[vwBusinessTypeHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwBusinessTypeHierarchy] AS

select 
t.BusinessClass Id, 
t.BusinessClass [Name], 
null as Parent, 
'businessclass' as Dimension, 
CONVERT(int, ROW_NUMBER() OVER (ORDER BY t.BusinessClass)) as SortOrder, 
1 [Level],
convert(bit, 'True') Selectable
from 
(select distinct bt.BusinessClass from DimBusinessType bt where bt.BusinessTypeKey != -1 )t

union

select distinct 
bt.BusinessType [Id],
bt.BusinessType [Name],
bt.BusinessClass [Parent],
'businesstype' Dimension,
CONVERT(int, ROW_NUMBER() OVER (ORDER BY bt.BusinessType)) as SortOrder, 
2 [Level],
convert(bit, 'True') Selectable
from DimBusinessType bt 
where bt.BusinessTypeKey != -1 

GO
/****** Object:  View [app].[vwCompanyBusinessType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwCompanyBusinessType]
AS

SELECT
	cbt.CompanyBusinessTypeKey,
	cbt.CompanyKey,
	bt.BusinessTypeKey,
	bt.BusinessType,
	bt.BusinessClass
FROM dbo.Company_to_BusinessType AS cbt
INNER JOIN dbo.DimBusinessType AS bt
	ON cbt.BusinessTypeKey = bt.BusinessTypeKey
GO
/****** Object:  View [dbo].[vwPipelineDiscontinued_Ext]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwPipelineDiscontinued_Ext]
AS
SELECT 
      [CompanyName]
      ,[EncodedCompanyName]
      ,[CompanyKey]
      ,[IsDiscontinued]
      ,[ProductKey]
      ,[ProductId]
      ,[Name]
      ,[EncodedName]
      ,[Description]
      ,[ClinicalPhaseKey]
      ,[Category]
      ,[SubCategory]
      ,[ClinicalPhase]
      ,[MolecularTargetName]
      ,[EncodedMolecularTargetName]
      ,[MolecularTargetNameFamily]
      ,[EncodedMolecularTargetNameFamily]
      ,[TherapeuticModalityID]
      ,[TherapeuticModalityName]
      ,[TherapeuticModalityCategory]
      ,[TherapeuticModalitySubcategory]
      ,[TherapeuticModalitySubsubcategory]
      ,[LatestClinicalStageKey]
      ,[Latest Stage of Development]
      ,[ProductDetailKey]
      ,[DiseaseCategory]
      ,[EncodedDiseaseCategory]
      ,[StandardIndicationName]
      ,[EncodedStandardIndicationName]
      ,[ProductDetail]
      ,[Target1]
      ,[EncodedTarget1]
      ,[Target2]
      ,[EncodedTarget2]
      ,[LicenseKey]
      ,[PartnershipTermsKey]
      ,[PartneringStatus]
      ,[InLicensedCompany]
      ,[MilestoneKey]
      ,[MilestoneText]
      ,[Start Date of Milestone]
      ,[End Date of Milestone]
      ,[MilestoneType]
      ,[MilestoneTypeStr]
      ,[RouteOfAdministrationKey]
      ,[RouteOfAdministrationName]
      ,[MechanismOfActionKey]
      ,[MechanismOfActionName]
      ,[GeographyKey]
      ,[Country]
      ,[Lead Product Status]
      ,[Date of Lead Product Status]
      ,[Business Category]
      ,[Exchange]
      ,[Exchange 2]
      ,[State]
      ,[Region]
      ,[SubRegion]
      ,[YearFounded]
      ,[Type of Last Financing]
      ,[Date of Last Financing]
      ,[Total Amount Raised]
      ,[Market Cap]
      ,[Date of Market Cap]
      ,[MarketCapTier]
      ,[Date of IPO]
      ,[Number of Products (Originated)]
      ,[CompanyType]
      ,[4-Year CAGR of EPS]
      ,[CompanyURL]
      ,[Ticker]
      ,[Ticker 2]
      ,[OwnershipStatus]
      ,[IsCurrent]
      ,[IsFinancier]
      ,[RegulatoryDesignation]
      ,[RegulatoryRegion]
      ,[PipelineKey]
      ,[Code]
      ,[EventDateKey]
      ,[EventDate]
      ,[EventStatus]
      ,[Notes]
      ,[PhaseOfDevelopmentKey]
      ,[PartnerCompanies]
      ,[EncodedPartnerCompanies]
      ,[Concat_Target]
      ,[Concat_LegacyTargetName]
      ,[PartnerCompanyName]
      ,[PartnerCompanyKey]
      ,[Role]
      ,[PartnerCompanyIsCurrent]
FROM [mv].[vwPipeline_Ext] p

GO
/****** Object:  Table [app].[BrandSectionSearchTerms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BrandSectionSearchTerms](
	[Id] [int] NOT NULL,
	[ParentId] [int] NULL,
	[TermName] [nvarchar](255) NOT NULL,
	[Weight] [int] NOT NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_app.BrandSectionSearchTerms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwBrandSectionSearchTerms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [app].[vwBrandSectionSearchTerms]
as
SELECT Id, ParentId, TermName, [Weight]
from [app].[BrandSectionSearchTerms]
where Visible = 1
GO
/****** Object:  View [dbo].[vwTherapeuticModality2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE   VIEW [dbo].[vwTherapeuticModality2]
AS 
SELECT TOP 100000 * FROM
			(
				(
					SELECT
						TherapeuticModalityKey =
						CASE
						    WHEN TM4.TherapeuticModalityName IS NOT NULL THEN TM4.TherapeuticModalityKey
							WHEN TM3.TherapeuticModalityName IS NOT NULL THEN TM3.TherapeuticModalityKey
							WHEN TM2.TherapeuticModalityName IS NOT NULL THEN TM2.TherapeuticModalityKey
							WHEN TM1.TherapeuticModalityName IS NOT NULL THEN TM1.TherapeuticModalityKey
						END,
						TM1.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						TM2.TherapeuticModalityName as 'Therapeutic Modality Level 2',
						TM3.TherapeuticModalityName as 'Therapeutic Modality Level 3',
						TM4.TherapeuticModalityName as 'Therapeutic Modality Level 4'
					FROM
						(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM1
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM2
									ON TM1.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM3
									ON TM2.TherapeuticModalityKey = TM3.ParentTherapeuticModalityKey
							JOIN
								(SELECT * FROM DimTherapeuticModality WHERE UseInClinical = 1) TM4
									ON TM3.TherapeuticModalityKey = TM4.ParentTherapeuticModalityKey
					WHERE TM1.ModalityLevel = 1
				) -- Only 4th level therapeutic modalities
				UNION ALL
				(
					SELECT DISTINCT
						TM.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 4] =
						CASE
							WHEN TM.ModalityLevel = 1 THEN TM.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM
					WHERE TM.ModalityLevel = 1 AND TM.UseInClinical = 1
				) -- Highest level parent category
				UNION ALL
				(
						SELECT DISTINCT
						TM2.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 4] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM JOIN DimTherapeuticModality TM2 ON TM.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
					WHERE TM2.ModalityLevel = 2 AND TM2.UseInClinical = 1
				) -- Level 2
				UNION ALL
				(
						SELECT DISTINCT
						TM3.TherapeuticModalityKey,
						TM.TherapeuticModalityName as 'Therapeutic Modality Level 1',
						[Therapeutic Modality Level 2] =
						CASE
							WHEN TM2.ModalityLevel = 2 THEN TM2.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 3] =
						CASE
							WHEN TM3.ModalityLevel = 3 THEN TM3.TherapeuticModalityName
							ELSE 'NULL'
						END,
						[Therapeutic Modality Level 4] =
						CASE
							WHEN TM3.ModalityLevel = 3 THEN TM3.TherapeuticModalityName
							ELSE 'NULL'
						END
					FROM DimTherapeuticModality TM JOIN DimTherapeuticModality TM2 ON TM.TherapeuticModalityKey = TM2.ParentTherapeuticModalityKey
													JOIN DimTherapeuticModality TM3 ON TM2.TherapeuticModalityKey = TM3.ParentTherapeuticModalityKey
					WHERE TM3.ModalityLevel = 3 AND TM3.UseInClinical = 1
				)
			) A
		ORDER BY A.[Therapeutic Modality Level 1], A.[Therapeutic Modality Level 2], A.[Therapeutic Modality Level 3], A.[Therapeutic Modality Level 4]
		

GO
/****** Object:  Table [mv].[vwFinancing]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwFinancing](
	[FinancingKey] [int] NOT NULL,
	[CompanyKey] [int] NOT NULL,
	[Code] [int] NULL,
	[FinancingID] [bigint] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[GeographyKey] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[YearFounded] [int] NULL,
	[FinancingType] [nvarchar](250) NULL,
	[FinancingTypeCategory] [nvarchar](250) NULL,
	[FinancingTypeSubCategory] [nvarchar](250) NULL,
	[FinancingTypeKey] [int] NOT NULL,
	[DateCompleted] [date] NULL,
	[YearQtr] [nvarchar](16) NULL,
	[AmountRaised] [money] NULL,
	[Total Amount Raised] [money] NULL,
	[SharePrice] [money] NULL,
	[SharesSold] [bigint] NULL,
	[Completed] [varchar](250) NULL,
	[ComplComments] [varchar](60) NULL,
	[Financiers] [nvarchar](4000) NULL,
	[Investors] [nvarchar](4000) NULL,
	[Underwriters] [nvarchar](4000) NULL,
	[FilingPrice] [varchar](150) NULL,
	[DateFiled] [date] NULL,
	[Overallotment] [varchar](60) NULL,
	[SharesOutstanding] [bigint] NULL,
	[SharePriceOrigCurrency] [decimal](18, 4) NULL,
	[Post-Money Valuation] [money] NULL,
	[Pre-Money Valuation] [money] NULL,
	[SharesProposed] [bigint] NULL,
	[Note] [nvarchar](max) NULL,
	[Rate] [money] NULL,
	[CurrencyAbbr] [varchar](25) NULL,
	[ClinicalPhaseCategory] [nvarchar](250) NULL,
	[ClinicalPhaseSubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[Year] [char](4) NULL,
	[Region] [nvarchar](100) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[Country] [nvarchar](250) NULL,
	[State] [nvarchar](200) NULL,
	[BCBiotechHub] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NOT NULL,
	[Date of Market Cap] [date] NULL,
	[Market Cap] [money] NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[Active/Not active] [nvarchar](10) NULL,
	[BullBearWindow] [nvarchar](256) NULL,
	[IpoWindow] [nvarchar](256) NULL,
	[Exchange1] [nvarchar](255) NULL,
	[Exchange2] [nvarchar](255) NULL,
	[LastUpdated] [datetimeoffset](7) NULL,
	[Business Category] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwInvestmentBankers]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*L(L added 6/19/18)*/
CREATE VIEW [dbo].[vwInvestmentBankers]
AS
SELECT        ftf.FinancingFinancierKey, f.FinancingID, f.Code, c.CompanyCode, c.CurrentNameCompanyKey AS CompanyKey, c.CurrentNameCompanyName AS InvestmentBanker, c.EncodedCompanyName AS EncodedInvestmentBanker, 
                         f.AmountRaised, f.FinancingKey, f.LastUpdated
FROM            mv.vwFinancing AS f INNER JOIN
                         dbo.Financing_to_Financier AS ftf ON f.FinancingKey = ftf.FinancingKey LEFT OUTER JOIN
                         mv.vwCompanyGeneralInfo AS c ON c.CompanyKey = ftf.CompanyKey
WHERE        (ftf.Role LIKE '%underwriter%')
GO
/****** Object:  View [app].[vwDealToStandardIndications]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealToStandardIndications]
AS

SELECT --distinct 
	da.DealKey,
	da.DealAssetkey,
	da.DealID,
	da.AssetID,
	si.StandardIndicationKey,
	si.StandardIndicationName,
	si.DiseaseCategory
FROM FactDealAssets da
JOIN Deal_to_StandardIndication ds
	ON ds.DealAssetkey = da.DealAssetkey
JOIN DimStandardIndication si
	ON si.StandardIndicationKey = ds.StandardIndicationkey
GO
/****** Object:  View [dbo].[vwInvestors]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*L(L added 6/19/18)*/
CREATE VIEW [dbo].[vwInvestors]
AS
SELECT        ftf.FinancingFinancierKey, f.FinancingID, f.Code, c.CompanyCode, c.CurrentNameCompanyKey AS CompanyKey, c.CurrentNameCompanyName AS Investor, c.EncodedCompanyName AS EncodedInvestor, f.AmountRaised, 
                         f.FinancingKey, f.LastUpdated
FROM            mv.vwFinancing AS f INNER JOIN
                         dbo.Financing_to_Financier AS ftf ON f.FinancingKey = ftf.FinancingKey LEFT OUTER JOIN
                         mv.vwCompanyGeneralInfo AS c ON c.CompanyKey = ftf.CompanyKey
WHERE        (ftf.Role LIKE '%investor%')
GO
/****** Object:  Table [app].[DimExchange]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimExchange](
	[ExchangeKey] [int] NOT NULL,
	[Exchange] [nvarchar](64) NOT NULL,
	[Region] [nvarchar](64) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwExchange]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwExchange]
AS
SELECT DISTINCT
	e.ExchangeKey,
	st.Exchange,
	st.ExchangeDescription,
	e.Region
FROM DimStockTicker st
JOIN app.DimExchange e
	ON e.Exchange = st.Exchange
--ORDER BY e.Region, st.Exchange
GO
/****** Object:  View [app].[vwCompanyCurrentName]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwCompanyCurrentName]
AS

SELECT
	h.CompanyID,
	h.CompanyKey,
	h.CompanyName
FROM vwCompanyHistory h
JOIN (SELECT
	c.CompanyID,
	MAX(c.Number) AS Number
FROM [dbo].[vwCompanyHistory] c
GROUP BY c.CompanyID) t
	ON t.CompanyID = h.CompanyID
	AND t.Number = h.Number
GO
/****** Object:  View [app].[vwGeographyTree]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwGeographyTree]
AS
SELECT  distinct      Convert(nvarchar(64), Id) Id, Name, Convert(nvarchar(64), Parent) Parent, Dimension, SortOrder, [Level], Selectable
FROM            app.DimGeographyTree
GO
/****** Object:  View [dbo].[vwDealAssetCompanies_BU_06_03_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwDealAssetCompanies_BU_06_03_2022]
AS  


SELECT 
C1.DealKey, 
C1.DealAssetKey,
C1.CompanyKey AS CompanyKey1,
C1.CompanyName AS CompanyName1, 
C1.CurrentNameCompanyKey AS CurrentNameCompanyKey1,
C1.CurrentNameCompanyName AS CurrentNameCompanyName1, 
C1.CompanyRole AS CompanyRole1,
C1.CompanyType AS CompanyType1, 
C1.CompanyCategory AS CompanyCategory1, 
C1.Country AS CompanyCountry1, 
C1.MarketCap AS MarketCap1,
C1.MarketCapDate AS MarketValueDate1,
C1.Responsibilities AS CompanyResponsibilities1,

C2.CompanyKey AS CompanyKey2,
C2.CompanyName AS CompanyName2, 
C2.CurrentNameCompanyKey AS CurrentNameCompanyKey2,
C2.CurrentNameCompanyName AS CurrentNameCompanyName2, 
C2.CompanyRole AS CompanyRole2,
C2.CompanyType AS CompanyType2, 
C2.CompanyCategory AS CompanyCategory2, 
C2.Country AS CompanyCountry2, 
C2.MarketCap AS MarketCap2,
C2.MarketCapDate AS MarketValueDate2,
C2.Responsibilities AS CompanyResponsibilities2,

C3.CompanyKey AS CompanyKey3,
C3.CompanyName AS CompanyName3, 
C3.CurrentNameCompanyKey AS CurrentNameCompanyKey3,
C3.CurrentNameCompanyName AS CurrentNameCompanyName3, 
C3.CompanyRole AS CompanyRole3,
C3.CompanyType AS CompanyType3, 
C3.CompanyCategory AS CompanyCategory3, 
C3.Country AS CompanyCountry3, 
C3.MarketCap AS MarketCap3,
C3.MarketCapDate AS MarketValueDate3,
C3.Responsibilities AS CompanyResponsibilities3,

C4.CompanyKey AS CompanyKey4,
C4.CompanyName AS CompanyName4, 
C4.CurrentNameCompanyKey AS CurrentNameCompanyKey4,
C4.CurrentNameCompanyName AS CurrentNameCompanyName4, 
C4.CompanyRole AS CompanyRole4,
C4.CompanyType AS CompanyType4, 
C4.CompanyCategory AS CompanyCategory4, 
C4.Country AS CompanyCountry4, 
C4.MarketCap AS MarketCap4,
C4.MarketCapDate AS MarketValueDate4,
C4.Responsibilities AS CompanyResponsibilities4

FROM            
    (SELECT * FROM 
    dbo.vwDealAssetCompany
    WHERE CompanyRank = 1) AS C1 
        LEFT OUTER JOIN
            (SELECT * FROM 
            dbo.vwDealAssetCompany
            WHERE CompanyRank = 2) AS C2
                ON C1.DealAssetKey = C2.DealAssetKey
        LEFT OUTER JOIN
            (SELECT * FROM 
            dbo.vwDealAssetCompany
            WHERE CompanyRank = 3) AS C3
                ON C1.DealAssetKey = C3.DealAssetKey
        LEFT OUTER JOIN
            (SELECT * FROM 
            dbo.vwDealAssetCompany
            WHERE CompanyRank = 4) AS C4
                ON C1.DealAssetKey = C4.DealAssetKey
GO
/****** Object:  View [dbo].[CompanyFilter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[CompanyFilter]
AS

SELECT  dbo.DimCompany.CompanyKey ,
		dbo.DimCompany.CompanyID,
        dbo.DimCompany.GeographyKey ,
        dbo.DimCompany.CompanyName ,
        dbo.DimCompany.CompanyType ,
        dbo.DimCompany.CompanyCategory ,
        dbo.DimCompany.OwnershipStatus ,
        dbo.DimCompany.IsActive ,
        dbo.DimCompany.IsCurrent ,
        dbo.DimGeography.Country ,
        dbo.DimGeography.SubRegion ,
        dbo.DimGeography.Region ,
        dbo.DimGeography.BiotechHub ,
        NULL AS MarketCapTier ,
        NULL AS BusinessCategory ,
        NULL AS LeadProductStatus
FROM    
	dbo.DimCompany
        INNER JOIN 
			dbo.DimGeography 
				ON dbo.DimCompany.GeographyKey = dbo.DimGeography.GeographyKey;
GO
/****** Object:  View [dbo].[FinancingsFilter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[FinancingsFilter]

AS 
SELECT --DISTINCT
        --dbo.DimCompany.CompanyKey ,
        --dbo.DimCompany.CompanyID ,
		dbo.FactFinancing.CompanyKey ,
        dbo.FactFinancing.AmountRaised ,
		dbo.DimFinancingType.Category, 
		dbo.DimFinancingType.SubCategory, 
        dbo.DimFinancingType.FinancingType,
        dbo.FactFinancing.DateCompleted ,
        dbo.DimDate.Year ,
        dbo.DimDate.Quarter ,
        dbo.FactFinancing.Completed
FROM    
	--dbo.DimCompany
 --       INNER JOIN 
		dbo.FactFinancing 
			--ON dbo.DimCompany.CompanyKey = dbo.FactFinancing.CompanyKey
        INNER JOIN 
			dbo.DimFinancingType 
				ON dbo.FactFinancing.FinancingTypeKey = dbo.DimFinancingType.FinancingTypeKey
        INNER JOIN 
			dbo.DimDate 
				ON dbo.FactFinancing.DateCompletedKey = dbo.DimDate.DateKey
WHERE   
	dbo.FactFinancing.Completed = 'Completed'

GO
/****** Object:  View [dbo].[vwCompanyPrimaryTickers_PBI_ResultsbyMCAP]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCompanyPrimaryTickers_PBI_ResultsbyMCAP] AS

SELECT
	C.CompanyKey,
	C.Code,
	T.StockTickerKey as 'DimStockTicker.StockTickerKey',
	T.Ticker as 'DimStockTicker.Ticker',
	T.Exchange as 'DimStockTicker.Exchange',
	T.ExchangeDescription as 'DimStockTicker.ExchangeDescription'
FROM DimCompany C
		LEFT JOIN
			DimStockTicker T
				ON C.CompanyKey = T.CompanyKey
WHERE
	T.IsPrimary = 'Yes'
	AND C.IsActive = 'Yes'
	AND C.OwnershipStatus = 'Public'
	AND C.IsCurrent = 'Yes'
GO
/****** Object:  View [dbo].[vwCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwCompany] 
AS

SELECT
    c.[CompanyKey],
    c.[GeographyKey],
    s.[ExchangeDescription],
    [CompanyID],
    [Legacy_CompanyID],
    [Legacy_UnderwriterID],
    [Legacy_InvestorID],
    [AccountNumber],
    [CompanyName],
    [CompanyNameAbbr],
    [Code],
    [CompanyType],
    [CompanyCategory],
    [OwnershipStatus],
    [YearFounded],
    [CompanyURL],
    [Territory],
    [Sector],
    [Industry],
    [CIK],
    [IsApproved],
    [IsActive],
    [AddressLine1],
    [AddressLine2],
    c.[City],
    c.[State],
    [ZipCode],
    [Email],
    [Fax],
    [PhoneNumber],
    [PrimaryContact],
    [EventType],
    [EffectiveStartDate],
    [EffectiveEndDate],
    [IsCurrent],
    c.[CreatedDate],
    c.[ModifiedDate],
    g.Country,
    g.Region,
    g.SubRegion,
    NULL [BusinessCategory]
FROM
    [dbo].[DimCompany] AS c
        INNER JOIN
            dbo.DimGeography AS g
                ON g.GeographyKey = c.GeographyKey
        LEFT JOIN
            dbo.DimStockTicker AS s
                ON c.CompanyKey = s.CompanyKey
                    AND s.IsPrimary = 'Yes'
WHERE
    c.IsCurrent = 'Yes'
    AND COALESCE([Legacy_UnderwriterID], [Legacy_InvestorID], 1) = 1  ---exclude financiers


GO
/****** Object:  View [dbo].[vwEarnings_PBI_ResultsbyMCAP]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwEarnings_PBI_ResultsbyMCAP] AS

SELECT
	EarningsID,
	E.CompanyKey,
	DateReported,
	Period,
	SharesOutstanding_bigint,
	E.CompanyName,
	[Active/Not active],
	C.Code AS 'Company_Code'
FROM vwEarnings E
		JOIN
			DimCompany C
				ON E.CompanyKey = C.CompanyKey
WHERE Period <> '4Q ended'
GO
/****** Object:  View [dbo].[vwEarnings_BU_06_03_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwEarnings_BU_06_03_2022]
AS 
SELECT --TOP 10
	fe.EarningsCode as Code,
	fe.EarningsID,
    fe.CompanyKey,
    dd.Date AS DateReported,
    --fe.FiscalPeriodKey ,
    CASE
        WHEN dfp.FiscalPeriod LIKE 'Q[1-4]' THEN REVERSE(dfp.FiscalPeriod) + ' ended'
        ELSE dfp.FiscalPeriod + ' ended'
    END AS Period,
    fe.FiscalYear,
    CASE
        WHEN dfp.FiscalPeriod = 'FY' THEN CAST(FiscalYear AS char(4))
        ELSE CAST(FiscalYear AS char(4)) + dfp.FiscalPeriod
    END AS FiscalPeriodID,
    NULL AS CalendarPeriodID,
    fe.SharesOutstanding,
	cast(fe.SharesOutstanding as Bigint) as [SharesOutstanding_bigint],
    fe.Cash,
    fe.TotalCash,
    fe.ShortTermInvestments,
    fe.ShortTermInvestmentsOther,
    fe.ProductSales,
    fe.ServiceSales,
    fe.TotalSales,
    fe.GrantRevenue,
    fe.LicenseRevenue,
    fe.RoyaltyRevenue,
    fe.TotalRevenue,
    fe.ResearchAndDevelopment,
    fe.SellingGeneralAndAdministrative,
    fe.OperatingIncomeLoss,
	case 
		when [TotalCash] is null or TotalCash = 0 then null
		else [OperatingIncomeLoss] / [TotalCash] 
	end as [Operating Income / Cash Ratio],
    fe.IncomeFromContinuingOperations,
    fe.Earnings NetIncome,
    fe.EarningsPerShare,
    fe.DilutedEarningsPerShare,
    fe.SharesAverageBasic,
    fe.SharesAverageDiluted,
    fe.MarketCap,
    dc.BriefCurrencyAbbr AS Currency,
    NULL AS CurrencyRate,
    COALESCE(lr.rn,0) IsLastReported,
    --metrix

    CASE
        WHEN Earnings > 0 THEN MarketCap / Earnings
    END AS PE,
    CASE
        WHEN FiscalPeriod = 'FY' AND
            TotalRevenue > 0 THEN MarketCap / NULLIF(TotalRevenue, 0)
    END AS PriceToRevenue,
    CASE
        WHEN FiscalPeriod = 'FY' AND
            TotalSales > 0 THEN ABS(ResearchAndDevelopment) / NULLIF(TotalSales, 0)
    END AS RDToSales,
    CASE
        WHEN TotalRevenue > 0 THEN ABS(ResearchAndDevelopment) / NULLIF(TotalRevenue, 0)
    END AS RDToRevenue,
    CASE
        WHEN TotalSales > 0 THEN ABS(SellingGeneralAndAdministrative) / NULLIF(TotalSales, 0)
    END AS SGAToSales,
    CASE
        WHEN TotalRevenue > 0 THEN ABS(SellingGeneralAndAdministrative) / NULLIF(TotalRevenue, 0)
    END AS SGAToRevenue,
    fe.MarketCap - fe.TotalCash AS TechValue,
    c.CompanyName,
	app.fnURL_Strip(c.CompanyName) as EncodedCompanyName,
    g.Region,
    g.Country,
    c.YearFounded, 
	concat(Substring(fe.DatePeriodEndedKey, 5,2), '/', Substring(fe.DatePeriodEndedKey, 7,2),'/', Substring(fe.DatePeriodEndedKey, 1,4)) as AsOfDate,
	cast(concat(Substring(fe.DatePeriodEndedKey, 5,2), '/', Substring(fe.DatePeriodEndedKey, 7,2),'/', Substring(fe.DatePeriodEndedKey, 1,4)) as DateTime) as [AsOfDate_Datetime],
	CGR.EPS_CAGR AS [4-Year CAGR of EPS],
	--c.AddressLine1 AS 
	[Location],
	C.CompanyURL as [Website],
	c.[State],
	cbt.BusinessTypes AS BusinessCategory,
	--c.IsActive AS 
	[Active/Not active],
	C.CompanyType,
	p.ProductsNumber AS [Number of Products (Originated)],
	c.[Total Amount Raised]
FROM
    dbo.FactEarnings fe
        INNER JOIN
            dbo.DimDate dd
                ON fe.DatePeriodEndedKey = dd.DateKey
        INNER JOIN
            dbo.DimFiscalPeriod dfp
                ON fe.FiscalPeriodKey = dfp.FiscalPeriodKey
        INNER JOIN
            dbo.DimCurrency dc
                ON fe.CurrencyKey = dc.CurrencyKey
        LEFT OUTER JOIN
            --DimCompany 
			dbo.vwCompanyGeneralInfo c
                ON c.CompanyKey = fe.CompanyKey
        LEFT OUTER JOIN
            DimGeography g
                ON g.GeographyKey = c.GeographyKey
		LEFT OUTER JOIN
			(
			SELECT fe2.EarningsCode, fe2.CompanyKey,fe2.DatePeriodEndedKey,
			RANK() OVER(PARTITION BY fe2.CompanyKey ORDER By fe2.DatePeriodEndedKey DESC) AS rn
			FROM dbo.FactEarnings fe2
			) lr
				ON fe.EarningsCode=lr.Earningscode
				AND lr.rn=1
		
		LEFT OUTER JOIN
			dbo.vwCompanyEPSCAGR AS CGR
				ON C.CompanyKey = CGR.CompanyKey
		LEFT OUTER JOIN
				vwCompanyBusinessTypes cbt
					ON c.CompanyKey =cbt.CompanyKey
		LEFT OUTER JOIN
			(
			SELECT OriginatorCompanyKey, COUNT(ProductKey) AS ProductsNumber
			FROM dbo.DimProduct
			GROUP BY OriginatorCompanyKey
			) p
			ON c.CompanyKey =p.OriginatorCompanyKey
GO
/****** Object:  View [dbo].[vwConcatProductMOA]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[vwConcatProductMOA] as 
select p.productkey,  STRING_AGG (moa.MechanismOfActionName,'; ') as Concat_MOA

from dbo.dimProduct p 
left outer join dbo.product_to_mechanismofAction pma on p.productkey = pma.productkey 
left outer join dbo.DimMechanismOfAction moa on pma.MechanismOfActionKey = moa.MechanismOfActionKey
group by p.productkey
GO
/****** Object:  View [dbo].[vwConcatProductTargetMOA]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwConcatProductTargetMOA] as 
select p.productkey, STRING_AGG (moa.MechanismOfActionName,CHAR(13)+CHAR(10)) as Concat_MOA, STRING_AGG (t.MolecularTargetName,CHAR(13)+CHAR(10)) as Concat_Target 

from dbo.dimProduct p 
left outer join dbo.product_to_mechanismofAction pma on p.productkey = pma.productkey 
left outer join dbo.DimMechanismOfAction moa on pma.MechanismOfActionKey = moa.MechanismOfActionKey
left outer join dbo.product_to_moleculartarget pmt on p.productkey = pmt.productkey
left outer join dbo.dimMolecularTarget t on pmt.MolecularTargetKey = t.MolecularTargetKey
group by p.productkey
GO
/****** Object:  View [dbo].[vwDealProfileSearch]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE [BCIQ_DW]
--GO

--/****** Object:  View [dbo].[vwDealProfileSearch]    Script Date: 11/16/2017 1:43:46 PM ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO


CREATE VIEW [dbo].[vwDealProfileSearch] 
AS

SELECT        
	dac.DealKey, 
	 STRING_AGG ('[' + c.CompanyName + ']' + '(' +	dac.CompanyRole +')',CHAR(13)+CHAR(10)) as SearchString
	
FROM            
	dbo.DealAsset_to_Company dac
		INNER JOIN
			dbo.DimCompany c
				ON dac.CompanyKey = c.CompanyKey
GROUP BY dac.DealKey




GO
/****** Object:  View [dbo].[vwFinancing_FinancierData]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwFinancing_FinancierData] as

  select ff.*, [_].[CompanyKey] as [CompanyKey2],
        [_].[GeographyKey] as [GeographyKey],
        [_].[CompanyID] as [CompanyID],
        [_].[Legacy_CompanyID] as [Legacy_CompanyID],
        [_].[Legacy_UnderwriterID] as [Legacy_UnderwriterID],
        [_].[Legacy_InvestorID] as [Legacy_InvestorID],
        [_].[AccountNumber] as [AccountNumber],
        [_].[CompanyName] as [Financier Name],
        [_].[CompanyNameAbbr] as [CompanyNameAbbr],
        [_].[Code] as [Code],
        [_].[CompanyType] as [CompanyType],
        [_].[CompanyCategory] as [CompanyCategory],
        [_].[OwnershipStatus] as [OwnershipStatus],
        [_].[YearFounded] as [YearFounded],
        [_].[CompanyURL] as [CompanyURL],
        [_].[Country] as [Country],
        [_].[Territory] as [Territory],
        [_].[Sector] as [Sector],
        [_].[Industry] as [Industry],
        [_].[CIK] as [CIK],
        [_].[IsApproved] as [IsApproved],
        [_].[IsActive] as [IsActive],
        [_].[AddressLine1] as [AddressLine1],
        [_].[AddressLine2] as [AddressLine2],
        [_].[City] as [City],
        [_].[State] as [State],
        [_].[ZipCode] as [ZipCode],
        [_].[Email] as [Email],
        [_].[Fax] as [Fax],
        [_].[PhoneNumber] as [PhoneNumber],
        [_].[PrimaryContact] as [PrimaryContact],
        [_].[EventType] as [EventType],
        [_].[ParentCompanyKey] as [ParentCompanyKey],
        [_].[EffectiveStartDate] as [EffectiveStartDate],
        [_].[EffectiveEndDate] as [EffectiveEndDate],
        [_].[IsCurrent] as [IsCurrent],
        [_].[Legacy_DateCreated] as [Legacy_DateCreated],
        [_].[BCBiotechHubKey] as [BCBiotechHubKey],
        [_].[LeadProductStatusKey] as [LeadProductStatusKey],
        [_].[IsFinancier] as [IsFinancier],
        [_].[CreatedDate] as [CreatedDate2],
        [_].[ModifiedDate] as [ModifiedDate2],
        [_].[CreatedProcessID] as [CreatedProcessID2],
        [_].[ModifiedProcessID] as [ModifiedProcessID2]
  from dbo.Financing_to_Financier ff inner join dbo.DimCompany [_] on ff.CompanyKey = [_].CompanyKey
GO
/****** Object:  View [dbo].[vwFinancingsInvestorsSummary]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwFinancingsInvestorsSummary]
AS
    

SELECT TOP 100 PERCENT
	dbo.Financing_to_Financier.CompanyKey,
	dbo.DimCompany.CompanyName AS Investor, 
	SUM(dbo.FactFinancing.AmountRaised) AS [Total Amount Raised], 
	AVG(dbo.FactFinancing.AmountRaised) AS [Average Amount Raised], 
	COUNT(dbo.FactFinancing.FinancingKey) AS [Number of Financings]
FROM            
	dbo.Financing_to_Financier 
		INNER JOIN
			dbo.FactFinancing 
				ON dbo.Financing_to_Financier.FinancingKey = dbo.FactFinancing.FinancingKey 
		INNER JOIN
			dbo.DimFinancingType 
				ON dbo.FactFinancing.FinancingTypeKey = dbo.DimFinancingType.FinancingTypeKey 
		INNER JOIN
			dbo.DimCompany 
				ON dbo.Financing_to_Financier.CompanyKey = dbo.DimCompany.CompanyKey
WHERE        
	dbo.DimFinancingType.Category = 'Venture'
GROUP BY dbo.Financing_to_Financier.CompanyKey, dbo.DimCompany.CompanyName
ORDER BY [Number of Financings] DESC
GO
/****** Object:  View [dbo].[vwFinancingsUnderwriterSummary]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwFinancingsUnderwriterSummary]
AS
    

SELECT TOP 100 PERCENT
	dbo.Financing_to_Financier.CompanyKey,
	dbo.DimCompany.CompanyName AS Investor, 
	SUM(dbo.FactFinancing.AmountRaised) AS [Total Amount Raised], 
	AVG(dbo.FactFinancing.AmountRaised) AS [Average Amount Raised], 
	COUNT(dbo.FactFinancing.FinancingKey) AS [Number of Financings]
FROM            
	dbo.Financing_to_Financier 
		INNER JOIN
			dbo.FactFinancing 
				ON dbo.Financing_to_Financier.FinancingKey = dbo.FactFinancing.FinancingKey 
		INNER JOIN
			dbo.DimFinancingType 
				ON dbo.FactFinancing.FinancingTypeKey = dbo.DimFinancingType.FinancingTypeKey 
		INNER JOIN
			dbo.DimCompany 
				ON dbo.Financing_to_Financier.CompanyKey = dbo.DimCompany.CompanyKey
WHERE        
	dbo.DimFinancingType.Category <> 'Venture'
GROUP BY dbo.Financing_to_Financier.CompanyKey, dbo.DimCompany.CompanyName
ORDER BY [Number of Financings] DESC
GO
/****** Object:  View [dbo].[vwDealCommercialPmntStructures]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwDealCommercialPmntStructures]
AS


SELECT        
	--dbo.Deal_to_CommercialPaymentStructure.DealKey, 
	dbo.Deal_to_CommercialPaymentStructure.DealAssetKey, 
	STRING_AGG( dbo.DimCommercialPmntStructure.CommercialPmntStructure,'; ') AS CommercialPmntStructures
FROM            
	dbo.Deal_to_CommercialPaymentStructure 
		INNER JOIN
			dbo.DimCommercialPmntStructure 
			ON dbo.Deal_to_CommercialPaymentStructure.CommercialPaymentStructureKey = dbo.DimCommercialPmntStructure.CommercialPmntStructureKey
			WHERE dbo.Deal_to_CommercialPaymentStructure.DealAssetKey > 0 -- 01-01-2023 excluded "-1" 
GROUP BY dbo.Deal_to_CommercialPaymentStructure.DealAssetKey
GO
/****** Object:  View [dbo].[vwProductDetailName]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwProductDetailName] as
select distinct fp.productkey, dpp.productdetailkey, dp.Name 
from DimProductDetail dpp 
inner join FactPipeline fp on dpp.ProductDetailKey = fp.ProductDetailKey
inner join DimProduct dp on fp.ProductKey = dp.ProductKey
GO
/****** Object:  Table [dbo].[DimDealEventType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDealEventType](
	[EventTypeKey] [int] NULL,
	[EventTypeID] [int] NULL,
	[EventType] [varchar](255) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [app].[vwDealEvents]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealEvents]
AS

SELECT
	de.[DealEventKey],
	--de.[DealID],
	de.[DealKey],
	de.[EventID],
	de.[DealEventTypeKey],
	et.[EventType],
	de.[EventDescription],
	de.[EventDate],
	de.[PublicationDate]
FROM [dbo].[FactDealEvent] de
JOIN [dbo].[DimDealEventType] et
	ON et.EventTypeKey = de.[DealEventTypeKey]
GO
/****** Object:  View [app].[vwDealDocumentsBin]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [app].[vwDealDocumentsBin]
AS
SELECT
	d.DealDocumentKey,
	d.DealDocumentKey as DocumentID,
	d.DealID,
	d.[FileName],
	d.DocumentBlob
FROM DealDocuments d
GO
/****** Object:  View [dbo].[vwCompanyGeneralInfoBU_031022021]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vwCompanyGeneralInfoBU_031022021]
AS

SELECT
	C.CompanyKey, 
	c.code as CompanyCode,
	C.CompanyName,
	app.fnURL_Strip(C.CompanyName) AS EncodedCompanyName,
	CNH.CurrentNameCompanyKey,
	CNH.CurrentNameCompanyName, 
	app.fnURL_Strip(CNH.CurrentNameCompanyName) AS CurrentNameEncodedName,
	C.CompanyNameAbbr,
	CAST(ET.ExchangeDescription  AS NVARCHAR(255)) as Exchange, 
	CAST(ET.Ticker  AS NVARCHAR(255)) AS Ticker, 
	CAST(ET2.ExchangeDescription AS NVARCHAR(255)) AS [Exchange 2],
	CAST(ET2.Ticker AS NVARCHAR(255)) AS [Ticker 2],
	CAST(cbt.BusinessTypes  AS NVARCHAR(255)) AS [Business Category],
	concat_ws(', ', c.AddressLine1, c.City, c.State, c.Country, c.ZipCode) AS [Location],
	c.AddressLine1,
	c.AddressLine2,
	coalesce(bhr.Region, G.Region) AS Region, 
	C.Country, 
	c.ZipCode,
	C.YearFounded, 
	C.CompanyURL, 
	CP.Category as ClinicalPhaseCategory,
	CP.SubCategory as ClinicalPhaseSubCategory,
	CP.ClinicalPhase AS [Lead Product Status],
	c.LeadProductStatusDate AS [Date of Lead Product Status],
	c.IsActive AS [Active/Not active],
	cf.DateCompleted AS [Date of Last Financing],
	cf.FinancingType AS [Type of Last Financing],
	cf.AmountRaised AS [Amount Raised in Last Financing],
	cf.Financiers AS [Financiers of Last Financing],
	TotalAmountRaised AS [Total Amount Raised],
	clmc.ValueDate AS [Date of Market Cap],
	clmc.MarketCap_USD AS [Market Cap],
	clmc.MarketCap_USD AS [Market Cap USD],
	cipo.DateCompleted AS [Date of IPO],
	ProductsNumber AS [Number of Products (Originated)],
	0.00 AS [4-Year CAGR of EPS],
	C.CompanyType AS [OriginalCompanyType],
	CASE
		WHEN C.CompanyType not in ('Small-Cap Biopharma (<$1 billion)',
									 'Mid-Cap Biopharma ($1-$50 billion)',
									 'Large-Cap Biopharma (>=$50 billion)')
						OR clmc.MarketCap_USD is null
						OR clmc.MarketCap_USD = 0
									 THEN C.CompanyType
		ELSE CASE
				WHEN clmc.MarketCap_USD < 1000000000 THEN 'Small-Cap Biopharma (<$1 billion)'
				WHEN clmc.MarketCap_USD >= 1000000000 
					 and clmc.MarketCap_USD < 50000000000 THEN 'Mid-Cap Biopharma ($1-$50 billion)'
				WHEN clmc.MarketCap_USD >= 50000000000 THEN 'Large-Cap Biopharma (>=$50 billion)'
				END
		END AS CompanyType,
	c.State, 
	C.CompanyCategory, 
	C.CompanyID, 
	C.Legacy_CompanyID, 
	C.Territory, 
	C.IsCurrent, 
	G.SubRegion, 
	C.GeographyKey,
	c.OwnershipStatus,
	c.[Legacy_UnderwriterID] as [LegacyUnderwriterId],
	c.[Legacy_InvestorID] as [LegacyInvestorId],
	CAST(bh.BCBiotechHub  AS NVARCHAR(255)) AS BCBiotechHub,
	c.City,
	c.IsFinancier,
	c.BCBiotechHubKey,
	CASE --PER TJ
		WHEN OwnershipStatus='Private' THEN NULL
		ELSE mct.MarketCapTier
	END AS MarketCapTier, 
	coalesce(CAST(bh.BCBiotechHub  AS NVARCHAR(255)),  C.Country, G.SubRegion, G.Region) as GeoLeaf,
	c.ModifiedDate as LastUpdated,
	c.SearchBy,
	CASE
		WHEN ET.Ticker IS NOT NULL THEN 'Public'
		WHEN ET.Ticker IS NULL THEN 'Private'
	END AS [Public/Private]
FROM            
	dbo.DimCompany AS C 
		LEFT OUTER JOIN
			dbo.DimGeography AS G 
				ON C.GeographyKey = G.GeographyKey 
		LEFT OUTER JOIN [mv].[vwBiotechHubToRegion] bhr
				ON c.BCBiotechHubKey = bhr.BCBiotechHubKey
		LEFT OUTER JOIN
			dbo.DimStockTicker AS ET 
				ON C.CompanyKey = ET.CompanyKey
				AND ET.IsPrimary='Yes'
		LEFT OUTER JOIN
			dbo.DimStockTicker AS ET2 
				ON C.CompanyKey = ET2.CompanyKey 
				AND ET2.IsPrimary='No'
		LEFT OUTER JOIN
			mv.vwCompanyLatestMarketCap clmc
				ON C.CompanyKey = clmc.CompanyKey
		LEFT OUTER JOIN DimBCBiotechHub bh
				ON  c.BCBiotechHubKey = bh.BCBiotechHubKey
		LEFT OUTER JOIN
			DimClinicalPhase CP
			ON C.LeadProductStatusKey=CP.ClinicalPhaseKey
		LEFT OUTER JOIN
			(
				SELECT  F.CompanyKey,
				CurrentNameCompanyKey,
				FinancingType,
				DateCompleted,
				AmountRaised,
				FF.Financiers,
				SUM(AmountRaised) OVER(PARTITION BY CurrentNameCompanyKey) AS TotalAmountRaised,
				ROW_NUMBER() OVER(PARTITION BY CurrentNameCompanyKey ORDER By DateCompleted DESC) AS rn
				FROM    
					dbo.FactFinancing f
						INNER JOIN dbo.DimFinancingType ft
							ON f.FinancingTypeKey = ft.FinancingTypeKey
						JOIN mv.vwCompanyNameHistory CH
							ON F.CompanyKey = CH.CompanyKey
						LEFT JOIN vwFinancingFinanciers FF
							ON F.FinancingKey = FF.FinancingKey
				WHERE Completed = 'Completed') cf
						ON c.CompanyKey =cf.CurrentNameCompanyKey
						AND cf.rn=1
		LEFT OUTER JOIN
			(
			SELECT OriginatorCompanyKey, COUNT(ProductKey) AS ProductsNumber
			FROM dbo.DimProduct
			GROUP BY OriginatorCompanyKey
			) p
			ON c.CompanyKey =p.OriginatorCompanyKey
		LEFT OUTER JOIN
			(SELECT f.CompanyKey, min(f.DateCompleted) as DateCompleted
			FROM dbo.FactFinancing AS f 
				INNER JOIN
					dbo.DimFinancingType AS ft 
						ON f.FinancingTypeKey = ft.FinancingTypeKey
			WHERE ft.FinancingType = 'IPO'
			group by f.CompanyKey) cipo
				ON c.CompanyKey =cipo.CompanyKey
		LEFT OUTER JOIN
				mv.vwCompanyBusinessTypes cbt
					ON c.CompanyKey =cbt.CompanyKey
		 LEFT OUTER JOIN 
			app.DimMarketCapTier mct	
				ON clmc.MarketCap_USD >=mct.LowerBound--- COALESCE(mct.LowerBound,clmc.MarketCap_USD) 
				AND clmc.MarketCap_USD <= COALESCE(mct.UpperBound,clmc.MarketCap_USD)
		LEFT OUTER JOIN dbo.vwCompanyNameHistory AS CNH 
				ON C.companykey = CNH.companykey

GO
/****** Object:  View [dbo].[vwDeals_BU_03_24_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vwDeals_BU_03_24_2023]
AS   


SELECT DISTINCT 
    d.DealKey,
	da.DealAssetKey,
	d.DealCode AS Code,
	d.DealID,
    ci.CompaniesInvolved,
	ci.EncodedCompaniesInvolved,
    d.DateAnnounced,
	YEAR(d.DateAnnounced) AS [Year Announced],
	d.[DateCompleted],
	d.[DateTerminated],
    d.Headline,
    DimAssetType.AssetClass,
	DimAssetType.AssetType,
    NumberOfAssets AS NumberOfAssets,
	NumberOfAssetsName AS NumberOfAssetsName,
    d.DealValue AS DealTotalValue,
    da.AssetValue AS TotalAssetValue, 
	d.[DealValueNotes],
	d.OptionNotes, --nvarchar(1000)
    da.UpfrontCash, 
    d.TotalMilestonePayments,
	d.StageAtTermination,
    da.NetSalesRoyalty, 
	da.NetSalesRoyalty / 100 as NetSalesRoyalty100,
	da.RareOrphanIntent_Name AS RareOrphanIntent, --nvarchar(250)
    --si.DiseaseCategory AS PrimaryDiseaseCategory the column has been commented out as per 6958, 05/16/2018
    dbo.DimMarketScale.MarketScaleName,
    LicensedTerritories,
	da.HasUndisclosedTerritories,	
    dc.CompanyKey1,
    dc.CompanyName1,
	dc.CurrentNameCompanyKey1,
    dc.CurrentNameCompanyName1,
    dc.CompanyRole1,
    dc.CompanyType1,
    dc.CompanyCategory1,
    dc.CompanyCountry1,
    dc.MarketCap1,
	dc.MarketValueDate1,
    dc.CompanyResponsibilities1,
    dc.CompanyKey2,
    dc.CompanyName2,
	dc.CurrentNameCompanyKey2,
    dc.CurrentNameCompanyName2,
    dc.CompanyRole2,
    dc.CompanyType2,
    dc.CompanyCategory2,
    dc.CompanyCountry2,
    dc.MarketCap2,
	dc.MarketValueDate2,
    dc.CompanyResponsibilities2,
    dc.CompanyKey3,
    dc.CompanyName3,
	dc.CurrentNameCompanyKey3,
    dc.CurrentNameCompanyName3,
    dc.CompanyRole3,
    dc.CompanyType3,
    dc.CompanyCategory3,
    dc.CompanyCountry3,
    dc.MarketCap3,
	dc.MarketValueDate3,
    dc.CompanyResponsibilities3,
    dc.CompanyKey4,
    dc.CompanyName4,
	dc.CurrentNameCompanyKey4,
    dc.CurrentNameCompanyName4,
    dc.CompanyRole4,
    dc.CompanyType4,
    dc.CompanyCategory4,
    dc.CompanyCountry4,
    dc.MarketCap4,
	dc.MarketValueDate4,
    dc.CompanyResponsibilities4,
    dbo.DimDealType.DealType,
	dbo.DimDealType.DealClass,
    dps.PartnershipScopes,
    dbo.DimDrugDevelopmentScope.DrugDevelopmentScopeName,
    NumberOfProducts AS NumberOfProducts,
	NumberOfProductsName AS NumberOfProductsName,
    dpn.ProductNames,
	dpn.EncodedProductNames,
    dtm.TherapeuticModalities,
    ddc.DiseaseCategories,
    dmt.DealMolecularTargets,
	dmt.EncodedDealMolecularTargets,
    dma.MOAs,
	d.StatusKey,
    dbo.DimDealStatus.DealStatus,
    DateOfLatestEvent, 
    dbo.DimDealExclusivity.Exclusivity,
    d.UpfrontEquity,
    da.[OptionExclusivityPayment], 
    da.[OptionExercisePayment],
    d.RDFunding,
    da.RDRegulatoryMilestonePayments,
    da.[SalesBasedMilestonePayments],
    d.ProfitSplit,
	d.ProfitSplit / 100 as ProfitSplit100,
    d.ManufacturingSupplyTransPrice,
	d.ManufacturingSupplyTransPrice / 100 as ManufacturingSupplyTransPrice100,
    d.UnitBasedReimbursement,
    d.LoansAndOther,
    dcps.CommercialPmntStructures,
    da.MinAnnouncedValue,
    ts.TrialStatus AS TrialStatusAtSigning,
	clp.Category AS ClinicalPhaseCategory,
	clp.SubCategory AS ClinicalPhaseSubCategory,
	clp.ClinicalPhase AS [Stage at Signing],
    dbo.DimDealTerminationReason.DealTerminationReasonName,
    TechnologyPlatforms,
	d.[UpfrontPmntNotes],
	d.[MilestonePmntNotes],
	d.[CommercialPmntNotes],
	d.RDFundingNotes,
	da.Modifieddate as LastUpdated
FROM
    dbo.FactDeals d
        JOIN
            FactDealAssets da
                ON da.DealKey = d.DealKey
       LEFT OUTER JOIN
          dbo.DimClinicalPhase clp
            ON da.MaxProductStatusKey = clp.ClinicalPhaseKey
        LEFT OUTER JOIN
            mv.vwDealDiseaseCategories ddc
                ON da.DealAssetKey =
                    ddc.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealTherapeuticModalities dtm
                ON da.DealAssetKey = dtm.DealAssetKey
        LEFT OUTER JOIN
            dbo.DimDealType
                ON da.DealTypeKey = dbo.DimDealType.DealTypeKey
        LEFT OUTER JOIN
            mv.vwDealPartnershipScopes dps
                ON da.DealAssetKey = dps.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealProductNames dpn
                ON da.DealAssetKey = dpn.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealMolecularTargets dmt
                ON da.DealAssetKey = dmt.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealMechanismOfAction dma
                ON da.DealAssetKey = dma.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealAssetCompanies dc
                ON d.DealKey = dc.DealKey and dc.DealAssetKey = da.DealAssetKey
        LEFT OUTER JOIN
            mv.vwDealCommercialPmntStructures dcps
                ON da.DealAssetKey = dcps.DealAssetKey
        LEFT OUTER JOIN
            mv.vwCompaniesInvolved ci
				--ON d.DealKey = dbo.vwCompaniesInvolved.DealKey
                ON da.DealAssetKey = ci.DealAssetKey
        LEFT OUTER JOIN
            dbo.DimDrugDevelopmentScope
                ON da.DrugDevelopmentScopeKey = dbo.DimDrugDevelopmentScope.DrugDevelopmentScopeKey
        LEFT OUTER JOIN
            DimAssetType
                ON DimAssetType.AssetTypeKey = da.AssetTypeKey
        LEFT OUTER JOIN
            dbo.DimDealStatus
                ON d.StatusKey =
                    dbo.DimDealStatus.DealStatusKey
        LEFT OUTER JOIN
            dbo.DimMarketScale
                ON da.MarketScaleKey = dbo.DimMarketScale.MarketScaleKey
        LEFT OUTER JOIN
            dbo.DimDealExclusivity
                ON d.ExclusivityKey = dbo.DimDealExclusivity.ExclusivityKey
        LEFT OUTER JOIN
            dbo.DimDealTerminationReason
                ON d.TerminationReasonKey = dbo.DimDealTerminationReason.DealTerminationReasonKey
		LEFT OUTER JOIN
			dbo.DimTrialStatus ts
				ON da.TrialStatusKey=ts.TrialStatusKey
		LEFT OUTER JOIN
			dbo.Deal_to_StandardIndication dsi
				ON da.DealAssetKey=dsi.DealAssetKey
				AND dsi.StandardIndicationRank=1
		LEFT OUTER JOIN
			dbo.DimStandardIndication si
				ON dsi.StandardIndicationKey=si.StandardIndicationKey
		LEFT OUTER JOIN
			[mv].[vwDealNumberOfAssets] dna
				ON dna.DealKey = d.DealKey
		LEFT OUTER JOIN
			[mv].[vwDealNumberOfProducts] dnp
				ON dnp.DealKey = d.DealKey
		LEFT OUTER JOIN
			[mv].[vwDealDateOfLatestEvent] dle
				ON dle.DealKey = d.DealKey
		LEFT OUTER JOIN
			mv.vwDealTechnologyPlatforms dtp
				ON da.DealAssetKey = dtp.DealAssetKey
		LEFT OUTER JOIN
			mv.vwDealLicensedTerritories dlt
				ON da.DealAssetKey = dlt.DealAssetKey

GO
/****** Object:  View [app].[vwPipeline_summarized]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE   VIEW [app].[vwPipeline_summarized]
AS
WITH 
ProductToMechanismOfAction
AS (
select ProductKey,
	StandardIndicationName,
	STRING_AGG(CAST(MechanismOfActionName AS nvarchar(max)), '; ') AS MechanismOfActionName
from(
	SELECT distinct
		pl.ProductKey,
		pd.StandardIndicationName,
		moa.MechanismOfActionName AS MechanismOfActionName
	FROM dbo.FactPipeline AS PL
	LEFT OUTER JOIN dbo.DimProductDetail pd
		ON pl.ProductDetailKey = pd.ProductDetailKey
	LEFT OUTER JOIN Product_to_MechanismOfAction pmoa
		ON pmoa.ProductKey = pl.ProductKey 
	LEFT OUTER JOIN dbo.DimMechanismOfAction AS moa
		ON moa.MechanismOfActionKey = pmoa.MechanismOfActionKey
	) moa
GROUP BY ProductKey, StandardIndicationName
	)
	, ProductToPartners
	as (
SELECT
	p.productKey,
	p.StandardIndicationName,
	STRING_AGG(p.CompanyName, CHAR(13)+CHAR(10)) WITHIN GROUP (ORDER BY p.CompanyName ASC) AS CompaniesInvolved,
	STRING_AGG(app.fnURL_Strip(p.CompanyName), CHAR(13)+CHAR(10)) WITHIN GROUP (ORDER BY p.CompanyName ASC) AS CompaniesInvolvedEncoded
FROM (SELECT DISTINCT
	l.productKey,
	pd.StandardIndicationName,
	c.CompanyName
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
LEFT JOIN dbo.FactLicense l
	ON l.ProductKey = pl.ProductKey
	AND l.ProductDetailKey = pl.ProductDetailKey
INNER JOIN dbo.DimCompany c
	ON l.InlicenseCompanyKey = c.companyKey
WHERE l.EndDate is null) p
GROUP BY	p.productKey,
			p.StandardIndicationName
	)
	, ProductToRegulatoryDesignation
	as (
SELECT
	rd.Productkey,
	rd.StandardIndicationName,
	STRING_AGG(rd.rd, '; ') AS RegulatoryDesignation
FROM (SELECT
DISTINCT
	pl.Productkey,
	pd.StandardIndicationName,
	rd.RegulatoryRegion + ' - ' + rd.RegulatoryDesignation AS rd
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
LEFT JOIN FactRegulatoryDesignation AS rd
	ON pd.ProductDetailKey = rd.ProductDetailKey
) rd
GROUP BY	rd.Productkey,
			rd.StandardIndicationName
),
ProductToMilestone as
(
select
	t.ProductKey,
	t.StandardIndicationName,
	string_agg(t.MilestoneText , '; ') AS MilestoneText,
	MIN(t.StartDate) as [Start Date of Milestone],
	MAX(t.EndDate) as [End Date of Milestone],
	STRING_AGG(t.MilestoneType, '; ') AS MilestoneTypeStr
from 
(SELECT distinct
	pl.ProductKey,
	pd.StandardIndicationName,
	mst.MilestoneText,
	mst.StartDate,
	mst.EndDate,
	DMT.MilestoneType
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
LEFT OUTER JOIN FactMilestone mst
	ON mst.ProductKey = pl.ProductKey
	AND mst.Productdetailkey = pl.ProductDetailKey
LEFT OUTER JOIN DimMilestoneType DMT
	ON DMT.[MilestoneTypeKey]=mst.[MilestoneTypeKey]
WHERE -- 7/9/18 LL added WHERE clause to filter out past milestones
	mst.MilestoneStatusKey = 1
	AND mst.EndDate >= GETDATE()
) t
group by t.ProductKey,	t.StandardIndicationName
),
ProductToProductDetails as
(
SELECT
	pl.ProductKey,
	pd.StandardIndicationName,
	STRING_AGG(CAST(pd.ProductDetail AS nvarchar(max)), '; ') AS ProductDetails
FROM dbo.FactPipeline AS PL
LEFT OUTER JOIN dbo.DimProductDetail pd
	ON pl.ProductDetailKey = pd.ProductDetailKey
WHERE pd.IsDiscontinued = 0
GROUP BY pl.ProductKey, pd.StandardIndicationName
),
ClinicalPhaseToPipeline as
(
SELECT	*
FROM (SELECT
	ProductID,
	StandardIndicationName,
	ClinicalPhaseKey,
	ClinicalPhase,
	SubCategory,
	Category,
	RouteOfAdministrationKey,
	RouteOfAdministrationName,
	RANK() OVER (PARTITION BY ProductID, StandardIndicationName ORDER BY ClinicalPhase_SortOrder DESC) AS ClinicalPhaseRank
	--RANK() OVER (PARTITION BY ProductID, StandardIndicationName ORDER BY EventDate DESC) AS ClinicalPhaseRank
FROM (SELECT DISTINCT
	p.ProductID,
	p.StandardIndicationName,
	p.ClinicalPhaseKey,
	p.ClinicalPhase,
	p.SubCategory,
	p.Category,
	p.EventDate,
	p.RouteOfAdministrationKey,
	p.RouteOfAdministrationName,
	clph.ClinicalPhase_SortOrder
FROM dbo.vwPipeline_Ext p
JOIN DimClinicalPhase clph
	ON clph.ClinicalPhaseKey = p.ClinicalPhaseKey) t) t2
WHERE ClinicalPhaseRank = 1 and ProductID is not null-- //5/15/2023 removed
)
/* 7/9/18 LL commented out section below and uncommented section above to fix phase rank bug in ClinicalPhasetoPipeline
(
SELECT DISTINCT
	p.ProductID,
	p.StandardIndicationName,
	p.ClinicalPhaseKey,
	p.ClinicalPhase,
	p.SubCategory,
	p.Category,
	p.EventDate,
--	p.RouteOfAdministrationKey,
--	p.RouteOfAdministrationName,
	clph.ClinicalPhase_SortOrder
FROM dbo.vwPipeline_Ext p
JOIN DimClinicalPhase clph
	ON clph.ClinicalPhaseKey = p.ClinicalPhaseKey
WHERE ProductID is not null
)
*/
,
RouteOfAdministrationToPipeine as
(
SELECT	*
FROM (SELECT
	ProductID,
	StandardIndicationName,
	RouteOfAdministrationKey,
	RouteOfAdministrationName,
	RANK() OVER (PARTITION BY ProductID, StandardIndicationName ORDER BY EventDate DESC) AS ClinicalPhaseRank
FROM (SELECT DISTINCT
	p.ProductID,
	p.StandardIndicationName,
	p.EventDate,
	p.RouteOfAdministrationKey,
	p.RouteOfAdministrationName
FROM dbo.vwPipeline_Ext p) t) t2
WHERE ClinicalPhaseRank = 1 and ProductID is not null
)
,
MaxPhasebyDisease as 
(
	SELECT DISTINCT
		P.ProductKey,
		PD.DiseaseCategory,
		MAX(P.PhaseOfDevelopmentKey) as 'MaxPhaseKey'
	FROM
		FactPipeline P
			JOIN
				DimProductDetail PD
					ON P.ProductDetailKey = PD.ProductDetailKey
	GROUP BY P.ProductKey, PD.DiseaseCategory
)
,
MaxProductPhase as
(
	SELECT DISTINCT
		P.ProductKey,
		MAX(P.PhaseOfDevelopmentKey) as 'MaxPhaseKey'
	FROM FactPipeline P
	GROUP BY P.ProductKey
)

SELECT
DISTINCT
	p.ProductKey
	--p.Code
	,p.StandardIndicationName --Standard Indication
	,DimProduct.ProductID
	,si.StandardIndicationKey
	,p.[CompanyName] --Company Name (Originator)
	,[EncodedCompanyName]
	,[CompanyKey]
	,p.[Name] --Product Names
	,[EncodedName]
	,p.[Description]  --Description
	,cp.[ClinicalPhaseKey]
	,cp.[Category]
	,cp.[SubCategory]
	,cp.[ClinicalPhase] --Phase of Development
	--,[ClinicalPhaseKey]
	--,[Category]
	--,[SubCategory]
	--,[ClinicalPhase] --Phase of Development
	,[MolecularTargetName] --Molecular Target
	,[EncodedMolecularTargetName]
	,[MolecularTargetNameFamily]
	,[EncodedMolecularTargetNameFamily]
	,[TherapeuticModalityID]
	,[TherapeuticModalityName]
	,[TherapeuticModalityCategory]
	,[TherapeuticModalitySubcategory]
	,[TherapeuticModalitySubsubcategory] --Therapeutic Modality
	,LCP.ClinicalPhaseKey AS [LatestClinicalStageKey]
	,LCP.ClinicalPhase AS [Latest Stage of Development]
	--,[ProductDetailKey] --it was aggregated!!!
	,p.[DiseaseCategory] --Disease Category
	,[EncodedDiseaseCategory]
	,[EncodedStandardIndicationName]
	,ptpd.ProductDetails AS [ProductDetail] --,[ProductDetail] --Indication Details
	--,[Target1] --remove
	--,[EncodedTarget1] --remove
	--,[Target2] --remove
	--,[EncodedTarget2] --remove
	--,[LicenseKey]
	--,[PartnershipTermsKey]
	--,[PartneringStatus]
	--,[InLicensedCompany]
	--,[MilestoneKey]
	,ptm.MilestoneText --,[MilestoneText] --Milestones
	,ptm.[Start Date of Milestone]--,[Start Date of Milestone] --StartDate of Milestones
	,ptm.[End Date of Milestone]--,[End Date of Milestone] --EndDate of Milestones
	--,[MilestoneType] 
	,ptm.MilestoneTypeStr --,[MilestoneTypeStr] --Milestone Type
	,ra.[RouteOfAdministrationKey]
	,ra.[RouteOfAdministrationName]
	--,[MechanismOfActionKey]
	,ptmoa.MechanismOfActionName--,[MechanismOfActionName] -- Mechanism of Action
	,[GeographyKey]
	,[Country] --Country
	,[Lead Product Status] --Lead Product Status
	,[Date of Lead Product Status] --Date of Lead Product Status
	,[Business Category] --Business Category
	,[Exchange] --Exchange 1
	,[Exchange 2] --Exchange 2
	,[State] --State
	,[Region] --Region
	,[SubRegion]
	,[YearFounded] --Year Founded
	,[Type of Last Financing] --Type of Last Financing
	,[Date of Last Financing] --Date of Last Financing
	,[Total Amount Raised] --Total Amount Raised
	,[Market Cap] --Market Cap
	,[Date of Market Cap] --Date of Market Cap
	,[MarketCapTier]
	,[Date of IPO] --Date of IPO
	,[Number of Products (Originated)] --Number of Products (Originated)
	,[CompanyType] --Company Type
	,[CompanyURL] --Website
	,[Ticker] -- Ticker 1
	,[Ticker 2] --Ticker 2
	,[OwnershipStatus]
	,[IsCurrent]
	,[IsFinancier]
	,prd.RegulatoryDesignation --,[RegulatoryDesignation] --Regulatory Designation
	--,[RegulatoryRegion]
	--,[PipelineKey]
	--,[Code]
	,null as [EventDateKey]
	, null as [EventDate]
	,null as [EventStatus]
	,null as [Notes]
	,ProductToPartners.CompaniesInvolved as [PartnerCompanies] --Partners
	,ProductToPartners.CompaniesInvolvedEncoded as [EncodedPartnerCompanies]
	,[Concat_Target]
	,[Concat_LegacyTargetName]
	,CASE
		WHEN MPD.ProductKey is not null THEN CONVERT(bit, 1)
		ELSE CONVERT(bit, 0)
	END as 'IsLeadPhaseInDiseaseCategory'
	,CASE
		WHEN MP.ProductKey is not null THEN CONVERT(bit, 1)
		ELSE CONVERT(bit, 0)
	END as 'IsProductLatestPhase'
	,DimProduct.ModifiedDate as [LastUpdated]
--FROM mv.vwPipeline_Ext p
FROM dbo.vwPipelineActive_Ext p
left join ClinicalPhaseToPipeline cp 
	on cp.ProductID = p.ProductID and cp.StandardIndicationName = p.StandardIndicationName
left join RouteOfAdministrationToPipeine ra
	on ra.ProductID = p.ProductID and ra.StandardIndicationName = p.StandardIndicationName
LEFT JOIN ProductToMechanismOfAction ptmoa
	ON ptmoa.Productkey = p.Productkey and p.StandardIndicationName = ptmoa.StandardIndicationName
left join ProductToPartners
	on ProductToPartners.ProductKey = p.ProductKey and ProductToPartners.StandardIndicationName = p.StandardIndicationName
left join ProductToRegulatoryDesignation prd
	on p.ProductKey = prd.ProductKey and p.StandardIndicationName = prd.StandardIndicationName
left join ProductToMilestone ptm
	on p.ProductKey = ptm.ProductKey and p.StandardIndicationName = ptm.StandardIndicationName
left join ProductToProductDetails ptpd
	on p.ProductKey = ptpd.ProductKey and p.StandardIndicationName = ptpd.StandardIndicationName
left join DimProduct on p.ProductKey = DimProduct.ProductKey
left join DimStandardIndication si on si.StandardIndicationName = p.StandardIndicationName
LEFT JOIN MaxPhasebyDisease MPD
	ON P.ProductKey = MPD.ProductKey AND P.DiseaseCategory = MPD.DiseaseCategory AND CP.ClinicalPhaseKey = MPD.MaxPhaseKey
LEFT JOIN MaxProductPhase MP
	ON P.ProductKey = MP.ProductKey AND CP.ClinicalPhaseKey = MP.MaxPhaseKey
LEFT JOIN MaxProductPhase MP2
	ON P.ProductKey = MP2.ProductKey
LEFT JOIN DimClinicalPhase LCP
	ON MP2.MaxPhaseKey = LCP.ClinicalPhaseKey


GO
/****** Object:  View [dbo].[vwUserTablesRowCount]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwUserTablesRowCount]
AS
SELECT     dbo.sysobjects.name, dbo.sysindexes.rowcnt
FROM         dbo.sysobjects INNER JOIN
                      dbo.sysindexes ON dbo.sysobjects.id = dbo.sysindexes.id
WHERE     (dbo.sysobjects.xtype = 'u') AND (dbo.sysindexes.indid IN (0, 1))

--and rowcnt=0


GO
/****** Object:  Table [app].[AppFunctionsEvent]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[AppFunctionsEvent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDateTimeUtc] [datetime] NOT NULL,
	[Source] [varchar](64) NOT NULL,
	[Type] [varchar](64) NULL,
	[Message] [varchar](256) NULL,
	[HostName] [varchar](64) NULL,
 CONSTRAINT [PK__AppFunct__3214EC07A1866E73] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[AppFunctionsEvent_web65]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[AppFunctionsEvent_web65](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDateTimeUtc] [datetime] NOT NULL,
	[Source] [varchar](64) NOT NULL,
	[Type] [varchar](64) NULL,
	[Message] [varchar](256) NULL,
	[HostName] [varchar](64) NULL,
	[Payload] [varchar](max) NULL,
 CONSTRAINT [PK__AppFunct__3214EC07A1866E73_2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[BcbcixProductNames]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcbcixProductNames](
	[idNameID] [int] NOT NULL,
	[idProductID] [int] NOT NULL,
	[idIndInfoID] [int] NULL,
	[strProductName] [varchar](150) NOT NULL,
	[idPNTypeID] [int] NOT NULL,
	[idLocationID] [int] NULL,
	[strNotes] [varchar](50) NULL,
	[blToPublish] [bit] NULL,
	[URLSearchBy] [varchar](255) NULL,
	[OmitFromLinkify] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[BcbcixProductNameType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcbcixProductNameType](
	[idPNTypeID] [int] NOT NULL,
	[strPNTDescription] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[BcbcixProducts]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcbcixProducts](
	[idProductID] [int] NOT NULL,
	[idCompanyID] [int] NOT NULL,
	[idCompanyStatus] [smallint] NULL,
	[strDescription] [nvarchar](255) NULL,
	[idTargetID1] [int] NULL,
	[idTargetID2] [int] NULL,
	[idAgentClass] [int] NULL,
	[idAgentClassII] [int] NULL,
	[strProductNames] [varchar](255) NULL,
	[Warnings] [text] NULL,
	[Contraindications] [text] NULL,
	[IsDiscont] [bit] NULL,
	[MOACombined] [varchar](1000) NULL,
	[SearchBy] [varchar](255) NULL,
	[TherapeuticModality1] [int] NULL,
	[TherapeuticModality2] [int] NULL,
	[TherapeuticModality3] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[BcbcixTarget]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcbcixTarget](
	[idTargetID] [int] NOT NULL,
	[strTarget] [nvarchar](255) NOT NULL,
	[SearchBy] [nvarchar](255) NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK__tTarget__58F12BAE] PRIMARY KEY CLUSTERED 
(
	[idTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[BcbcixTargetsSynonyms]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcbcixTargetsSynonyms](
	[TargetID] [int] NOT NULL,
	[TargetName] [varchar](255) NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
	[IsUIDefault] [bit] NULL,
	[IsPartIDefault] [bit] NULL,
	[IsPartIIDefault] [bit] NULL,
	[IsExtraDefault] [bit] NULL,
	[IsSciBXDefault] [bit] NULL,
	[dtCreated] [datetime] NULL,
	[strCreator] [varchar](50) NULL,
	[dtEditedLast] [datetime] NULL,
	[strLastEditor] [varchar](50) NULL,
	[OmitFromLinkify] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[BcbcixtElements]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcbcixtElements](
	[idElementID] [int] NOT NULL,
	[idParentID] [int] NULL,
	[strElementName] [varchar](100) NULL,
	[intLevel] [smallint] NOT NULL,
	[UseInDeals] [bit] NULL,
	[UseInClinical] [bit] NULL,
	[SortOrder] [int] NULL,
	[URLSearchBy] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[BCIQ_Deal_to_Company_Leaf]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BCIQ_Deal_to_Company_Leaf](
	[CompanyRole] [nvarchar](250) NULL,
	[Responsibilities] [nvarchar](4000) NULL,
	[CompanyRank] [int] NULL,
	[MarketValueDate] [datetime2](7) NULL,
	[DatePrior] [datetime2](7) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[MarketValue] [decimal](38, 2) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[DealID] [decimal](38, 0) NULL,
	[AssetID] [decimal](38, 0) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](7) NULL,
	[PctOwnership] [decimal](38, 2) NULL,
	[Legacy_CompanyID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[BcixCompanies]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[BcixCompanies](
	[idCompanyID] [int] NOT NULL,
	[strCompleteName] [nvarchar](255) NULL,
	[idParentCoID] [int] NULL,
	[strAbbrName] [nvarchar](255) NULL,
	[strExchange] [varchar](50) NULL,
	[strTicker] [varchar](20) NULL,
	[strExchange2] [varchar](50) NULL,
	[strTicker2] [varchar](20) NULL,
	[strGroup] [varchar](10) NULL,
	[strBusinessFC] [varchar](255) NULL,
	[idFCategoryID] [int] NULL,
	[idSCategoryID] [int] NULL,
	[idTCategoryID] [int] NULL,
	[blPublic] [bit] NULL,
	[dtPublicDate] [datetime] NULL,
	[strCompanyType] [varchar](1) NULL,
	[idCountryID] [int] NULL,
	[idRegionID] [int] NULL,
	[strAddress] [varchar](50) NULL,
	[strWeb] [varchar](255) NULL,
	[sgMultiplier] [real] NULL,
	[blActive] [bit] NULL,
	[strEmployees] [varchar](100) NULL,
	[dtEmployeesUpdate] [datetime] NULL,
	[idLatestClinStatus] [int] NULL,
	[dtClinStatusUpd] [datetime] NULL,
	[blToPublish] [bit] NULL,
	[crTotalAmtRaised] [money] NULL,
	[strLastFinancingType] [varchar](255) NULL,
	[dtLastFinancing] [datetime] NULL,
	[crCurrentMarketCap] [money] NULL,
	[dtMarketCap] [datetime] NULL,
	[dtFYE] [datetime] NULL,
	[YearStartDate] [datetime] NULL,
	[ReportingPeriodType] [varchar](2) NULL,
	[DateRepInfoUpdated] [datetime] NULL,
	[YearFounded] [int] NULL,
	[SearchBy] [varchar](255) NULL,
	[HeldAs] [int] NULL,
	[EPS_CAGR] [money] NULL,
	[ProductsCount] [int] NULL,
	[URLSearchBy] [varchar](255) NULL,
	[OmitAbbreviatedNameFromLinkify] [bit] NULL,
	[OmitFromPublicData] [bit] NULL,
	[CompanyTypeID] [int] NULL,
	[strStateOrProvince] [varchar](20) NULL,
	[CompanyCategoryID] [int] NULL,
 CONSTRAINT [PK_BcixCompanies] PRIMARY KEY CLUSTERED 
(
	[idCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[ClinicalPhase]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[ClinicalPhase](
	[ClinicalPhaseKey] [int] NOT NULL,
	[ClinicalPhaseID] [int] NULL,
	[FinancialsPhaseID] [int] NULL,
	[Category] [nvarchar](250) NOT NULL,
	[Category_Code] [nvarchar](250) NULL,
	[Category_SortOrder] [int] NOT NULL,
	[SubCategory] [nvarchar](250) NOT NULL,
	[SubCategory_Code] [int] NULL,
	[SubCategory_SortOrder] [int] NOT NULL,
	[ClinicalPhase] [nvarchar](250) NOT NULL,
	[ClinicalPhase_Code] [int] NULL,
	[ClinicalPhase_SortOrder] [int] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[Use_in_Phase_of_Development] [bit] NOT NULL,
	[Use_in_Lead_Product_Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[CompanyLists]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[CompanyLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExternalId] [varchar](64) NOT NULL,
	[UserId] [nvarchar](64) NOT NULL,
	[CompanyListName] [nvarchar](64) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_CompanyLists_ExternalId] UNIQUE NONCLUSTERED 
(
	[ExternalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[CompanyListsDetails]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[CompanyListsDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyListId] [int] NOT NULL,
	[CompanyCode] [int] NOT NULL,
 CONSTRAINT [PK_CompanyListsDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[CompanyUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[CompanyUrlHistory](
	[CompanyID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NOT NULL,
 CONSTRAINT [UX_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[CompanyUrlHistory_NEW_TEST]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[CompanyUrlHistory_NEW_TEST](
	[CompanyID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NOT NULL,
	[CompanyCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[Deal_to_Company_missing]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[Deal_to_Company_missing](
	[Legacy_CompanyID] [int] NULL,
	[Expr1] [int] NULL,
	[CompanyKey] [int] NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[ParentCompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[DealAsset_to_Company_debug]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DealAsset_to_Company_debug](
	[DealKey] [int] NOT NULL,
	[DealAssetKey] [bigint] NOT NULL,
	[CompanyKey] [int] NULL,
	[CompanyRole] [nvarchar](250) NULL,
	[Responsibilities] [nvarchar](4000) NULL,
	[CompanyRank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[MarketValue] [decimal](38, 2) NULL,
	[MarketValueDate] [datetime2](7) NULL,
	[DatePrior] [datetime2](7) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](7) NULL,
	[PctOwnership] [decimal](38, 2) NULL,
	[Legacy_CompanyID] [int] NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[ParentCompanyKey] [int] NULL,
	[DealID] [decimal](38, 0) NULL,
	[AssetID] [decimal](38, 0) NULL,
	[rn] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[DealAssetCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DealAssetCompany](
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CompanyRole] [varchar](255) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[MarketCap] [decimal](38, 2) NULL,
	[MarketCapDate] [datetime2](3) NULL,
	[Responsibilities] [varchar](8000) NULL,
	[CompanyRank] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[DimBusinessClass]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimBusinessClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessClass] [nvarchar](64) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_DimBusinessCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[DimExchangeEditorialMap]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[DimExchangeEditorialMap](
	[ExchangeId] [int] IDENTITY(1,1) NOT NULL,
	[Abbr] [varchar](32) NOT NULL,
	[Description] [varchar](512) NOT NULL,
	[EditorialAbbr] [varchar](32) NOT NULL,
 CONSTRAINT [PK_DimExchangeEditorialMap] PRIMARY KEY CLUSTERED 
(
	[ExchangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[ExcelReportQueue]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[ExcelReportQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [nvarchar](50) NOT NULL,
	[Environment] [nvarchar](50) NOT NULL,
	[Progress] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[FinishDate] [datetime] NULL,
	[Error] [nvarchar](max) NULL,
	[State] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[FinancingTypeHierarchy]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[FinancingTypeHierarchy](
	[Id] [nvarchar](250) NULL,
	[Parent] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[SortOrder] [int] NULL,
	[Dimension] [varchar](24) NOT NULL,
	[Level] [int] NOT NULL,
	[Selectable] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[FinancingTypeHierarchy_BU_03_29_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[FinancingTypeHierarchy_BU_03_29_2022](
	[Id] [nvarchar](250) NULL,
	[Parent] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[SortOrder] [int] NULL,
	[Dimension] [varchar](24) NOT NULL,
	[Level] [int] NOT NULL,
	[Selectable] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[FinancingTypeHierarchy_NEW_1Level]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[FinancingTypeHierarchy_NEW_1Level](
	[Id] [nvarchar](250) NULL,
	[Parent] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[SortOrder] [int] NULL,
	[Dimension] [varchar](24) NOT NULL,
	[Level] [int] NOT NULL,
	[Selectable] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[FinancingTypeHierarchy_NEW_BU_04_04_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[FinancingTypeHierarchy_NEW_BU_04_04_2022](
	[Id] [nvarchar](250) NULL,
	[Parent] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[SortOrder] [int] NULL,
	[Dimension] [varchar](24) NOT NULL,
	[Level] [int] NOT NULL,
	[Selectable] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertData]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[AlertId] [varchar](36) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_GridAlertData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertData_Archd_Earlier_10252022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertData_Archd_Earlier_10252022](
	[Id] [int] NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[AlertId] [varchar](36) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertData_Betw_102522_030123]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertData_Betw_102522_030123](
	[Id] [int] NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[AlertId] [varchar](36) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertData_BU_04_19_2023]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertData_BU_04_19_2023](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[AlertId] [varchar](36) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertDataDetails]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertDataDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GridAlertDataId] [int] NOT NULL,
	[Key1] [varchar](max) NOT NULL,
	[Key2] [varchar](max) NULL,
	[Key3] [varchar](max) NULL,
	[Order] [int] NOT NULL,
	[Key4] [varchar](max) NULL,
 CONSTRAINT [PK_GridAlertDataDetails_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertDataDetails_Archd_Earlier_10252022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertDataDetails_Archd_Earlier_10252022](
	[Id] [int] NOT NULL,
	[GridAlertDataId] [int] NOT NULL,
	[Key1] [varchar](max) NOT NULL,
	[Key2] [varchar](max) NULL,
	[Key3] [varchar](max) NULL,
	[Order] [int] NOT NULL,
	[Key4] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[GridAlertDataDetails_Betw_102522_030123]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[GridAlertDataDetails_Betw_102522_030123](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GridAlertDataId] [int] NOT NULL,
	[Key1] [varchar](max) NOT NULL,
	[Key2] [varchar](max) NULL,
	[Key3] [varchar](max) NULL,
	[Order] [int] NOT NULL,
	[Key4] [varchar](max) NULL,
 CONSTRAINT [PK_GridAlertDataDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[MolecularTargetFamilies]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[MolecularTargetFamilies](
	[LegacyTargetName] [nvarchar](250) NULL,
	[MolecularTargetFamily_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [app].[mv_vwPipeline]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[mv_vwPipeline](
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CompanyKey] [int] NULL,
	[ProductKey] [int] NULL,
	[Name] [nvarchar](1000) NULL,
	[EncodedName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[SubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[MolecularTargetName] [nvarchar](255) NULL,
	[EncodedMolecularTargetName] [nvarchar](255) NULL,
	[MolecularTargetNameFamily] [nvarchar](255) NULL,
	[EncodedMolecularTargetNameFamily] [nvarchar](255) NULL,
	[TherapeuticModalityID] [int] NULL,
	[TherapeuticModalityKey] [int] NULL,
	[TherapeuticModalityName] [nvarchar](255) NULL,
	[TherapeuticModalityCategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubcategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubsubcategory] [nvarchar](255) NULL,
	[LatestClinicalStageKey] [int] NULL,
	[Latest Stage of Development] [nvarchar](250) NULL,
	[ProductDetailKey] [int] NULL,
	[DiseaseCategory] [nvarchar](255) NULL,
	[EncodedDiseaseCategory] [nvarchar](255) NULL,
	[StandardIndicationName] [nvarchar](255) NULL,
	[EncodedStandardIndicationName] [nvarchar](255) NULL,
	[ProductDetail] [nvarchar](250) NULL,
	[Target1] [nvarchar](255) NULL,
	[EncodedTarget1] [nvarchar](255) NULL,
	[Target2] [nvarchar](255) NULL,
	[EncodedTarget2] [nvarchar](255) NULL,
	[LicenseKey] [int] NULL,
	[PartnershipTermsKey] [int] NULL,
	[PartneringStatus] [nvarchar](255) NULL,
	[InLicensedCompany] [nvarchar](255) NULL,
	[MilestoneKey] [int] NULL,
	[MilestoneType] [nvarchar](255) NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[Start Date of Milestone] [date] NULL,
	[End Date of Milestone] [date] NULL,
	[MilestoneTypeKey] [int] NULL,
	[RouteOfAdministrationKey] [int] NULL,
	[RouteOfAdministrationName] [nvarchar](255) NULL,
	[MechanismOfActionKey] [int] NULL,
	[MechanismOfActionName] [nvarchar](255) NULL,
	[GeographyKey] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[State] [nvarchar](200) NULL,
	[Region] [nvarchar](50) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[YearFounded] [int] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Date of Last Financing] [date] NULL,
	[Total Amount Raised] [money] NULL,
	[Market Cap] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[IsFinancier] [nvarchar](10) NULL,
	[RegulatoryDesignation] [nvarchar](255) NULL,
	[RegulatoryRegion] [nvarchar](250) NULL,
	[PipelineKey] [int] NOT NULL,
	[Code] [nvarchar](250) NULL,
	[EventDateKey] [int] NOT NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[PhaseOfDevelopmentKey] [int] NOT NULL,
	[PartnerCompanies] [nvarchar](4000) NULL,
	[EncodedPartnerCompanies] [nvarchar](4000) NULL,
	[Concat_Target] [nvarchar](4000) NULL,
	[PartnerCompanyName] [nvarchar](255) NULL,
	[PartnerCompanyKey] [int] NULL,
	[Role] [varchar](16) NULL,
	[PartnerCompanyIsCurrent] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[PdfExportQueue]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[PdfExportQueue](
	[task_id] [int] IDENTITY(1,1) NOT NULL,
	[processed] [smallint] NOT NULL,
	[type] [nvarchar](20) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[env] [nvarchar](10) NOT NULL,
	[hashCode] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [cdxTable]    Script Date: 5/21/2023 10:01:27 ******/
CREATE CLUSTERED INDEX [cdxTable] ON [app].[PdfExportQueue]
(
	[processed] ASC,
	[task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [app].[PdfQueue]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[PdfQueue](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[Progress] [smallint] NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Env] [nvarchar](10) NOT NULL,
	[HashCode] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [idxPdfQueue]    Script Date: 5/21/2023 10:01:27 ******/
CREATE CLUSTERED INDEX [idxPdfQueue] ON [app].[PdfQueue]
(
	[Progress] ASC,
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [app].[TocEmail]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[TocEmail](
	[ProductID] [int] NOT NULL,
	[Culture] [varchar](10) NOT NULL,
	[Header] [nvarchar](max) NULL,
	[Footer] [nvarchar](max) NULL,
	[Sponsor] [nvarchar](max) NULL,
	[HideSponsor] [bit] NOT NULL,
	[Correction] [nvarchar](max) NULL,
	[Promo] [nvarchar](max) NULL,
 CONSTRAINT [PK_TocEmail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[Culture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [app].[TocEmailSection]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[TocEmailSection](
	[ProductID] [int] NOT NULL,
	[Culture] [varchar](10) NOT NULL,
	[Section] [varchar](100) NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[Image] [varchar](250) NOT NULL,
	[Url] [varchar](500) NOT NULL,
	[HideImage] [bit] NOT NULL,
	[DefaultImage] [bit] NOT NULL,
	[StretchImage] [bit] NOT NULL,
 CONSTRAINT [PK_TocEmailSection] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[Culture] ASC,
	[Section] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__RefactorLog]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__RefactorLog](
	[OperationKey] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_to_CompanyGroup]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_to_CompanyGroup](
	[CompanytoCompanyGroupKey] [bigint] NOT NULL,
	[CompanyGroupKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[DateAddedToGroup] [datetime] NOT NULL,
	[DateRemovedFromGroup] [datetime] NULL,
	[IsCurrentBC100] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyCode_Additional_246]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyCode_Additional_246](
	[CompanyID] [int] NULL,
	[URLSearchBy] [varchar](500) NULL,
	[CompanyCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyHistory](
	[InitialCompanyKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyID] [int] NULL,
	[CompanyName] [nvarchar](250) NULL,
	[ResultingCompanyKey] [int] NULL,
	[ResultingCompanyID] [int] NULL,
	[ResultingCompanyName] [nvarchar](250) NULL,
	[EventType] [nvarchar](250) NULL,
	[EffectiveStartDate] [datetime] NULL,
	[History] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyUrlHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyUrlHistory](
	[CompanyID] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NOT NULL,
	[CompanyCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_to_Event]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_to_Event](
	[DealEventKey] [int] NOT NULL,
	[DealID] [int] NULL,
	[EventID] [int] NULL,
	[DealEventTypeKey] [int] NOT NULL,
	[EventDescription] [varchar](4000) NULL,
	[EventDate] [date] NULL,
	[EventDateKey] [int] NOT NULL,
	[PublicationDate] [date] NULL,
	[PublicationDateKey] [int] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealAssetCompany_CR1]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealAssetCompany_CR1](
	[DealCompanyKey] [int] NULL,
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CompanyRole] [varchar](255) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[Responsibilities] [varchar](8000) NULL,
	[CompanyRank] [bigint] NULL,
	[MarketCapDate] [datetime2](3) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[MarketCap] [decimal](38, 2) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealAssetCompany_CR2]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealAssetCompany_CR2](
	[DealCompanyKey] [int] NULL,
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CompanyRole] [varchar](255) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[Responsibilities] [varchar](8000) NULL,
	[CompanyRank] [bigint] NULL,
	[MarketCapDate] [datetime2](3) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[MarketCap] [decimal](38, 2) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealAssetCompany_CR3]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealAssetCompany_CR3](
	[DealCompanyKey] [int] NULL,
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CompanyRole] [varchar](255) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[Responsibilities] [varchar](8000) NULL,
	[CompanyRank] [bigint] NULL,
	[MarketCapDate] [datetime2](3) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[MarketCap] [decimal](38, 2) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealAssetCompany_CR4]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealAssetCompany_CR4](
	[DealCompanyKey] [int] NULL,
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CompanyRole] [varchar](255) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[Responsibilities] [varchar](8000) NULL,
	[CompanyRank] [bigint] NULL,
	[MarketCapDate] [datetime2](3) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[MarketCap] [decimal](38, 2) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimClinicalPhase_quickbak]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimClinicalPhase_quickbak](
	[ClinicalPhaseKey] [int] NULL,
	[Category] [date] NULL,
	[Category_SortOrder] [int] NULL,
	[SubCategory] [date] NULL,
	[SubCategory_SortOrder] [int] NULL,
	[ClinicalPhase] [date] NULL,
	[ClinicalPhase_SortOrder] [int] NULL,
	[CreatedDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[CreatedProcessID] [int] NULL,
	[ModifiedProcessID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCompany_STAGING_TEMP]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCompany_STAGING_TEMP](
	[CompanyKey] [int] NOT NULL,
	[GeographyKey] [int] NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Legacy_UnderwriterID] [int] NULL,
	[Legacy_InvestorID] [int] NULL,
	[AccountNumber] [nvarchar](250) NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CompanyNameAbbr] [nvarchar](255) NULL,
	[Code] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[YearFounded] [int] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Country] [nvarchar](250) NULL,
	[Territory] [nvarchar](1000) NULL,
	[Sector] [nvarchar](250) NULL,
	[Industry] [nvarchar](250) NULL,
	[CIK] [int] NULL,
	[IsApproved] [nvarchar](10) NULL,
	[IsActive] [nvarchar](10) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[State] [nvarchar](200) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Fax] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](200) NULL,
	[PrimaryContact] [nvarchar](200) NULL,
	[EventType] [nvarchar](250) NULL,
	[ParentCompanyKey] [int] NULL,
	[EffectiveStartDate] [datetime2](7) NULL,
	[EffectiveEndDate] [datetime2](7) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[Legacy_DateCreated] [datetime] NULL,
	[BCBiotechHubKey] [int] NULL,
	[LeadProductStatusKey] [int] NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[LeadProductStatusDate] [datetime2](7) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NULL,
	[ModifiedProcessID] [int] NULL,
	[URLSearchBy]  AS ([app].[fnURL_Strip]([CompanyName])),
	[SearchBy] [nvarchar](512) NULL,
	[Archived] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCompanyEventType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCompanyEventType](
	[CompanyEventTypeKey] [int] NOT NULL,
	[CompanyEventTypeName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCompanyGroup]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCompanyGroup](
	[CompanyGroupKey] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[CompanyGroupName] [varchar](255) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFinancierType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFinancierType](
	[FinancierTypeKey] [int] NULL,
	[FinancierTypeName] [varchar](255) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMilestoneIntent]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMilestoneIntent](
	[MilestoneIntentKey] [int] NOT NULL,
	[MilestoneIntent] [varchar](250) NOT NULL,
	[ShowForMilestone] [nvarchar](10) NULL,
	[IsBeforeEvent] [nvarchar](10) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMilestoneStatus]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMilestoneStatus](
	[MilestoneStatusKey] [int] NOT NULL,
	[MilestoneStatus] [varchar](250) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRegulatoryGroup]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRegulatoryGroup](
	[RegulatoryGroupKey] [int] NOT NULL,
	[RegulatoryGroupName] [varchar](50) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactIPO]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactIPO](
	[IPOKey] [int] NOT NULL,
	[StockTickerKey] [int] NULL,
	[SharePrice] [money] NULL,
	[SharesProposed] [int] NULL,
	[SharesSold] [int] NULL,
	[AmountRaised] [money] NULL,
	[DateFiled] [date] NULL,
	[DateFileKey] [int] NOT NULL,
	[DateCompleted] [date] NULL,
	[DateCompletedKey] [int] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactStockSplit]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactStockSplit](
	[StockSplitKey] [int] NOT NULL,
	[StockTickerKey] [int] NULL,
	[StockSplitDateKey] [int] NULL,
	[Ratio] [float] NULL,
	[Divisor] [bit] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FridayChange]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FridayChange](
	[StockTickerKey] [int] NULL,
	[TradeDatePriorFriday] [date] NULL,
	[LastSharePricePriorFriday] [money] NULL,
	[TradeDateLastFriday] [date] NULL,
	[LastSharePriceLastFriday] [money] NULL,
	[FridayChange] [numeric](19, 9) NULL,
	[FridayPercentChange] [numeric](19, 9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicationDetail]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicationDetail](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenseDetail]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseDetail](
	[Code] [int] NULL,
	[LicenseCode] [int] NULL,
	[IndicationDetailCode] [int] NULL,
	[StandardIndicationCode] [int] NULL,
	[DiseaseCategoryCode] [int] NULL,
	[PipelineDetailCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_to_StandardIndication]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_to_StandardIndication](
	[ProductStandardIndicationKey] [int] NOT NULL,
	[ProductKey] [int] NULL,
	[ProductID] [int] NULL,
	[StandardIndicationKey] [int] NULL,
	[Rank] [int] NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zz_DimMolecularTarget]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zz_DimMolecularTarget](
	[MolecularTargetKey] [int] NOT NULL,
	[MolecularTargetName] [varchar](255) NOT NULL,
	[MolecularTargetFamily_Name] [varchar](250) NULL,
	[DateTargetCreated] [datetime2](7) NULL,
	[LegacyTargetName] [nvarchar](250) NULL,
	[Synonyms] [nvarchar](250) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [smallint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](100) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyBusinessType]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyBusinessType](
	[CompanyBusinessTypeKey] [bigint] NOT NULL,
	[CompanyKey] [int] NULL,
	[BusinessTypeKey] [bigint] NOT NULL,
	[BusinessType] [varchar](250) NOT NULL,
	[BusinessClass] [varchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyGeneralInfo_11_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyGeneralInfo_11_2022](
	[CompanyKey] [int] NOT NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CurrentNameEncodedName] [nvarchar](255) NULL,
	[EventType] [nvarchar](250) NULL,
	[CompanyNameAbbr] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Location] [nvarchar](1113) NOT NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[Region] [nvarchar](64) NULL,
	[Country] [nvarchar](250) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[YearFounded] [int] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[ClinicalPhaseCategory] [nvarchar](250) NULL,
	[ClinicalPhaseSubCategory] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Active/Not active] [nvarchar](10) NULL,
	[Date of Last Financing] [date] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Amount Raised in Last Financing] [money] NULL,
	[Financiers of Last Financing] [nvarchar](4000) NULL,
	[Total Amount Raised] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[Market Cap] [money] NULL,
	[Market Cap USD] [money] NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NOT NULL,
	[OriginalCompanyType] [nvarchar](250) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[State] [nvarchar](200) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Territory] [nvarchar](1000) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[GeographyKey] [int] NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[LegacyUnderwriterId] [int] NULL,
	[LegacyInvestorId] [int] NULL,
	[BCBiotechHub] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[BCBiotechHubKey] [int] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[GeoLeaf] [nvarchar](255) NULL,
	[LastUpdated] [datetimeoffset](7) NULL,
	[SearchBy] [nvarchar](512) NULL,
	[Public/Private] [varchar](7) NULL,
	[Archived] [bit] NULL,
	[Active/Archived/Not active] [varchar](8) NOT NULL,
	[CompanyProfileCategory] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyGeneralInfo_BU_12_01_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyGeneralInfo_BU_12_01_2022](
	[CompanyKey] [int] NOT NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CurrentNameEncodedName] [nvarchar](255) NULL,
	[EventType] [nvarchar](250) NULL,
	[CompanyNameAbbr] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Location] [nvarchar](1200) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[Region] [nvarchar](100) NULL,
	[Country] [nvarchar](250) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[YearFounded] [int] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[ClinicalPhaseCategory] [nvarchar](250) NULL,
	[ClinicalPhaseSubCategory] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Active/Not active] [nvarchar](10) NULL,
	[Date of Last Financing] [date] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Amount Raised in Last Financing] [money] NULL,
	[Financiers of Last Financing] [nvarchar](4000) NULL,
	[Total Amount Raised] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[Market Cap] [money] NULL,
	[Market Cap USD] [money] NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NOT NULL,
	[CompanyType] [nvarchar](250) NULL,
	[OriginalCompanyType] [nvarchar](250) NULL,
	[State] [nvarchar](200) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Territory] [nvarchar](1000) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[GeographyKey] [int] NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[LegacyUnderwriterId] [int] NULL,
	[LegacyInvestorId] [int] NULL,
	[BCBiotechHub] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[BCBiotechHubKey] [int] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[GeoLeaf] [nvarchar](255) NULL,
	[LastUpdated] [datetimeoffset](7) NULL,
	[SearchBy] [nvarchar](512) NULL,
	[Public/Private] [varchar](50) NULL,
	[CompanyProfileCategory] [nvarchar](250) NULL,
	[Archived] [bit] NULL,
	[Active/Archived/NotActive] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwCompanyGeneralInfo_BU_12_22_2022]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwCompanyGeneralInfo_BU_12_22_2022](
	[CompanyKey] [int] NOT NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CurrentNameEncodedName] [nvarchar](255) NULL,
	[EventType] [nvarchar](250) NULL,
	[CompanyNameAbbr] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Location] [nvarchar](1113) NOT NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[Region] [nvarchar](64) NULL,
	[Country] [nvarchar](250) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[YearFounded] [int] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[ClinicalPhaseCategory] [nvarchar](250) NULL,
	[ClinicalPhaseSubCategory] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Active/Not active] [nvarchar](10) NULL,
	[Date of Last Financing] [date] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Amount Raised in Last Financing] [money] NULL,
	[Financiers of Last Financing] [nvarchar](4000) NULL,
	[Total Amount Raised] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[Market Cap] [money] NULL,
	[Market Cap USD] [money] NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NOT NULL,
	[OriginalCompanyType] [nvarchar](250) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[State] [nvarchar](200) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Territory] [nvarchar](1000) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[GeographyKey] [int] NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[LegacyUnderwriterId] [int] NULL,
	[LegacyInvestorId] [int] NULL,
	[BCBiotechHub] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[BCBiotechHubKey] [int] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[GeoLeaf] [nvarchar](255) NULL,
	[LastUpdated] [datetimeoffset](7) NULL,
	[SearchBy] [nvarchar](512) NULL,
	[Public/Private] [varchar](7) NULL,
	[Archived] [bit] NULL,
	[Active/Archived/NotActive] [varchar](8) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealAssetCompany]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealAssetCompany](
	[DealCompanyKey] [int] NULL,
	[DealKey] [int] NULL,
	[DealAssetKey] [int] NULL,
	[CompanyKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[CurrentNameCompanyKey] [int] NULL,
	[CurrentNameCompanyName] [nvarchar](255) NULL,
	[CompanyRole] [varchar](255) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyCategory] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[Responsibilities] [varchar](max) NULL,
	[CompanyRank] [bigint] NULL,
	[MarketCapDate] [datetime2](3) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[MarketCap] [decimal](38, 2) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[PctOwnership] [decimal](38, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDealLicensedTerritory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDealLicensedTerritory](
	[DealAssetKey] [int] NULL,
	[LicensedTerritory] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwDeals]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwDeals](
	[DealKey] [bigint] NOT NULL,
	[DealAssetKey] [bigint] NOT NULL,
	[Code] [int] NULL,
	[DealID] [int] NULL,
	[CompaniesInvolved] [nvarchar](4000) NULL,
	[EncodedCompaniesInvolved] [nvarchar](4000) NULL,
	[DateAnnounced] [date] NULL,
	[Year Announced] [int] NULL,
	[DateCompleted] [date] NULL,
	[DateTerminated] [date] NULL,
	[Headline] [varchar](8000) NULL,
	[AssetClass] [varchar](250) NULL,
	[AssetType] [varchar](250) NULL,
	[NumberOfAssets] [int] NULL,
	[NumberOfAssetsName] [varchar](8) NULL,
	[DealTotalValue] [money] NULL,
	[TotalAssetValue] [money] NULL,
	[DealValueNotes] [nvarchar](2000) NULL,
	[OptionNotes] [nvarchar](1000) NULL,
	[UpfrontCash] [money] NULL,
	[TotalMilestonePayments] [money] NULL,
	[StageAtTermination] [nvarchar](250) NULL,
	[NetSalesRoyalty] [money] NULL,
	[NetSalesRoyalty100] [money] NULL,
	[RareOrphanIntent] [nvarchar](250) NULL,
	[MarketScaleName] [varchar](255) NULL,
	[LicensedTerritories] [nvarchar](4000) NULL,
	[HasUndisclosedTerritories] [bit] NULL,
	[CompanyKey1] [int] NULL,
	[CompanyName1] [nvarchar](255) NULL,
	[CurrentNameCompanyKey1] [int] NULL,
	[CurrentNameCompanyName1] [nvarchar](255) NULL,
	[CompanyRole1] [varchar](255) NULL,
	[CompanyType1] [nvarchar](250) NULL,
	[CompanyCategory1] [nvarchar](250) NULL,
	[CompanyCountry1] [nvarchar](250) NULL,
	[MarketCap1] [decimal](38, 2) NULL,
	[MarketValueDate1] [datetime2](3) NULL,
	[CompanyResponsibilities1] [varchar](8000) NULL,
	[CompanyKey2] [int] NULL,
	[CompanyName2] [nvarchar](255) NULL,
	[CurrentNameCompanyKey2] [int] NULL,
	[CurrentNameCompanyName2] [nvarchar](255) NULL,
	[CompanyRole2] [varchar](255) NULL,
	[CompanyType2] [nvarchar](250) NULL,
	[CompanyCategory2] [nvarchar](250) NULL,
	[CompanyCountry2] [nvarchar](250) NULL,
	[MarketCap2] [decimal](38, 2) NULL,
	[MarketValueDate2] [datetime2](3) NULL,
	[CompanyResponsibilities2] [varchar](8000) NULL,
	[CompanyKey3] [int] NULL,
	[CompanyName3] [nvarchar](255) NULL,
	[CurrentNameCompanyKey3] [int] NULL,
	[CurrentNameCompanyName3] [nvarchar](255) NULL,
	[CompanyRole3] [varchar](255) NULL,
	[CompanyType3] [nvarchar](250) NULL,
	[CompanyCategory3] [nvarchar](250) NULL,
	[CompanyCountry3] [nvarchar](250) NULL,
	[MarketCap3] [decimal](38, 2) NULL,
	[MarketValueDate3] [datetime2](3) NULL,
	[CompanyResponsibilities3] [varchar](8000) NULL,
	[CompanyKey4] [int] NULL,
	[CompanyName4] [nvarchar](255) NULL,
	[CurrentNameCompanyKey4] [int] NULL,
	[CurrentNameCompanyName4] [nvarchar](255) NULL,
	[CompanyRole4] [varchar](255) NULL,
	[CompanyType4] [nvarchar](250) NULL,
	[CompanyCategory4] [nvarchar](250) NULL,
	[CompanyCountry4] [nvarchar](250) NULL,
	[MarketCap4] [decimal](38, 2) NULL,
	[MarketValueDate4] [datetime2](3) NULL,
	[CompanyResponsibilities4] [varchar](8000) NULL,
	[DealType] [varchar](250) NULL,
	[DealClass] [varchar](250) NULL,
	[PartnershipScopes] [varchar](max) NULL,
	[DrugDevelopmentScopeName] [varchar](255) NULL,
	[NumberOfProducts] [int] NULL,
	[NumberOfProductsName] [varchar](21) NULL,
	[ProductNames] [nvarchar](4000) NULL,
	[EncodedProductNames] [nvarchar](max) NULL,
	[TherapeuticModalities] [varchar](8000) NULL,
	[DiseaseCategories] [nvarchar](4000) NULL,
	[DealMolecularTargets] [nvarchar](4000) NULL,
	[EncodedDealMolecularTargets] [nvarchar](4000) NULL,
	[MOAs] [varchar](8000) NULL,
	[StatusKey] [int] NOT NULL,
	[DealStatus] [varchar](50) NULL,
	[DateOfLatestEvent] [date] NULL,
	[Exclusivity] [varchar](50) NULL,
	[UpfrontEquity] [money] NULL,
	[OptionExclusivityPayment] [money] NULL,
	[OptionExercisePayment] [money] NULL,
	[RDFunding] [money] NULL,
	[RDRegulatoryMilestonePayments] [money] NULL,
	[SalesBasedMilestonePayments] [money] NULL,
	[ProfitSplit] [money] NULL,
	[ProfitSplit100] [money] NULL,
	[ManufacturingSupplyTransPrice] [money] NULL,
	[ManufacturingSupplyTransPrice100] [money] NULL,
	[UnitBasedReimbursement] [money] NULL,
	[LoansAndOther] [money] NULL,
	[CommercialPmntStructures] [varchar](8000) NULL,
	[MinAnnouncedValue] [money] NULL,
	[TrialStatusAtSigning] [varchar](50) NULL,
	[ClinicalPhaseCategory] [nvarchar](250) NULL,
	[ClinicalPhaseSubCategory] [nvarchar](250) NULL,
	[Stage at Signing] [nvarchar](250) NULL,
	[DealTerminationReasonName] [varchar](50) NULL,
	[TechnologyPlatforms] [varchar](8000) NULL,
	[UpfrontPmntNotes] [nvarchar](1000) NULL,
	[MilestonePmntNotes] [nvarchar](1000) NULL,
	[CommercialPmntNotes] [nvarchar](1000) NULL,
	[RDFundingNotes] [nvarchar](1000) NULL,
	[LastUpdated] [datetimeoffset](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwEarnings]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwEarnings](
	[Code] [int] NULL,
	[EarningsID] [int] NULL,
	[CompanyKey] [int] NULL,
	[DateReported] [datetime] NULL,
	[Period] [varchar](16) NULL,
	[FiscalYear] [int] NULL,
	[FiscalPeriodID] [varchar](14) NULL,
	[CalendarPeriodID] [int] NULL,
	[SharesOutstanding] [real] NULL,
	[SharesOutstanding_bigint] [bigint] NULL,
	[Cash] [money] NULL,
	[TotalCash] [money] NULL,
	[ShortTermInvestments] [money] NULL,
	[ShortTermInvestmentsOther] [money] NULL,
	[ProductSales] [money] NULL,
	[ServiceSales] [money] NULL,
	[TotalSales] [money] NULL,
	[GrantRevenue] [money] NULL,
	[LicenseRevenue] [money] NULL,
	[RoyaltyRevenue] [money] NULL,
	[TotalRevenue] [money] NULL,
	[ResearchAndDevelopment] [money] NULL,
	[SellingGeneralAndAdministrative] [money] NULL,
	[OperatingIncomeLoss] [money] NULL,
	[Operating Income / Cash Ratio] [money] NULL,
	[IncomeFromContinuingOperations] [money] NULL,
	[NetIncome] [money] NULL,
	[EarningsPerShare] [money] NULL,
	[DilutedEarningsPerShare] [money] NULL,
	[SharesAverageBasic] [real] NULL,
	[SharesAverageDiluted] [real] NULL,
	[MarketCap] [money] NULL,
	[Currency] [varchar](3) NULL,
	[CurrencyRate] [int] NULL,
	[IsLastReported] [bigint] NULL,
	[PE] [money] NULL,
	[PriceToRevenue] [money] NULL,
	[RDToSales] [money] NULL,
	[RDToRevenue] [money] NULL,
	[SGAToSales] [money] NULL,
	[SGAToRevenue] [money] NULL,
	[MarketCapToNetIncome] [money] NULL,
	[MarketCapToRevenue] [money] NULL,
	[TechValue] [money] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[Region] [nvarchar](50) NULL,
	[Country] [nvarchar](255) NULL,
	[YearFounded] [int] NULL,
	[AsOfDate] [varchar](10) NOT NULL,
	[AsOfDate_Datetime] [datetime] NULL,
	[4-Year CAGR of EPS] [money] NULL,
	[Location] [nvarchar](1200) NULL,
	[Website] [nvarchar](4000) NULL,
	[State] [nvarchar](200) NULL,
	[BusinessCategory] [varchar](8000) NULL,
	[Active/Not active] [nvarchar](10) NULL,
	[CompanyType] [nvarchar](250) NULL,
	[Number of Products (Originated)] [int] NULL,
	[Total Amount Raised] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwPipeline]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwPipeline](
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CompanyKey] [int] NULL,
	[ProductKey] [int] NULL,
	[Name] [nvarchar](1000) NULL,
	[EncodedName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[SubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[MolecularTargetName] [nvarchar](255) NULL,
	[EncodedMolecularTargetName] [nvarchar](255) NULL,
	[MolecularTargetNameFamily] [nvarchar](255) NULL,
	[EncodedMolecularTargetNameFamily] [nvarchar](255) NULL,
	[TherapeuticModalityID] [int] NULL,
	[TherapeuticModalityKey] [int] NULL,
	[TherapeuticModalityName] [nvarchar](255) NULL,
	[TherapeuticModalityCategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubcategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubsubcategory] [nvarchar](255) NULL,
	[LatestClinicalStageKey] [int] NULL,
	[Latest Stage of Development] [nvarchar](250) NULL,
	[ProductDetailKey] [int] NULL,
	[DiseaseCategory] [nvarchar](255) NULL,
	[EncodedDiseaseCategory] [nvarchar](255) NULL,
	[StandardIndicationName] [nvarchar](255) NULL,
	[EncodedStandardIndicationName] [nvarchar](255) NULL,
	[ProductDetail] [varchar](8000) NULL,
	[Target1] [nvarchar](255) NULL,
	[EncodedTarget1] [nvarchar](255) NULL,
	[Target2] [nvarchar](255) NULL,
	[EncodedTarget2] [nvarchar](255) NULL,
	[LicenseKey] [int] NULL,
	[PartnershipTermsKey] [int] NULL,
	[PartneringStatus] [nvarchar](255) NULL,
	[InLicensedCompany] [nvarchar](255) NULL,
	[MilestoneKey] [int] NULL,
	[MilestoneType] [nvarchar](255) NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[Start Date of Milestone] [date] NULL,
	[End Date of Milestone] [date] NULL,
	[MilestoneTypeKey] [int] NULL,
	[RouteOfAdministrationKey] [int] NULL,
	[RouteOfAdministrationName] [nvarchar](255) NULL,
	[MechanismOfActionKey] [int] NULL,
	[MechanismOfActionName] [nvarchar](255) NULL,
	[GeographyKey] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[State] [nvarchar](200) NULL,
	[Region] [nvarchar](100) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[YearFounded] [int] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Date of Last Financing] [date] NULL,
	[Total Amount Raised] [money] NULL,
	[Market Cap] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[4-Year CAGR of EPS] [numeric](2, 2) NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[RegulatoryDesignation] [nvarchar](255) NULL,
	[RegulatoryRegion] [nvarchar](250) NULL,
	[PipelineKey] [int] NOT NULL,
	[Code] [nvarchar](250) NULL,
	[EventDateKey] [int] NOT NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[PhaseOfDevelopmentKey] [int] NOT NULL,
	[PartnerCompanies] [nvarchar](4000) NULL,
	[EncodedPartnerCompanies] [nvarchar](4000) NULL,
	[Concat_Target] [nvarchar](4000) NULL,
	[PartnerCompanyName] [nvarchar](255) NULL,
	[PartnerCompanyKey] [int] NULL,
	[Role] [varchar](16) NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[PartnerCompanyIsCurrent] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwPipeline_summarized]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwPipeline_summarized](
	[ProductKey] [int] NULL,
	[StandardIndicationName] [nvarchar](255) NULL,
	[ProductID] [decimal](18, 0) NULL,
	[StandardIndicationKey] [int] NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CompanyKey] [int] NULL,
	[Name] [nvarchar](1000) NULL,
	[EncodedName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[SubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[MolecularTargetName] [nvarchar](255) NULL,
	[EncodedMolecularTargetName] [nvarchar](255) NULL,
	[MolecularTargetNameFamily] [nvarchar](255) NULL,
	[EncodedMolecularTargetNameFamily] [nvarchar](255) NULL,
	[TherapeuticModalityID] [int] NULL,
	[TherapeuticModalityName] [nvarchar](255) NULL,
	[TherapeuticModalityCategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubcategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubsubcategory] [nvarchar](255) NULL,
	[LatestClinicalStageKey] [int] NULL,
	[Latest Stage of Development] [nvarchar](250) NULL,
	[DiseaseCategory] [nvarchar](255) NULL,
	[EncodedDiseaseCategory] [nvarchar](255) NULL,
	[EncodedStandardIndicationName] [nvarchar](255) NULL,
	[ProductDetail] [nvarchar](max) NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[Start Date of Milestone] [date] NULL,
	[End Date of Milestone] [date] NULL,
	[MilestoneTypeStr] [varchar](8000) NULL,
	[RouteOfAdministrationKey] [int] NULL,
	[RouteOfAdministrationName] [nvarchar](255) NULL,
	[MechanismOfActionName] [nvarchar](max) NULL,
	[GeographyKey] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[State] [nvarchar](200) NULL,
	[Region] [nvarchar](100) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[YearFounded] [int] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Date of Last Financing] [date] NULL,
	[Total Amount Raised] [money] NULL,
	[Market Cap] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[RegulatoryDesignation] [nvarchar](4000) NULL,
	[EventDateKey] [int] NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[PartnerCompanies] [nvarchar](4000) NULL,
	[EncodedPartnerCompanies] [nvarchar](4000) NULL,
	[Concat_Target] [nvarchar](4000) NULL,
	[Concat_LegacyTargetName] [nvarchar](4000) NULL,
	[IsLeadPhaseInDiseaseCategory] [bit] NULL,
	[IsProductLatestPhase] [bit] NULL,
	[LastUpdated] [datetimeoffset](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwPipelineActive_Ext]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwPipelineActive_Ext](
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CompanyKey] [int] NULL,
	[IsDiscontinued] [bit] NULL,
	[ProductKey] [int] NULL,
	[ProductId] [decimal](18, 0) NULL,
	[Name] [nvarchar](1000) NULL,
	[EncodedName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[SubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[MolecularTargetName] [nvarchar](255) NULL,
	[EncodedMolecularTargetName] [nvarchar](255) NULL,
	[MolecularTargetNameFamily] [nvarchar](255) NULL,
	[EncodedMolecularTargetNameFamily] [nvarchar](255) NULL,
	[TherapeuticModalityID] [int] NULL,
	[TherapeuticModalityName] [nvarchar](255) NULL,
	[TherapeuticModalityCategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubcategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubsubcategory] [nvarchar](255) NULL,
	[LatestClinicalStageKey] [int] NULL,
	[Latest Stage of Development] [nvarchar](250) NULL,
	[ProductDetailKey] [int] NULL,
	[DiseaseCategory] [nvarchar](255) NULL,
	[EncodedDiseaseCategory] [nvarchar](255) NULL,
	[StandardIndicationName] [nvarchar](255) NULL,
	[EncodedStandardIndicationName] [nvarchar](255) NULL,
	[ProductDetail] [varchar](8000) NULL,
	[Target1] [nvarchar](255) NULL,
	[EncodedTarget1] [nvarchar](255) NULL,
	[Target2] [nvarchar](255) NULL,
	[EncodedTarget2] [nvarchar](255) NULL,
	[LicenseKey] [int] NULL,
	[PartnershipTermsKey] [int] NULL,
	[PartneringStatus] [nvarchar](255) NULL,
	[InLicensedCompany] [nvarchar](255) NULL,
	[MilestoneKey] [int] NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[Start Date of Milestone] [date] NULL,
	[End Date of Milestone] [date] NULL,
	[MilestoneType] [int] NULL,
	[MilestoneTypeStr] [nvarchar](255) NULL,
	[RouteOfAdministrationKey] [int] NULL,
	[RouteOfAdministrationName] [nvarchar](255) NULL,
	[MechanismOfActionKey] [int] NULL,
	[MechanismOfActionName] [nvarchar](255) NULL,
	[GeographyKey] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[State] [nvarchar](200) NULL,
	[Region] [nvarchar](100) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[YearFounded] [int] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Date of Last Financing] [date] NULL,
	[Total Amount Raised] [money] NULL,
	[Market Cap] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[4-Year CAGR of EPS] [money] NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[RegulatoryDesignation] [nvarchar](255) NULL,
	[RegulatoryRegion] [nvarchar](250) NULL,
	[PipelineKey] [int] NOT NULL,
	[Code] [nvarchar](250) NULL,
	[EventDateKey] [int] NOT NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[PhaseOfDevelopmentKey] [int] NOT NULL,
	[PartnerCompanies] [nvarchar](4000) NULL,
	[EncodedPartnerCompanies] [nvarchar](4000) NULL,
	[Concat_Target] [nvarchar](4000) NULL,
	[Concat_LegacyTargetName] [nvarchar](4000) NULL,
	[PartnerCompanyName] [nvarchar](255) NULL,
	[PartnerCompanyKey] [int] NULL,
	[Role] [varchar](16) NULL,
	[PartnerCompanyIsCurrent] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwPipelineDiscontinued_summarized]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwPipelineDiscontinued_summarized](
	[ProductKey] [int] NULL,
	[StandardIndicationName] [nvarchar](255) NULL,
	[ProductID] [decimal](18, 0) NULL,
	[StandardIndicationKey] [int] NOT NULL,
	[CompanyName] [nvarchar](255) NULL,
	[EncodedCompanyName] [nvarchar](255) NULL,
	[CompanyKey] [int] NULL,
	[Name] [nvarchar](1000) NULL,
	[EncodedName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ClinicalPhaseKey] [int] NULL,
	[Category] [nvarchar](250) NULL,
	[SubCategory] [nvarchar](250) NULL,
	[ClinicalPhase] [nvarchar](250) NULL,
	[MolecularTargetName] [nvarchar](255) NULL,
	[EncodedMolecularTargetName] [nvarchar](255) NULL,
	[MolecularTargetNameFamily] [nvarchar](255) NULL,
	[EncodedMolecularTargetNameFamily] [nvarchar](255) NULL,
	[TherapeuticModalityID] [int] NULL,
	[TherapeuticModalityName] [nvarchar](255) NULL,
	[TherapeuticModalityCategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubcategory] [nvarchar](255) NULL,
	[TherapeuticModalitySubsubcategory] [nvarchar](255) NULL,
	[LatestClinicalStageKey] [int] NULL,
	[Latest Stage of Development] [nvarchar](250) NULL,
	[DiseaseCategory] [nvarchar](255) NULL,
	[EncodedDiseaseCategory] [nvarchar](255) NULL,
	[EncodedStandardIndicationName] [nvarchar](255) NULL,
	[ProductDetail] [nvarchar](max) NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[Start Date of Milestone] [date] NULL,
	[End Date of Milestone] [date] NULL,
	[MilestoneTypeStr] [varchar](8000) NULL,
	[RouteOfAdministrationKey] [int] NULL,
	[RouteOfAdministrationName] [nvarchar](255) NULL,
	[MechanismOfActionName] [nvarchar](max) NULL,
	[GeographyKey] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Lead Product Status] [nvarchar](250) NULL,
	[Date of Lead Product Status] [datetime2](7) NULL,
	[Business Category] [nvarchar](255) NULL,
	[Exchange] [nvarchar](255) NULL,
	[Exchange 2] [nvarchar](255) NULL,
	[State] [nvarchar](200) NULL,
	[Region] [nvarchar](100) NULL,
	[SubRegion] [nvarchar](50) NULL,
	[YearFounded] [int] NULL,
	[Type of Last Financing] [nvarchar](250) NULL,
	[Date of Last Financing] [date] NULL,
	[Total Amount Raised] [money] NULL,
	[Market Cap] [money] NULL,
	[Date of Market Cap] [date] NULL,
	[MarketCapTier] [nvarchar](50) NULL,
	[Date of IPO] [date] NULL,
	[Number of Products (Originated)] [int] NULL,
	[CompanyType] [nvarchar](250) NULL,
	[CompanyURL] [nvarchar](4000) NULL,
	[Ticker] [nvarchar](255) NULL,
	[Ticker 2] [nvarchar](255) NULL,
	[OwnershipStatus] [nvarchar](250) NULL,
	[IsCurrent] [nvarchar](10) NULL,
	[IsFinancier] [nvarchar](50) NULL,
	[RegulatoryDesignation] [nvarchar](4000) NULL,
	[EventDateKey] [int] NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[PartnerCompanies] [nvarchar](4000) NULL,
	[EncodedPartnerCompanies] [nvarchar](4000) NULL,
	[Concat_Target] [nvarchar](4000) NULL,
	[Concat_LegacyTargetName] [nvarchar](4000) NULL,
	[LastUpdated] [datetimeoffset](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mv].[vwStock]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mv].[vwStock](
	[TradeDateKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[StockTickerKey] [int] NOT NULL,
	[TradeDate] [date] NULL,
	[LastSharePrice] [money] NULL,
	[OpenSharePrice] [money] NULL,
	[HighSharePrice] [money] NULL,
	[LowSharePrice] [money] NULL,
	[Volume] [int] NULL,
	[LastClose] [money] NULL,
	[ChangeFromLastClose] [numeric](19, 9) NULL,
	[PercentChangeFromLastClose] [numeric](19, 9) NULL,
	[EndOfDayPrice] [money] NULL,
	[EndOfDayPriceDate] [date] NULL,
	[SplitRatio] [int] NULL,
	[CumulativeCashDividend] [money] NULL,
	[CumulativeStockDividendRatio] [numeric](19, 9) NULL,
	[OriginalClosePrice] [money] NULL,
	[OriginalVolume] [int] NULL,
	[ExchangeRate] [numeric](19, 9) NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ModifiedDate] [datetimeoffset](7) NULL,
	[CreatedProcessID] [int] NOT NULL,
	[ModifiedProcessID] [int] NOT NULL,
	[DateNum] [int] NULL,
	[LastPriceSource] [nvarchar](50) NULL,
	[LastSharePriceCurrency] [varchar](50) NULL,
	[Volume_M] [numeric](19, 9) NULL,
	[MarketCap_USD] [money] NULL,
	[MarketCap_USD_M] [money] NULL,
	[PercentChange] [numeric](23, 13) NULL,
	[CurrencySymbol] [varchar](25) NULL,
	[UniversalCurrencyAbbr] [varchar](25) NULL,
	[MarketCapTier] [varchar](25) NULL,
	[Currency_StockFundamentals] [nvarchar](50) NULL,
	[HighPriceLast52Weeks] [money] NULL,
	[LowPriceLast52Weeks] [money] NULL,
	[52wkRange] [varchar](70) NULL,
	[52wkRangeCurrency] [nvarchar](120) NULL,
	[PercentChangeFrom52WeekHigh] [numeric](19, 9) NULL,
	[PercentChangeFrom52WeekLow] [numeric](19, 9) NULL,
	[PercentPriceChangeYTD] [numeric](19, 9) NULL,
	[TradeDatePriorFriday] [date] NULL,
	[LastSharePricePriorFriday] [money] NULL,
	[TradeDateLastFriday] [date] NULL,
	[LastSharePriceLastFriday] [money] NULL,
	[FridayChange] [numeric](19, 9) NULL,
	[FridayPercentChange] [numeric](19, 9) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_DimExchangeEditorialMapAbbr]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_DimExchangeEditorialMapAbbr] ON [app].[DimExchangeEditorialMap]
(
	[Abbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_DiseaseCategoryUrl]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_DiseaseCategoryUrl] ON [app].[DiseaseCategoryUrlHistory]
(
	[URLSearchBy] ASC
)
INCLUDE([DiseaseCategoryID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20220317-150755]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20220317-150755] ON [app].[GridAlertData]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20220317-145734]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20220317-145734] ON [app].[GridAlertDataDetails_Betw_102522_030123]
(
	[GridAlertDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_TermName_TermType]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IDX_TermName_TermType] ON [app].[LinkifyIgnoreOrigin]
(
	[Name] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_MolecularTargetFamilyUrl]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_MolecularTargetFamilyUrl] ON [app].[MolecularTargetFamilyUrlHistory]
(
	[URLSearchBy] ASC
)
INCLUDE([MolecularTargetFamilyID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_MolecularTargetUrl]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_MolecularTargetUrl] ON [app].[MolecularTargetUrlHistory]
(
	[URLSearchBy] ASC
)
INCLUDE([MolecularTargetID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductUrlHistory_URLSearchBy]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProductUrlHistory_URLSearchBy] ON [app].[ProductUrlHistory]
(
	[URLSearchBy] ASC
)
INCLUDE([ProductKey]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_StandardIndicationUrl]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_StandardIndicationUrl] ON [app].[StandardIndicationUrlHistory]
(
	[URLSearchBy] ASC
)
INCLUDE([StandardIndicationID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DealAsset_to_Company_CompanyKey]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_DealAsset_to_Company_CompanyKey] ON [dbo].[DealAsset_to_Company]
(
	[CompanyKey] ASC
)
INCLUDE([DealKey],[DealAssetKey]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CompanyID_IsCurrent]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_CompanyID_IsCurrent] ON [dbo].[DimCompany]
(
	[CompanyID] ASC,
	[IsCurrent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DimCompany_CompanyKey]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_DimCompany_CompanyKey] ON [dbo].[DimCompany]
(
	[CompanyKey] ASC
)
INCLUDE([CompanyID],[IsCurrent]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiseaseCategoryKey]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_DiseaseCategoryKey] ON [dbo].[DimDiseaseCategory]
(
	[DiseaseCategoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MolecularTargetKey]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_MolecularTargetKey] ON [dbo].[DimMolecularTarget]
(
	[MolecularTargetKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductID]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_ProductID] ON [dbo].[DimProduct]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_HangFire_CounterAggregated_Key]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter]
(
	[Key] ASC
)
INCLUDE([Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Counter_Key]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter]
(
	[Key] ASC
)
INCLUDE([Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
INCLUDE([Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Hash_Key]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_Key] ON [HangFire].[Hash]
(
	[Key] ASC
)
INCLUDE([ExpireAt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_HangFire_Hash_Key_Field]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Hash_Key_Field] ON [HangFire].[Hash]
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE([Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_JobParameter_JobIdAndName]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobParameter_JobIdAndName] ON [HangFire].[JobParameter]
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_JobQueue_QueueAndFetchedAt]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue]
(
	[Queue] ASC,
	[FetchedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
INCLUDE([Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_List_Key]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_Key] ON [HangFire].[List]
(
	[Key] ASC
)
INCLUDE([ExpireAt],[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
INCLUDE([Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Set_Key]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set]
(
	[Key] ASC
)
INCLUDE([ExpireAt],[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_HangFire_Set_KeyAndValue]    Script Date: 5/21/2023 10:01:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set]
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_State_JobId]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_State_JobId] ON [HangFire].[State]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20190304-210355]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20190304-210355] ON [mv].[vwBiotechHubToRegion]
(
	[BCBiotechHubKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20190304-210916]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20190304-210916] ON [mv].[vwCompanyBusinessTypes]
(
	[CompanyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_mv_vwCompanyGeneralInfo_CompanyKey_GeoLeaf]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_mv_vwCompanyGeneralInfo_CompanyKey_GeoLeaf] ON [mv].[vwCompanyGeneralInfo_BU_12_01_2022]
(
	[CompanyKey] ASC
)
INCLUDE([GeoLeaf]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20211112-104535]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20211112-104535] ON [mv].[vwCompanyGeneralInfo_BU_12_01_2022]
(
	[Legacy_CompanyID] ASC,
	[IsCurrent] ASC,
	[MarketCapTier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20190304-210622]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20190304-210622] ON [mv].[vwCompanyLatestMarketCap]
(
	[CompanyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20190304-210821]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20190304-210821] ON [mv].[vwCompanyNameHistory]
(
	[CompanyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_mv_vwDeals_DealAssetKey]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_mv_vwDeals_DealAssetKey] ON [mv].[vwDeals]
(
	[DealAssetKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Financing_CurrentNameCompanyKey]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_Financing_CurrentNameCompanyKey] ON [mv].[vwFinancing]
(
	[FinancingTypeCategory] ASC
)
INCLUDE([CurrentNameCompanyKey]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_mv_vwPipeline_Ext_IsDiscontinued_DiseaseCategory]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [ix_mv_vwPipeline_Ext_IsDiscontinued_DiseaseCategory] ON [mv].[vwPipeline_Ext]
(
	[IsDiscontinued] ASC,
	[DiseaseCategory] ASC
)
INCLUDE([PartnerCompanyKey]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PipelineExt_ProductKey_PartneringStatus]    Script Date: 5/21/2023 10:01:27 ******/
CREATE NONCLUSTERED INDEX [IX_PipelineExt_ProductKey_PartneringStatus] ON [mv].[vwPipeline_Ext]
(
	[ProductKey] ASC
)
INCLUDE([PartneringStatus]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [app].[BrandSectionSearchTerms] ADD  CONSTRAINT [DF_BrandSectionSearchTerms_Visible]  DEFAULT ((0)) FOR [Visible]
GO
ALTER TABLE [app].[ClinicalPhase] ADD  DEFAULT ((0)) FOR [Use_in_Phase_of_Development]
GO
ALTER TABLE [app].[ClinicalPhase] ADD  DEFAULT ((0)) FOR [Use_in_Lead_Product_Status]
GO
ALTER TABLE [app].[MolecularTargetFamily] ADD  CONSTRAINT [DF__Molecular__Searc__369C13AA]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [app].[PdfExportQueue] ADD  DEFAULT ((0)) FOR [processed]
GO
ALTER TABLE [app].[PdfQueue] ADD  DEFAULT ((0)) FOR [Progress]
GO
ALTER TABLE [app].[TocEmail] ADD  CONSTRAINT [DF__TocEmail__HideSp__3F1C4B12]  DEFAULT ((0)) FOR [HideSponsor]
GO
ALTER TABLE [dbo].[DailyResults] ADD  CONSTRAINT [DF__DailyResu__BC100__4317C47F]  DEFAULT ((0)) FOR [BC100Price]
GO
ALTER TABLE [dbo].[DailyResults] ADD  CONSTRAINT [DF__DailyResu__BC100__440BE8B8]  DEFAULT ((0)) FOR [BC100Volume]
GO
ALTER TABLE [dbo].[DealAsset_to_Company] ADD  CONSTRAINT [DF__DealAsset__Creat__40C49C62]  DEFAULT (sysdatetimeoffset()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DealAsset_to_Company] ADD  CONSTRAINT [DF__DealAsset__Modif__41B8C09B]  DEFAULT (sysdatetimeoffset()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[DimMolecularTarget] ADD  CONSTRAINT [DF__DimMolecu__Searc__2A363CC5]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [dbo].[DimProduct] ADD  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [app].[CompanyListsDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyListsDetails_CompanyListId] FOREIGN KEY([CompanyListId])
REFERENCES [app].[CompanyLists] ([Id])
GO
ALTER TABLE [app].[CompanyListsDetails] CHECK CONSTRAINT [FK_CompanyListsDetails_CompanyListId]
GO
ALTER TABLE [app].[MolecularTargetFamilyUrlHistory]  WITH CHECK ADD  CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTargetFamily] FOREIGN KEY([MolecularTargetFamilyID])
REFERENCES [app].[MolecularTargetFamily] ([MolecularTargetFamilyID])
GO
ALTER TABLE [app].[MolecularTargetFamilyUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTargetFamily]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
/****** Object:  StoredProcedure [app].[spDealMakers]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [app].[spDealMakers]

    -- Add the parameters for the stored procedure here
    @data xml = null
    --<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>

AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

--    declare @data xml = 
--	N'
--<Deals>
--    <Id>81</Id>
--    <Id>5</Id>
--    <Id>01</Id>
--</Deals>'

declare @T table(code INT)

IF(@data is null)
BEGIN
	insert into @T(code)
	select
		d.DealKey
    from
		FactDeals d
END 
ELSE BEGIN
	insert into @T(code)
	select
		x.value(N'(.)[1]', N'INT')
	from
	   @data.nodes(N'/Deals/Id') AS XTbl(x)
END

SELECT
	DA.CompanyKey,
	[Company Name],
	app.fnURL_Strip([Company Name]) as EncodedCompanyName,
	[Number of Deals] AS [All Deals],
	[Partnership/Asset Purchase],
	[M&A],
	[Aggregate Deal Value] AS [Total Deal Value],
	[Aggregate Upfront Cash] AS [Upfront Cash],
	[# Disclosed (DV)],		
	[# Disclosed (UC)],
	[Licensor],	
	[Licensee],					
	[Seller],
	[Buyer],
	[Investor],
	[Advisor],
	[Other],
	[Research Partner],
	[Undisclosed / Unknown],
	DA.LastUpdated
FROM	
--all deals summary
(
	SELECT
		CompanyKey,     
		CompanyName AS [Company Name], 		 
		COUNT(DealKey) AS [Number of Deals], 
		SUM(TotalDealValue) AS [Aggregate Deal Value],
		SUM(DealValueIsDisclosed) AS [# Disclosed (DV)],
		SUM(UpfrontCash) AS [Aggregate Upfront Cash],
		SUM(UpfrontCashIsDisclosed) AS [# Disclosed (UC)],
		max(LastUpdated) as LastUpdated
	FROM            
		dbo.vwDealMakers DM
	where DM.DealKey in (select * from @T)
	GROUP BY CompanyName, CompanyKey
) DA
	INNER JOIN
		(
----deal by type summary
		SELECT
			CompanyKey,
			[M&A],	--MNADeals,
			[Partnership/Asset Purchase]-- PartneringDeals	
				
		FROM 
			(
			SELECT DISTINCT CompanyKey,DealKey,DealClass
			FROM vwDealMakers AS DM 
			where DM.DealKey in (select * from @T)
			) p
		PIVOT
			(
			COUNT (DealKey)
			FOR DealClass IN ([M&A],[Partnership/Asset Purchase])

		) AS pvt
	) DT
		ON DA.CompanyKey=DT.CompanyKey

	INNER JOIN
--deals by company role summary
		(
		SELECT
			CompanyKey,
			[Licensor],	
			[Licensee],					
			[Seller],
			[Buyer],
			[Investor],
			[Advisor],
			[Other],
			[Research Partner],
			[Undisclosed / Unknown]								
				
		FROM 
			(
			SELECT DISTINCT   CompanyKey,CompanyRole, DealKey
			FROM         vwDealMakers AS DM
			where DM.DealKey in (select * from @T)
				
			) p
		PIVOT
			(
			COUNT ( DealKey)
			FOR CompanyRole IN ([Buyer],[Licensee],[Other],[Undisclosed / Unknown],[Investor],[Advisor],[Seller],[Licensor],[Research Partner])

		) AS pvt
		) DR
			ON DA.CompanyKey=DR.CompanyKey

END
GO
/****** Object:  StoredProcedure [app].[spGridAlertsComparator]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [app].[spGridAlertsComparator]
  @userId varchar(50),
	@alertId varchar(50),
	@type varchar(50) = 'default',
	@prevDate datetime = NULL
AS
BEGIN
 --DECLARE @userId varchar(50)
 --SET @userId = '86d58806-6f37-e711-8117-e0071b6ab1a1'
 --DECLARE @alertId varchar(50)
 --SET @alertId = '59edfe68ebbe18303c4a4fab'
 DECLARE @lastId int
 DECLARE @prevId int
 IF @prevDate IS NULL
   BEGIN
	  SELECT @prevId = Id FROM [app].[GridAlertData] NOLOCK
		WHERE UserId = @userId AND AlertId = @alertId
		ORDER BY Date DESC
		OFFSET (1) ROWS FETCH NEXT (1) ROWS ONLY
	 END
 ELSE
   BEGIN
		SELECT TOP 1 @prevId = Id FROM [app].[GridAlertData] NOLOCK
		WHERE UserId = @userId AND AlertId = @alertId AND [Date] >= @prevDate
		ORDER BY Date
   END
 SELECT TOP 1 @lastId = Id FROM [app].[GridAlertData] NOLOCK
 WHERE UserId = @userId AND AlertId = @alertId
 ORDER BY Date DESC
 PRINT @lastId
 PRINT @prevId
 EXECUTE [app].[spGridAlertsComparatorCore] @lastId, @prevId, @type
END
GO
/****** Object:  StoredProcedure [app].[spGridAlertsComparatorCore]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [app].[spGridAlertsComparatorCore]
	@lastId int,
	@prevId int,
	@type varchar(50) = 'default'
AS
BEGIN
  --SELECT @lastId, @prevId 
	IF(@lastId IS NOT null AND @prevId IS NOT NULL)
	BEGIN
		SELECT * 
		INTO #T
		FROM 
		(
			(SELECT Key1, Key2, Key3, Key4, 0 AS [Order], 1 as [Type]
			FROM [app].[GridAlertDataDetails] NOLOCK
			WHERE GridAlertDataId = @lastId
			EXCEPT
			SELECT Key1, Key2, Key3, Key4, 0 AS [Order], 1 as [Type]
			FROM [app].[GridAlertDataDetails] NOLOCK
			WHERE GridAlertDataId = @prevId)
			UNION ALL
			(SELECT Key1, Key2, Key3, Key4, 0 AS [Order], -1 as [Type]
			FROM [app].[GridAlertDataDetails] NOLOCK
			WHERE GridAlertDataId = @prevId
			EXCEPT
			SELECT Key1, Key2, Key3, Key4, 0 AS [Order], -1 as [Type]
			FROM [app].[GridAlertDataDetails] NOLOCK
			WHERE GridAlertDataId = @lastId)
		) AS tmp

		IF (@type = 'pipeline')
		BEGIN
			-- If records differ only by key4 (standard indication id) it means that we start using key4 and 
			-- the previous records don't use it yet, so we delete them
			SELECT Key1, Key2, Key3, SUM([Type]) [Type]
			INTO #Key4Transition
			FROM #T
			GROUP BY Key1, Key2, Key3
			HAVING SUM([Type]) = 0

			DELETE t 
			FROM #T t INNER JOIN #Key4Transition c ON t.Key1 = c.Key1 AND t.Key2 = c.Key2 AND t.Key3 = c.Key3 
			WHERE t.[Type] IN (-1,1)

			SELECT Key1, Key3, Key4, SUM([Type]) [Type]
			INTO #Key4Transition2
			FROM #T
			GROUP BY Key1, Key3, Key4
			HAVING SUM([Type]) = 0

			DELETE t 
			FROM #T t INNER JOIN #Key4Transition2 c ON t.Key1 = c.Key1 AND t.Key3 = c.Key3 AND t.Key4 = c.Key4 
			WHERE t.[Type] IN (-1,1)

			SELECT Key1, Key2, SUM([Type]) [Type] 
			INTO #Changed
			FROM #T 
			GROUP BY Key1, Key2 
			HAVING SUM([Type]) = 0
			
			DELETE t 
			FROM #T t INNER JOIN #Changed c ON t.Key1 = c.Key1 AND t.Key2 = c.Key2 
			WHERE t.[Type] = -1

			UPDATE t SET
			t.[Type] = 0
			FROM #T t INNER JOIN #Changed c ON t.Key1 = c.Key1 AND t.Key2 = c.Key2 
			WHERE t.[Type] = 1
		END

		SELECT * FROM #T
	END 
	ELSE IF(@prevId IS null) 
	BEGIN 
		RETURN 0
	END
	ELSE BEGIN 
		RETURN 0
	END
END
GO
/****** Object:  StoredProcedure [app].[spMetatag_Lookup_Ext]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [app].[spMetatag_Lookup_Ext]
	@SearchStr varchar(255)='',
	@SearchFlag int=31
AS
/*
Look up compamy name. target and or product name, separately or all at once
@SearchFlag
1 --CompanyName
2 --TargetName
4 --ProductName
8 --Disease Class
16 --Standard Indication
For combination use logical AND. Default all=1+2+4+8+16=31
*/
BEGIN
	SELECT DISTINCT OpeningTag, LookUpName, ClosingTag
	FROM (
		SELECT	'<company>' AS OpeningTag,
				CompanyName
				+ CASE
				WHEN IsActive = 'No'
				THEN ' (Previous name)'
				ELSE ''
				END AS LookupName,
				'</company>' AS ClosingTag
		FROM	dbo.DimCompany c
		WHERE c.IsCurrent = 'Yes' -- Altered by O.Stepanovskiy per US 16174 on 04/06/2021
		UNION ALL
		SELECT
			'<mt>' AS OpeningTag,
			ISNULL(NULLIF(RTRIM(LegacyTargetName), ''), [MolecularTargetName]) AS LookUpName,
			'</mt>' AS ClosingTag
		FROM dbo.DimMolecularTarget
		UNION ALL
	
		SELECT
			'<prod>' AS OpeningTag,
			p.Name AS LookUpName,
			'</prod>' AS ClosingTag
		FROM dbo.DimProduct p
		WHERE NOT EXISTS (
			SELECT 1
			FROM app.LinkifyIgnoreOrigin l
			WHERE l.[Type] = 'product'
			  AND l.[EntityId] = p.ProductId
		)
		UNION ALL
	
		SELECT
			'<dc>' AS OpeningTag,
			DiseaseCategoryName AS LookUpName,
			'</dc>' AS ClosingTag
		FROM dbo.DimDiseaseCategory
		UNION ALL
		SELECT
			'<dc>' + DiseaseCategory + '<ind>'AS OpeningTag,
			StandardIndicationName AS LookUpName,
			'</ind></dc>' AS ClosingTag
		FROM dbo.DimStandardIndication
	) a
	ORDER BY LookUpName
END
GO
/****** Object:  StoredProcedure [app].[spNameFinder]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [app].[spNameFinder] 
	@search VARCHAR(256),
	@exchangeTickerOption INT  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT DISTINCT v.SearchedName 
	FROM (
		SELECT a.CompanyName + 
			CASE 
			WHEN @exchangeTickerOption = 1 AND (ExchangeTicker1 IS NOT NULL OR ExchangeTicker2 IS NOT NULL) 
				THEN ' (' + CONCAT_WS('; ', ExchangeTicker1, ExchangeTicker2 ) + ')' 
				ELSE '' 
			END AS SearchedName 
		FROM ( 
		
			SELECT	C.CompanyName,
					CASE WHEN m1.EditorialAbbr IS NOT NULL AND ET.Ticker IS NOT NULL THEN m1.EditorialAbbr + ':' + ET.Ticker ELSE NULL END ExchangeTicker1,
					CASE WHEN m2.EditorialAbbr IS NOT NULL AND ET2.Ticker IS NOT NULL THEN m2.EditorialAbbr + ':' + ET2.Ticker ELSE NULL END ExchangeTicker2 
			FROM	[dbo].[DimCompany] C
				LEFT OUTER JOIN dbo.DimStockTicker AS ET ON C.CompanyKey = ET.CompanyKey AND ET.IsPrimary='Yes'
				LEFT OUTER JOIN app.DimExchangeEditorialMap AS M1 ON et.Exchange = m1.Abbr 
				LEFT OUTER JOIN dbo.DimStockTicker AS ET2 ON C.CompanyKey = ET2.CompanyKey AND ET2.IsPrimary='No'
				LEFT OUTER JOIN app.DimExchangeEditorialMap AS M2 ON et2.Exchange = m2.Abbr 
		) a

		UNION ALL

		SELECT	LegacyTargetName
		FROM	[dbo].[DimMolecularTarget]
	
		UNION ALL

		SELECT	Name /* + 
				CASE WHEN BrandName IS NOT NULL THEN ', ' + BrandName ELSE '' END +
				CASE WHEN ChemicalName IS NOT NULL THEN ', ' + ChemicalName ELSE '' END +
				CASE WHEN CompoundName IS NOT NULL THEN ', ' + CompoundName ELSE '' END +
				CASE WHEN FormerCompoundName IS NOT NULL THEN ', ' + FormerCompoundName ELSE '' END +
				CASE WHEN GenericName IS NOT NULL THEN ', ' + GenericName ELSE '' END +
				CASE WHEN FormerGenericName IS NOT NULL THEN ', ' + FormerGenericName ELSE '' END +
				CASE WHEN InformalName IS NOT NULL THEN ', ' + InformalName ELSE '' END +
				CASE WHEN OtherName IS NOT NULL THEN ', ' + OtherName ELSE '' END +
				CASE WHEN FormerName IS NOT NULL THEN ', ' + FormerName ELSE '' END*/
		FROM	[dbo].[DimProduct]
	
		UNION ALL

		SELECT	DiseaseCategoryName
		FROM	[dbo].[DimDiseaseCategory]
	
		UNION ALL

		SELECT	StandardIndicationName
		FROM	[dbo].[DimStandardIndication]

	) v

	WHERE v.SearchedName LIKE '%' + @search + '%'
	ORDER BY 1
END
GO
/****** Object:  StoredProcedure [app].[spPopulate_DealAsset_to_Company]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [app].[spPopulate_DealAsset_to_Company] 
AS
TRUNCATE TABLE [dbo].[DealAsset_to_Company];

INSERT INTO [dbo].[DealAsset_to_Company]
     	  (DealKey,
           DealAssetKey,
           CompanyKey,
           CompanyRole,
           Responsibilities,
           CompanyRank,
           CreatedDate,
           ModifiedDate,
           CreatedProcessID,
           ModifiedProcessID,
           MarketValue,
           MarketValueDate,
           DatePrior,
           StockPricePrior,
           StockPricePriorUSD,
           SwapRate,
           SharesIssued,
           SharesOutstanding,
           ExchangeRate,
           StockValue,
           CashValue,
           CompanyHQCountryID,
           CurrencyID,
           CompanyTypeID,
           OwnershipID,
           ExchangeID1,
           ExchangeID2,
           Ticker1,
           Ticker2,
           SharesOutstandingDate,
           PctOwnership)

SELECT 
	DealKey,
    DealAssetKey,
    CompanyKey,
    CompanyRole,
    Responsibilities,
    CompanyRank,
    CreatedDate,
    ModifiedDate,
    CreatedProcessID,
    ModifiedProcessID,
    MarketValue,
    MarketValueDate,
    DatePrior,
    StockPricePrior,
    StockPricePriorUSD,
    SwapRate,
    SharesIssued,
    SharesOutstanding,
    ExchangeRate,
    StockValue,
    CashValue,
    CompanyHQCountryID,
    CurrencyID,
    CompanyTypeID,
    OwnershipID,
    ExchangeID1,
    ExchangeID2,
    Ticker1,
    Ticker2,
    SharesOutstandingDate,
    PctOwnership 

FROM
(
	SELECT -- DISTINCT
			COALESCE(da.DealKey,-1) AS DealKey,
			COALESCE(da.DealAssetKey,-1) AS DealAssetKey,
			COALESCE(c.CompanyKey ,-1) AS CompanyKey,			
			CompanyRole ,
			Responsibilities ,
			CompanyRank ,
			da.CreatedDate ,
			da.ModifiedDate ,
			COALESCE(da.CreatedProcessID ,-1) AS CreatedProcessID,
			COALESCE(da.ModifiedProcessID,-1) AS ModifiedProcessID,
			MarketValue ,
			MarketValueDate ,
			DatePrior ,
			StockPricePrior ,
			StockPricePriorUSD ,
			SwapRate ,
			SharesIssued ,
			SharesOutstanding ,
			ExchangeRate ,
			StockValue ,
			CashValue ,
			CompanyHQCountryID ,
			CurrencyID ,
			CompanyTypeID ,
			OwnershipID ,
			ExchangeID1 ,
			ExchangeID2 ,
			Ticker1 ,
			Ticker2 ,
			SharesOutstandingDate ,
			PctOwnership,
			dac.Legacy_CompanyID,
			c.IsCurrent,
			c.[ParentCompanyKey],
			dac.DealID,
			dac.AssetID,
			ROW_NUMBER() OVER(PARTITION BY dac.AssetID,dac.Legacy_CompanyID
					ORDER BY dac.Legacy_CompanyID,c.CompanyKey) as rn
	FROM 
	app.BCIQ_Deal_to_Company_Leaf dac
		--INNER JOIN 
		LEFT OUTER JOIN
			dbo.FactDealAssets da
				ON dac.AssetID = da.AssetID
				AND dac.DealID = da.DealID
		--INNER JOIN 
		LEFT OUTER JOIN
			dbo.FactDeals d
			ON da.DealID = d.DealID
		--INNER JOIN 
		LEFT OUTER JOIN
			dbo.DimCompany c
			ON dac.Legacy_CompanyID = c.Legacy_CompanyID
			AND d.DateAnnounced between c.EffectiveStartDate and c.EffectiveEndDate
				) t
WHERE rn=1

			
GO
/****** Object:  StoredProcedure [app].[spSiteMapXmlCompanies]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [app].[spSiteMapXmlCompanies] @domain nvarchar(255)
as

begin

SET NOCOUNT ON;

--declare @domain nvarchar(255) = 'http://bciq.biocentury.com/companies/';

declare @xml xml;

with txml as (

select
1 as [Tag],
NULL AS [Parent],
'http://www.sitemaps.org/schemas/sitemap/0.9' [urlset!1!xmlns],
'http://www.w3.org/2001/XMLSchema' [urlset!1!xmlns:xsd],
'http://www.w3.org/2001/XMLSchema-instance' [urlset!1!xmlns:xsi],
'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd' [urlset!1!xsi:schemaLocation],
null as [url!2!loc!element],
null as [url!2!lastmod!element],
null as [url!2!changefreq!element],
null as [url!2!priority!element]

union

select
2 as [Tag],
1 as [Parent],
null [urlset!1!xmlns],
null [urlset!1!xmlns:xsd],
null [urlset!1!xmlns:xsi],
null [urlset!1!xsi:schemaLocation],
@domain + c.EncodedCompanyname as [url!2!loc!element],
c.LastUpdated as [url!2!lastmod!element],
'daily' as [url!2!changefreq!element],
0.5 as [url!2!priority!element]
from mv.vwCompanyGeneralInfo c

)

select @xml = (
select * from txml order by Tag, [url!2!loc!element]

FOR XML EXPLICIT
)

select @xml



end
GO
/****** Object:  StoredProcedure [app].[spSiteMapXmlDiseases]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [app].[spSiteMapXmlDiseases] @domain nvarchar(255)
as

begin

SET NOCOUNT ON;

declare @xml xml;

with txml as (

select
1 as [Tag],
NULL AS [Parent],
'http://www.sitemaps.org/schemas/sitemap/0.9' [urlset!1!xmlns],
'http://www.w3.org/2001/XMLSchema' [urlset!1!xmlns:xsd],
'http://www.w3.org/2001/XMLSchema-instance' [urlset!1!xmlns:xsi],
'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd' [urlset!1!xsi:schemaLocation],
null as [url!2!loc!element],
null as [url!2!lastmod!element],
null as [url!2!changefreq!element],
null as [url!2!priority!element]

union

select distinct
2 as [Tag],
1 as [Parent],
null [urlset!1!xmlns],
null [urlset!1!xmlns:xsd],
null [urlset!1!xmlns:xsi],
null [urlset!1!xsi:schemaLocation],
@domain + app.fnURL_Strip(t.DiseaseCategoryName) as [url!2!loc!element],
t.ModifiedDate as [url!2!lastmod!element],
'daily' as [url!2!changefreq!element],
0.5 as [url!2!priority!element]
from dbo.DimDiseaseCategory t

)

select @xml = (
select * from txml order by Tag, [url!2!loc!element]

FOR XML EXPLICIT
)

select @xml



end
GO
/****** Object:  StoredProcedure [app].[spSiteMapXmlProducts]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [app].[spSiteMapXmlProducts] @domain nvarchar(255)
as

begin

SET NOCOUNT ON;

declare @xml xml;

with txml as (

select
1 as [Tag],
NULL AS [Parent],
'http://www.sitemaps.org/schemas/sitemap/0.9' [urlset!1!xmlns],
'http://www.w3.org/2001/XMLSchema' [urlset!1!xmlns:xsd],
'http://www.w3.org/2001/XMLSchema-instance' [urlset!1!xmlns:xsi],
'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd' [urlset!1!xsi:schemaLocation],
null as [url!2!loc!element],
null as [url!2!lastmod!element],
null as [url!2!changefreq!element],
null as [url!2!priority!element]

union

select distinct
2 as [Tag],
1 as [Parent],
null [urlset!1!xmlns],
null [urlset!1!xmlns:xsd],
null [urlset!1!xmlns:xsi],
null [urlset!1!xsi:schemaLocation],
@domain + app.fnURL_Strip(t.[Name]) as [url!2!loc!element],
t.ModifiedDate as [url!2!lastmod!element],
'daily' as [url!2!changefreq!element],
0.5 as [url!2!priority!element]
from dbo.DimProduct t
)

select @xml = (
select * from txml order by Tag, [url!2!loc!element]

FOR XML EXPLICIT
)

select @xml



end
GO
/****** Object:  StoredProcedure [app].[spSiteMapXmlStandardIndications]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [app].[spSiteMapXmlStandardIndications] @domain nvarchar(255)
as

begin

SET NOCOUNT ON;

declare @xml xml;

with txml as (

select
1 as [Tag],
NULL AS [Parent],
'http://www.sitemaps.org/schemas/sitemap/0.9' [urlset!1!xmlns],
'http://www.w3.org/2001/XMLSchema' [urlset!1!xmlns:xsd],
'http://www.w3.org/2001/XMLSchema-instance' [urlset!1!xmlns:xsi],
'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd' [urlset!1!xsi:schemaLocation],
null as [url!2!loc!element],
null as [url!2!lastmod!element],
null as [url!2!changefreq!element],
null as [url!2!priority!element]

union

select distinct
2 as [Tag],
1 as [Parent],
null [urlset!1!xmlns],
null [urlset!1!xmlns:xsd],
null [urlset!1!xmlns:xsi],
null [urlset!1!xsi:schemaLocation],
@domain + app.fnURL_Strip(t.StandardIndicationName) as [url!2!loc!element],
t.ModifiedDate as [url!2!lastmod!element],
'daily' as [url!2!changefreq!element],
0.5 as [url!2!priority!element]
from [DimStandardIndication] t

)

select @xml = (
select * from txml order by Tag, [url!2!loc!element]

FOR XML EXPLICIT
)

select @xml

end
GO
/****** Object:  StoredProcedure [app].[spSiteMapXmlTargets]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [app].[spSiteMapXmlTargets] @domain nvarchar(255)
as

begin

SET NOCOUNT ON;

declare @xml xml;
--declare @dt date = GETUTCDATE();


with txml as (

select
1 as [Tag],
NULL AS [Parent],
'http://www.sitemaps.org/schemas/sitemap/0.9' [urlset!1!xmlns],
'http://www.w3.org/2001/XMLSchema' [urlset!1!xmlns:xsd],
'http://www.w3.org/2001/XMLSchema-instance' [urlset!1!xmlns:xsi],
'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd' [urlset!1!xsi:schemaLocation],
null as [url!2!loc!element],
null as [url!2!lastmod!element],
null as [url!2!changefreq!element],
null as [url!2!priority!element]

union

select
2 as [Tag],
1 as [Parent],
null [urlset!1!xmlns],
null [urlset!1!xmlns:xsd],
null [urlset!1!xmlns:xsi],
null [urlset!1!xsi:schemaLocation],
@domain + t.MolecularTargetFamilyName as [url!2!loc!element],
t.ModifiedDate as [url!2!lastmod!element],
'daily' as [url!2!changefreq!element],
0.5 as [url!2!priority!element]
from 
(
select app.fnURL_Strip(t.MolecularTargetFamily_Name) + '_(family)' as MolecularTargetFamilyName, max(t.ModifiedDate) as ModifiedDate
from dbo.DimMolecularTarget t 
where t.MolecularTargetFamily_Name is not null
group by t.MolecularTargetFamily_Name
union
select app.fnURL_Strip(t.MolecularTargetName) as MolecularTargetFamilyName, t.ModifiedDate FROM	dbo.DimMolecularTarget t 
)t

)

select @xml = (
select * from txml order by Tag, [url!2!loc!element]

FOR XML EXPLICIT
)

select @xml



end
GO
/****** Object:  StoredProcedure [dbo].[PopulateCompanyHistory]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PopulateCompanyHistory]
AS

TRUNCATE TABLE CompanyHistory;
INSERT  INTO CompanyHistory
SELECT  ch.*

FROM   
	 ( SELECT ---TOP 1000
                    CompanyKey
            FROM     dbo.DimCompany
        ) c
        CROSS APPLY dbo.fnCompanyHistory(c.CompanyKey) ch;
GO
/****** Object:  StoredProcedure [dbo].[usp_PopulateCompanyHistory_NT]    Script Date: 5/21/2023 10:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[usp_PopulateCompanyHistory_NT]
AS
-- No CompanyHistory truncation --> NT
INSERT  INTO CompanyHistory
SELECT  ch.*
FROM   
	 ( SELECT
       CompanyKey
       FROM     dbo.DimCompany
      ) c
        CROSS APPLY dbo.fnCompanyHistory(c.CompanyKey) ch;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "f"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 283
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ftf"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 302
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwInvestmentBankers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwInvestmentBankers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "f"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 283
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ftf"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 302
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwInvestors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwInvestors'
GO
USE [master]
GO
ALTER DATABASE [BCIQ_DW] SET  READ_WRITE 
GO
