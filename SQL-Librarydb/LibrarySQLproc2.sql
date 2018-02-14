CREATE PROCEDURE Problem2 
@Title varchar(100)
AS
SELECT Copies.nof_copies, Book.book_title, Branch.branch_name
FROM Copies
INNER JOIN Book ON Copies.book_id = Book.book_id
INNER JOIN Branch ON Copies.branch_id = Branch.branch_id
WHERE book_title = @Title  
GO

EXECUTE [dbo].[Problem2] @Title = 'The Lost Tribe'