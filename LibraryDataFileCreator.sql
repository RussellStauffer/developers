CREATE TABLE tbl_Book
(BookID INT PRIMARY KEY NO NULL,
Title VARCHAR(60),
Publisher VARCHAR(30))
GO

INSERT INTO tbl_Book
INSERT INTO tblBook (BookID, Title, Publisher)
VALUES	(1,'The Lost Tribe','Penguin'),
		(2,'A Farewell To Arms', 'Scribners'),
		(3, 'The Longest Day', 'Doubleday'),
		(4, 'A Game of Thrones', 'Bantam'),
		(5, 'The Shining', ' Viking'),
		(6, 'The Innocents Abroad', 'Scribners'),
		(7, 'Slaughterhouse Five','Doubleday'),
		(8, 'Field of Dishonor', 'Baen'),
		(9, 'American Gods', 'W. M. Morrow'),
		(10, 'The Joy Luck Club', 'G. P. Putnam'),
		(11, 'From The Earth To The Moon', 'P. J. Hetzel'),
		(12, 'The War of the Worlds', 'Heinemann'),
		(13, 'Fahrenheit 451', 'Ballantine'),
		(14, 'To Sail, Beyond The Sunset', 'G. P. Putname'),
		(15, 'Wolves of the Calla', 'Grant'),
		(16, 'The Gunslinger', 'Grant'),
		(17, 'A Knight In Shining Armor','Doubleday'),
		(18, 'Dracula','Constable'),
		(19, 'Fifty Shades of Gray','Vintage'),
		(20, 'Ferro The Fire Dragon', 'Scholastic');
GO


CREATE TABLE tbl_Book_Copies
(BookID INT FOREIGN KEY,
BranchID int,
No_Of_Copies int)
GO

INSERT INTO tbl_Book_Copies (BookID, BranchID, No_Of_Copies)
VALUES(1,1,3),
(1,2,5),
(2,2,5),
(2,4,5),
(3,2,5),
(3,3,2),
(3,4,4),
(4,1,4),
(4,2,3),
(4,3,6),
(5,1,3),
(5,2,5),
(5,3,4),
(6,1,5),
(6,2,3),
(6,3,4),
(7,1,2),
(7,3,2),
(7,4,4),
(8,3,3),
(8,4,2),
(9,2,5),
(9,3,4),
(10,1,2),
(10,2,4),
(11,1,4),
(11,3,6),
(11,4,2),
(12,1,2),
(12,2,3),
(12,4,2),
(13,2,4),
(13,3,3),
(13,4,5),
(14,1,6),
(14,2,3),
(14,3,4),
(15,1,6),
(15,4,4),
(16,1,2),
(16,2,3),
(17,2,4),
(17,4,2),
(18,1,6),
(18,2,5),
(18,4,3),
(19,1,5),
(19,3,4),
(20,1,4),
(20,4,3)
;
GO

CREATE TABLE tbl_Book_Loans
(BookID INT FOREIGN KEY,
BranchID INT,
CardNo INT,
DateOut DATE,
DateDue DATE)
GO

INSERT INTO tbl_Book_Loans
VALUES
(1,1,8496,'2017-03-27','2017-04-10'),
(1,1,1775,'2017-03-15','2017-03-29'),
(2,4,16095,'2017-03-19','2017-04-02'),
(2,2,3129,'2017-03-15','2017-03-29'),
(2,2,7140,'2017-03-24','2017-04-07'),
(3,2,1775,'2017-03-14','2017-03-28'),
(4,1,13076,'2017-03-11','2017-03-25'),
(4,2,1775,'2017-03-17','2017-03-31'),
(4,3,13271,'2017-03-25','2017-04-08'),
(5,1,16095,'2017-03-15','2017-03-29'),
(5,3,13271,'2017-03-28','2017-04-11'),
(5,1,8346,'2017-03-12','2017-03-26'),
(5,2,8496,'2017-03-05','2017-03-19'),
(6,3,16882,'2017-03-04','2017-03-18'),
(7,3,7128,'2017-03-17','2017-03-31'),
(7,4,16095,'2017-03-19','2017-04-03'),
(8,3,7140,'2017-03-25','2017-04-08'),
(9,2,7140,'2017-03-03','2017-03-17'),
(10,1,7140,'2017-03-09','2017-03-23'),
(11,1,8496,'2017-03-15','2017-03-29'),
(11,3,7128,'2017-03-26','2017-04-09'),
(11,1,5396,'2017-03-18','2017-04-01'),
(12,2,16095,'2017-03-03','2017-03-17'),
(12,4,16882,'2017-03-08','2017-03-22'),
(12,1,8346,'2017-03-14','2017-03-28'),
(13,2,18358,'2017-03-28','2017-04-11'),
(13,3,7140,'2017-03-13','2017-03-27'),
(13,2,18024,'2017-03-23','2017-04-05'),
(13,3,13271,'2017-03-26','2017-04-09'),
(14,3,13271,'2017-03-15','2017-03-29'),
(15,1,18358,'2017-03-28','2017-04-11'),
(16,4,16882,'2017-03-08','2017-03-22'),
(16,1,18024,'2017-03-23','2017-04-06'),
(16,1,18358,'2017-03-18','2017-04-01'),
(17,2,7128,'2017-03-23','2017-04-06'),
(17,2,18358,'2017-03-12','2017-03-26'),
(18,4,16095,'2017-03-13','2017-03-27'),
(18,2,18358,'2017-03-24','2017-04-07'),
(18,1,8496,'2017-03-19','2017-04-02'),
(19,1,8346,'2017-03-15','2017-03-29'),
(19,3,1775,'2017-03-15','2017-03-29'),
(20,4,7140,'2017-03-03','2017-03-17'),
(1,1,8346,'2017-03-07','2017-03-21'),
(2,4,16882,'2017-03-25','2017-04-08'),
(2,2,1775,'2017-03-22','2017-04-04'),
(3,3,13271,'2017-03-16','2017-03-30'),
(3,2,1775,'2017-03-25','2017-04-07'),
(3,2,8346,'2017-03-08','2017-03-22'),
(3,2,18358,'2017-03-15','2017-03-29'),
(4,3,8346,'2017-03-21','2017-04-04'),
(4,1,5396,'2017-03-15','2017-03-29')
;

