USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[SharpstownDueToday]    Script Date: 3/31/2017 4:21:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SharpstownDueToday]
AS
SELECT BO.Name, BO.Address, BK.Title
FROM tbl_Borrower BO
JOIN tbl_Book_Loans BL
ON BO.CardNo = BL.CardNo
RIGHT JOIN tbl_Book BK
ON BL.BookID = BK.BookID
WHERE BL.DateDue = '2017-03-29'