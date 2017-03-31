USE [dbLibrary]
GO
/****** Object:  StoredProcedure [dbo].[MoreThanFiveBooksOut]    Script Date: 3/31/2017 4:18:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[MoreThanFiveBooksOut]
AS

SELECT B.Name, B.[Address], COUNT(*) AS 'Books Out'
FROM tbl_Borrower B
JOIN tbl_Book_Loans L
ON B.CardNo = L.CardNo
GROUP BY B.Name, B.[Address]
HAVING COUNT(L.CardNo) > 5