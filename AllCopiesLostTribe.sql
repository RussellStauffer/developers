USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[AllCopiesLostTribe]    Script Date: 3/31/2017 4:06:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AllCopiesLostTribe]
AS

SELECT BC.BranchID, L.BranchName, BC.No_Of_Copies AS 'Copies Of The Lost Tribe'
FROM tbl_Book_Copies BC
RIGHT JOIN tbl_Book B
ON BC.BookID = B.BookId
JOIN tbl_Library_Branch L
ON BC.BranchID = L.BranchID
WHERE B.Title = 'The Lost Tribe'