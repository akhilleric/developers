--FINAL LIBRARY DATABASE--

/*
CREATING TABLES
*/

CREATE TABLE Publisher(
	publisher_id int NOT NULL PRIMARY KEY IDENTITY (1000,1),
	publisher_name VARCHAR (100) NOT NULL,
	publisher_address VARCHAR (100) NULL, 
	publisher_phone VARCHAR (100)  NULL
);

CREATE TABLE Book(
	book_id int NOT NULL PRIMARY KEY IDENTITY (1,1),
	book_title VARCHAR (100) NOT NULL,
	book_publisher int NOT NULL CONSTRAINT fk_book_publisher_id FOREIGN KEY REFERENCES Publisher(publisher_id)
);

CREATE TABLE Branch(
	branch_id int NOT NULL PRIMARY KEY IDENTITY (100,1),
	branch_name VARCHAR (20) NOT NULL,
	branch_address VARCHAR (30) NOT NULL
);

CREATE TABLE Borrower(
	card_no int NOT NULL PRIMARY KEY IDENTITY (2000,1),
	borrower_name VARCHAR (30) NOT NULL,
	borrower_address VARCHAR (30) NOT NULL,
	borrower_phone VARCHAR(20) NOT NULL
);

CREATE TABLE Author(
	book_id int NOT NULL CONSTRAINT fk_book_id_author FOREIGN KEY REFERENCES Book(book_id),
	author_name VARCHAR (100) NOT NULL
);
SELECT * FROM Copies
DROP TABLE Copies
CREATE TABLE Copies(
	book_id int NOT NULL CONSTRAINT fk_book_id_copies FOREIGN KEY REFERENCES Book(book_id),
	branch_id int NOT NULL CONSTRAINT fk_branch_id_copies FOREIGN KEY REFERENCES Branch(branch_id),
	nof_copies int NOT NULL
);
DROP TABLE Loan
CREATE TABLE Loan(
	book_id int NOT NULL CONSTRAINT fk_book_id_loan FOREIGN KEY REFERENCES Book(book_id),
	branch_id int NOT NULL CONSTRAINT fk_branch_id_loan FOREIGN KEY REFERENCES Branch(branch_id),
	card_no int NOT NULL CONSTRAINT fk_card_no_loan FOREIGN KEY REFERENCES Borrower(card_no),
	date_out VARCHAR (30),  
	date_due VARCHAR (30)
);

/* 
INSERTING INTO TABLES
*/
	
	INSERT INTO Publisher
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Viking Press', '2344 Line Drive','343-222-3334'),
	('Doubleday', '3211 Hang Street', '776-654-2342'),
	('New American Library', '322 Frank Drive', '567-234-2343'),
	('Picador USA', '3211 Rug View', '562-656-4324'),
	('Charles Scribners Sons', '4322 Yellow Drive', '656-193-9246'),
	('Scribner', '211 Green Street', '790-871-8323'),
	('St. Martins Press', '3111 Pulitzer Corner', '971-232-8877'),
	('Pearson', '900 Apple Drive', '282-433-5656'),
	('HarperCollins Publishers', '3111 Pink Blvd', '109-882-2363'),
	('Barnes & Noble', '1111 Value Street', '904-499-4433'),
	('Grand Central Publishing', '213 Ball Corner','923-898-4433'),
	('Andrews McMeel Publishing', '4322 Hot Street','789-123-2233'),
	('Random House Publishing Group', '8999 Gee Street','987-432-4321'),
	('Washington Square Press', '992 Hank Veiw','491-333-4343'),
	('Crown/Archetype', '2111 Yod Corner','902-112-2322'),
	('Knopf DoubleDay Pusblishing Group', '1112 Gundry Drive','745-123-4322'),
	('Diversified Publishing', '3211 Main Street','507-887-3443'),
	('Penguin Publishing Group', '3423 Via View','209-222-3232'),
	('Little, Brown and Company', '5732 Concrete Bldg','908-967-4433'),
	('Atria/Emily Bestler Books', '8922 Bang Corner','212-090-9898'),
	('Random House Childrens Books', '4111 Tyro View','322-322-4545'),
	('Penguin Young Readers Group', '9988 Concord Street','908-675-7676'),
	('ibooks,Incoporated', '3444 Gab Blvd','209-878-9999'),
	('Simon Pulse', '2321 Yank Drive', '287-876-0987'),
	('Simon & Schuster', '9893 Freida Drive','908-89-8765')
