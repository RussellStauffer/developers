USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[BookCountByBranchAndTitle]    Script Date: 3/31/2017 4:12:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[BookCountByBranchAndTitle]
@BranchName VARCHAR(20),
@Title VARCHAR(60)
AS
SELECT LB.BranchName, BK.Title, BC.No_Of_Copies
FROM tbl_Book_Copies BC
JOIN tbl_Book BK
ON BC.BookID = BK.BookID
JOIN tbl_Library_Branch LB
ON BC.BranchID = LB.BranchID
WHERE LB.BranchName = @BranchName AND BK.Title = @Title