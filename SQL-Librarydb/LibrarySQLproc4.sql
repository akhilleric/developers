CREATE PROCEDURE Problem4 
@Branch VARCHAR(20),
@Date VARCHAR(30)
AS
SELECT Loan.date_due, Branch.branch_name, Book.book_publisher, Borrower.borrower_name, Borrower.borrower_address
FROM Loan 
INNER JOIN Branch ON Loan.branch_id = Branch.branch_id
INNER JOIN Book ON Loan.book_id = Book.book_id
INNER JOIN Borrower ON Loan.card_no = Borrower.card_no
WHERE branch_name = @Branch AND date_due = @Date 

EXECUTE [dbo].[Problem4] @Branch = 'Sharpstown', @Date = '2018-01-22'