;

INSERT INTO Branch
	(branch_name, branch_address)
	VALUES
	('Sharpstown', '444 Sharp Street/Portland'),
	('Central', '299 Broadway/Beaverton'),
	('Point', '664 Coast Blvd/Hillsboro'),
	('Yates', '244 Cedar Hill/Portland')
;

INSERT INTO Borrower
	(borrower_name, borrower_address, borrower_phone)
	VALUES
	('Jon Smith', '222 Alpine Drive', '700-232-2322'),
	('Jerry Friter', '432 Smithy Street', '222-232-5545'),
	('Smantha Banes', '89 Bellway Ave.', '908-232-1111'),
	('Frances Kit', '888 Halpert Drive', '766-787-2322'),
	('Bill Jur', '1000 Highway Drive', '123-343-2343'),
	('Hang Gyle', '224 Hank Street', '887-432-1132'),
	('Freddy Tweed', '555 Pancake Ave', '764-478-3422'),
	('Harriet Brine', '9090 Seminar Drive', '957-234-1122'),
	('Roth Tyne', '1212 Frankfurt View', '543-666-4444'),
	('Pip Mcdear', '1111 Bead Street', '532-222-2232'),
	('Quincy Alberts', '8999 Red Corner', '153-342-2322'),
	('Missy Moe', '909 Yellow Street', '896-432-1212'),
	('Freeta Franks', '1122 Green View', '321-655-4333'),
	('Halley Juno', '334 Ice Corner', '777-433-3222'),
	('Mio Kaji', '8999 Dock View', '665-654-4323'),
	(',Brutus Tyx', '112 Gates Drive', '432-261-1644'),
	('Canter Beegot', '999 Pan Street', '756-432-6234'),
	('Walter Harolds', '888 Centenial Bldg', '546-754-4326'),
	('Max Young', '1112 Nest Corner', '865-754-2234'),
	('Connie Mathers', '1233 Purple Drive', '762-234-2754')
;

INSERT INTO Author
	(book_id, author_name)
	VALUES
	(1, 'Stephen King'),
	(2, 'Stephen King'),
	(3, 'Stephen King'),
	(4, 'Stephen King'), 
	(5, 'Mark Lee'),
	(6, 'Ernest Hemingway'),
	(7, 'Margareta Magnusson'),
	(8, 'B. A. Paris'),
	(9, 'Kerin Roger'),
	(10, 'Andre Aciman'),
	(11, 'Victoria Aveyard'),
	(12,'Paulo Coelho'),
	(13, 'Harper Lee'),
	(14, 'Anthony Doerr'),
	(15, 'Harper Lee'),
	(16, 'F. Scott Fitzgerald'),
	(17, 'Mark Twain'),
	(18, 'Douglas Preston'),
	(19, 'Rupi Kaur' ),
	(20, 'Rupi Kaur'),
	(21, 'Jesmyn Ward'),
	(22, 'Kristin Hannah'),
	(23, 'Sara Gruen'),
	(24,'Anne Tyler'),
	(25, 'Cynthia DAprix'),
	(26, 'Fredrik Backman'),
	(27, 'Gillian Flynn'),
	(28, 'Cormac McCarthy'),
	(29, 'Margaret Atwood'),
	(30, 'Min Jin Lee'),
	(31, 'Amor Towles'),
	(32, 'Paula McLain'),
	(33, 'Paula McLain'),
	(34, 'Amor Towles'),
	(35, 'Ritesh Batra'),
	(36, 'Chad Harbach'),
	(37, 'William Landay'),
	(38, 'Jodi Picoult'),
	(39, 'Jodi Picoult'),
	(40, 'Tea Obreht'),
	(41, 'Erin Morgenstern'),
	(42, 'Veronica Roth'),
	(43, 'James Dashner'),
	(44, 'John Green'),
	(45, 'John Green'),
	(46, 'Jay Asher'),
	(47, 'Gayle Forman'),
	(48, 'Laurie Halse Anderson'),
	(49, 'Beatrice Sparks'),
	(50, 'Rhonda Byrne'),
	(51, 'Jennifer McMahon'),
	(52, 'Gillian Flynn'),
	(53, 'Ray Bradbury'),
	(54, 'J. D. Salinger'),
	(55, 'Sylvia Plath'),
	(56, 'Toni Morrison'),
	(57, 'Toni Morrison')
