CREATE PROCEDURE Problem7
@Author Varchar(100),
@Branch Varchar(20)
AS
SELECT Author.author_name, Book.book_title, Branch.branch_name, Copies.nof_copies
FROM Copies
INNER JOIN Book ON Copies.book_id = Book.book_id
INNER JOIN Branch ON Copies.branch_id = Branch.branch_id
INNER JOIN Author ON Book.book_id = Author.book_id 
WHERE author_name = @Author AND branch_name = @Branch
GO 

EXECUTE [dbo].[Problem7] @Author = 'Stephen King', @Branch = 'Central'
