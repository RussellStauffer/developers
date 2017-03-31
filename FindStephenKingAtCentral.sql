USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[FindStephenKingAtCentral]    Script Date: 3/31/2017 4:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[FindStephenKingAtCentral]
AS


SELECT B.Title, BC.No_Of_Copies
FROM tbl_Book B
JOIN tbl_Book_Copies BC 
ON B.BookID = BC.BookID
JOIN tbl_BookAuthor BA
ON B.BookID = BA.BookID
WHERE BC.BranchID = 1 AND BA.AuthorName = 'Stephen King'

GROUP BY B.BookId, B.Title, BC.No_Of_Copies
