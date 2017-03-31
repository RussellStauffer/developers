USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[BooksOutByLibrary]    Script Date: 3/31/2017 4:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[BooksOutByLibrary]
AS

SELECT L.BranchID, L.BranchName, COUNT(BL.BranchID) AS 'Books Out'
FROM tbl_Book_Loans BL

JOIN tbl_Library_Branch L
ON BL.BranchID = L.BranchID

GROUP BY L.BranchID, L.BranchName