;
SELECT * FROM Book
INSERT INTO BooK
	(book_title, book_publisher)
	VALUES
	('Misery', 1000),
	('The Stand', 1001),
	('The Green Mile', 1002),
	('Cujo', 1000),
	('The Lost Tribe', 1003),
	('For Whom the Bell Tolls', 1004),
	('The Gentle Art of Swedish Death Cleaning', 1005),
	('Behind Closed Doors', 1006),
	('Strategic Marketing Problems', 1007),
	('Call Me By Your Name', 1003),
	('Kings Cage', 1008),
	('The Alchemist', 1008),
	('To Kill A Mockingbird', 1008),
	('All the Light We Cannot See', 1005),
	('Go Set A Watchman', 1008),
	('The Great Gatsby', 1005),
	('Adventures of Huckleberry Fin', 1009),
	('City of Endless Night', 1010),
	('Milk and Honey', 1011),
	('The Sun and Her Flowers', 1011),
	('Sing, Unburied, Sing', 1005),
	('The Nightingale', 1006),
	('At the Waters Edge', 1012),
	('A Spool of Blue Thread', 1012),
	('The Nest', 1008),
	('A Man Called Ove', 1013),
	('Gone Girl', 1014),
	('The Road', 1015),
	('The Handmaids Tale', 1015),
	('Pachinko',1010),
	('A Gentleman in Moscow',1016),
	('Circling the Sun', 1012),
	('The Paris Wife', 1012),
	('Rules of Civility', 1017),
	('The Sense of an Ending', 1015),
	('The Art of Fielding', 1018),
	('Defending Jacob', 1012),
	('Lone Wolf', 1019),
	('Sing You Home', 1019),
	('The Tigers Wife', 1012),
	('The Night Circus',1015),
	('Divergent', 1008),
	('The Maze Runner', 1020),
	('The Fault in Our Stars', 1021),
	('Paper Towns', 1021),
	('Thirteen Reasons Why', 1021),
	('If I Stay', 1021),
	('Wintergirls', 1021),
	('Go Ask Alice', 1023),
	('The Secret', 1022),
	('The Night Sister', 1015),
	('Dark Places', 1014),
	('Fahrenheit 451', 1024),
	('The Catcher in the Rye', 1018),
	('The Bell Jar', 1008),
	('Beloved', 1015),
	('Song of Solomon',1015)
