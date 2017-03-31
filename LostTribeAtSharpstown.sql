USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[LostTribeAtSharpstown]    Script Date: 3/31/2017 4:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[LostTribeAtSharpstown]
AS

SELECT LB.BranchName, BK.Title, BC.No_Of_Copies
FROM tbl_Book_Copies BC
JOIN tbl_Book BK
ON BC.BookID = BK.BookID
JOIN tbl_Library_Branch LB
ON BC.BranchID = LB.BranchID
WHERE LB.BranchName = 'Sharpstown' AND BK.Title = 'The Lost Tribe'