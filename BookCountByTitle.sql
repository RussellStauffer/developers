USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[BookCountByTitle]    Script Date: 3/31/2017 4:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[BookCountByTitle]
@Title VARCHAR(60)
AS

SELECT LB.BranchName, BC.No_Of_Copies
FROM tbl_Book_Copies BC
JOIN tbl_Book BK
ON BC.BookID = BK.BookID
JOIN tbl_Library_Branch LB
ON BC.BranchID = LB.BranchID
WHERE BK.Title = @Title
