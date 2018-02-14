CREATE PROCEDURE Problem1
 @Branch VARCHAR(20),
 @Title VARCHAR(100)
AS
SELECT Copies.nof_copies, Book.book_title, Branch.branch_name
FROM Copies
INNER JOIN Book ON Copies.book_id = Book.book_id
INNER JOIN Branch ON Copies.branch_id = Branch.branch_id
WHERE book_title = @Title AND branch_name = @Branch 
GO

EXECUTE [dbo].[Problem1] @Branch = 'Sharpstown', @Title = 'The Lost Tribe'