CREATE PROCEDURE Problem6
AS
SELECT COUNT(DISTINCT Loan.book_id), Borrower.borrower_name, Borrower.borrower_address
FROM Loan 
INNER JOIN Borrower ON Loan.card_no = Borrower.card_no
GROUP BY borrower_name, borrower_address

EXECUTE [dbo].[Problem6]
/*
When I run this it outputs all Loans
*/