;
SELECT * FROM Copies
INSERT INTO Copies
(book_id, branch_id, nof_copies)
VALUES
(1, 100, 2),
(1, 101, 2),
(1, 102, 2),
(2, 101, 2),
(2, 102, 3),
(3, 101, 2),
(4, 102, 2),
(5, 100, 3),
(6, 101, 2),
(6, 100, 2),
(7, 100, 2),
(7, 101, 2),
(8, 101, 2),
(8, 102, 3),
(9, 100, 2),
(10, 100, 2),
(10, 102, 2), 
(11, 101, 2),
(11, 100, 2),
(12, 102, 2),
(13, 100, 3),
(14, 101, 2),
(15, 102, 2),
(16, 100, 2), 
(16, 101, 3),
(17, 101, 2),
(17, 102, 2),
(18, 100, 2),
(19, 101, 2),
(20, 102, 2),
(21, 100, 3), 
(22, 101, 2),
(23, 101, 3),
(24, 102, 2),
(25, 100, 2),
(26, 101, 2),
(27, 100, 2),
(28, 101, 2), 
(29, 102, 2),
(30, 100, 3),
(30, 101, 2),
(31, 102, 2),
(32, 102, 2),
(33, 100, 3),
(34, 101, 2), 
(35, 101, 2),
(36, 101, 2),
(36, 102, 2),
(37, 101, 3),
(38, 100, 3),
(39, 101, 3),
(40, 101, 3), 
(41, 102, 2),
(42, 100, 2),
(43, 100, 2),
(44, 101, 2),
(45, 101, 3),
(45, 102, 2),
(46, 100, 2), 
(47, 101, 3),
(48, 101, 2),
(49, 100, 2),
(50, 102, 2),
(51, 101, 3),
(52, 100, 2),
(53, 102, 3),
(54, 102, 2),
(55, 101, 2),
(56, 101, 2),
(57, 100, 3)
;
SELECT * FROM  copies, branch
SELECT * FROM Loan
INSERT INTO Loan
(book_id, branch_id, card_no, date_out, date_due)
VALUES
(1, 100, 2002, '2017-12-20', '2018-01-20'),
(2, 101, 2002, '2017-12-21', '2018-01-21'),
(3, 101, 2002, '2017-12-21', '2018-01-21'),
(4, 101, 2002, '2017-12-21', '2018-01-21'),
(5, 102, 2002, '2017-12-22', '2018-01-22'),
(6, 101, 2002, '2017-12-23', '2018-01-23'),
(6, 101, 2003, '2017-12-22', '2018-01-22'),
(7, 100, 2004, '2017-12-22', '2018-01-22'),
(1, 102, 2004, '2017-12-23', '2018-01-23'),
(8, 101, 2004, '2017-12-24', '2018-01-24'),
(9, 100, 2005, '2017-12-22', '2018-01-22'),
(10, 101, 2005, '2017-12-23','2018-01-23'),
(2,  101, 2005, '2017-12-23', '2018-01-23'),
(12, 102, 2006, '2017-12-23', '2018-01-23'),
(13, 100, 2006, '2017-12-25', '2018-01-25'),
(14, 101, 2006, '2017-12-26', '2018-01-26'),
(15, 102, 2006, '2017-12-27', '2018-01-27'),
(16, 100, 2007, '2017-12-24', '2018-01-24'),
(17, 101, 2007, '2017-12-25', '2018-01-25'),
(18, 100, 2008, '2017-12-24', '2018-01-24'),
(19, 101, 2008, '2017-12-25', '2018-01-25'),
(20, 102, 2008, '2017-12-26', '2018-01-26'),
(21, 100, 2009, '2017-12-24', '2018-01-24'),
(22, 101, 2009, '2017-12-25', '2018-01-25'),
(23, 101, 2010, '2017-12-25', '2018-01-25'),
(24, 102, 2010, '2017-01-26', '2018-01-26'),
(25, 100, 2011, '2017-01-23', '2018-01-23'),
(26, 101, 2011, '2017-01-24', '2018-01-24'),
(27, 100, 2012, '2017-01-24', '2018-01-24'),
(28, 100, 2012, '2017-01-24', '2018-01-24'),
(29, 102, 2012, '2017-01-25', '2018-01-25'),
(30, 100, 2013, '2017-01-16', '2018-01-16'),
(31, 102, 2013, '2017-01-17', '2018-01-17'),
(32, 102, 2013, '2017-01-17', '2018-01-17'),
(33, 100, 2014, '2017-01-19', '2018-01-19'),
(34, 101, 2015, '2017-01-20', '2018-01-20'),
(35, 101, 2016, '2017-01-18', '2018-01-18'),
(36, 101, 2017, '2017-01-15', '2018-01-15'),
(37, 102, 2017, '2017-01-16', '2018-01-16'),
(38, 100, 2017, '2017-01-17', '2018-01-17'),
(39, 101, 2017, '2017-01-19', '2018-01-19'),
(40, 101, 2017, '2017-01-19', '2018-01-19'),
(41, 102, 2017, '2017-01-20', '2018-01-20'),
(42, 100, 2018 , '2017-01-21', '2018-01-21'),
(43, 100, 2019 , '2017-01-21', '2018-01-21')
;


