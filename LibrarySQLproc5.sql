CREATE PROCEDURE Problem5
AS
SELECT branch_name, book_title
FROM Loan
INNER JOIN Branch ON Loan.branch_id = Branch.branch_id 
INNER JOIN Book ON Loan.book_id = Book.book_id
GO

EXECUTE [dbo].[Problem5]