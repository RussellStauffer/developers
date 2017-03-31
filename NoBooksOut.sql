USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[NoBooksOut]    Script Date: 3/31/2017 4:19:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[NoBooksOut]
AS

SELECT BO.Name, BO.CardNo 
FROM tbl_Borrower BO
LEFT OUTER JOIN tbl_Book_Loans BL
ON BO.CardNo = BL.CardNo
WHERE BL.CardNo is NULL;