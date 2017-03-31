USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[AllLibraryRoutines]    Script Date: 3/31/2017 4:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[AllLibraryRoutines]
AS

EXEC LostTribeAtSharpstown
EXEC AllCopiesLostTribe
EXEC NoBooksOut
EXEC SharpstownDueToday
EXEC BooksOutByLibrary
EXEC MoreThanFiveBooksOut
EXEC FindStephenKingAtCentral