CREATE TABLE tblBookAuthor
(BookID INT FOREIGN KEY,
AuthorName VARCHAR(60)
);
GO

INSERT INTO tblBookAuthor
VALUES
(1,'Mark Lee'),
(2,'Ernest Hemingway'),
(3,'Cornelius Ryan'),
(4,'George R. R. Martin'),
(5,'Stephen King'),
(6,'Mark Twain'),
(7,'Kurt Vonnegut'),
(8,'David Weber'),
(9,'Neil Gaiman'),
(10,'Amy Tan'),
(11,'Jules Verne'),
(12,'H. G. Wells'),
(13,'Ray Bradbury'),
(14,'Robert Heinlein'),
(15,'Stephen King'),
(16,'Stephen King'),
(17,'Jude Deveraux'),
(18,'Bram Stoker'),
(19,'E. L. James'),
(20,'Stephen Cole')
;
GO

CREATE TABLE tbl_Borrower
(CardNo INT,
Name VARCHAR(60),
Address VARCHAR(60),
Phone VARCHAR(12)
)
;
GO

INSERT INTO tbl_Borrower
VALUES
(16095,'Alex Ahrad','522 Malta Rd. Portland','355-943-7142'),
(8496,'Michael Shuman','8920 Smooth Ct. Beaverton','355-624-9781'),
(1775,'Troy Van Leuwen','764 W. Mountain Blvd. Burlingame','355-943-4767'),
(7128,'Josh Homme','6210 Colorado St. Tigard','355-624-2002'),
(16882,'Dean Fertita','104 Pistol Place Silverton','815-366-9780'),
(3219,'Brenda Seaway','6120 Utah St. Milwaukie','355-943-8602'),
(7140,'Cathy Kingston','2648 New Mexico Rd. Portland','355-666-4902'),
(5936,'Deborah Pickering','4610 Falcon Rd. Burlingame','800-662-9023'),
(13076,'Elena Vaughn','4826 Wyoming Rd. Tigard','355-624-2077'),
(13271,'Frank Carcross','536 Fresno St. Portland','355-850-2002'),
(8346,'Gwen King','7653 Nevada Rd. Tigard','355-457-7652'),
(18358,'Miki Ebisu','447 Nevada Rd. Tigard','147-451-7653'),
(18024,'Hannah Mackay','2639 Hawaii Blvd. Portland','673-195-1778'),
(15570,'Lindsey Sterling','469 Evergreen Terrace. Beaverton','355-273-2028')
;
GO

CREATE TABLE tbl_Linbrary_Branch
(BranchID INT,
BranchName VARCHAR(20),
Address VARCHAR(60)
);
GO

INSERT INTO tbl_Linbrary_Branch
VALUES
(1,'Central','666 6th St. Portland'),
(2,'Sharpstown','108 Severson Rd. Sharpstown'),
(3,'Tigard','13000 Barbur Blvd. Tigard'),
(4,'Burlingame','7000 Barbur Blvd. Burlingame')
;
GO

CREATE TABLE tbl_Publisher 
(Name VARCHAR(30), 
Address VARCHAR(60),
Phone VARCHAR(12))
;
GO

INSERT INTO tbl_Publisher
VALUES
('Penguin','246 Westminster Rd. London, UK','897-026-0401'),
('Scribners','485 Park Ave. New York, NY','345-815-6781'),
('Doubleday','1692 5th Ave. New York, NY','345-047-4434'),
('Bantam','7136 42nd St. New York, NY','345-717-3111'),
('Viking','615 Stafford Rd. Brooklyn, NY','345-642-3702'),
('Baen','795 Tarheel Rd. Wake Forest, NC','835-689-9387'),
('W. M. Morrow','3524 10th Ave. New York NY','345-480-7779'),
('G. P. Putnam','800 W. 45th St. New York, NY','345-636-4567'),
('P. J. Hetzel','106 Rue de la Guerre, Paris, FR','474-172-9043'),
('Heinemann','5347 Revere Rd, Portmouth, NH','338-101-0031'),
('Ballantine','233 First Ave, New York, NY','345-376-6898'),
('Grant','110 Rodeo Drive, Dallas TX','427-898-3646'),
('Constable','100 Plank Rd, Constable, NY','836-180-0995'),
('Vintage','726 83rd St. New York, NY','345-662-1458'),
('Scholastic','557 Broadway, New York, NY','345-483-4776')
;

