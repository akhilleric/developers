CREATE PROCEDURE Problem3
@Loan int 
AS
SELECT Borrower.borrower_name
FROM Borrower
INNER JOIN Loan ON Borrower.card_no = Loan.card_no
WHERE Loan.card_no = @Loan
GO 

EXECUTE [dbo].[Problem3] @Loan = NULL 