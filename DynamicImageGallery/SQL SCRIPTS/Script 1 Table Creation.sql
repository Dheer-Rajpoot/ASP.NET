-- Table Creation Script

/****** Object:  Table [dbo].[tblGallery]    Script Date: 10/05/2013 21:17:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblGallery](
	[GalleryId] [int] IDENTITY(1,1) NOT NULL,
	[GalleryName] [varchar](50) NOT NULL,
	[GalleryDescription] [varchar](500) NOT NULL,
	[GalleryCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GalleryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

--
