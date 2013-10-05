-- Stored Procedure

/****** Object:  StoredProcedure [dbo].[usp_CreateNewGallery]    Script Date: 10/05/2013 21:18:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CreateNewGallery]
	-- Add the parameters for the stored procedure here
	(
	@GalleryName varchar(50),
	@GalleryDescription varchar(500),
	@GalleryCreatedDate datetime,
	@MaxGalleryId int output 
	)
AS
BEGIN
	
	insert into tblGallery values (@GalleryName,@GalleryDescription,@GalleryCreatedDate)
	Select @MaxGalleryId= MAX(GalleryId)from tblGallery
	
END

GO


