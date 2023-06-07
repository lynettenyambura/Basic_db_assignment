CREATE DATABASE Bookstore;
INSERT INTO Authors (AuthorID, FirstName, LastName)
VALUES (1, 'John', 'Doe'),
       (2, 'Jane', 'Smith'),
       (3, 'David', 'Johnson');

INSERT INTO Books (BookID, Title, AuthorID)
VALUES (1, 'Book1', 1),
       (2, 'Book2', 2),
       (3, 'Book3', 3);

	   SELECT * FROM Books WHERE Title = 'Book2';

	   UPDATE Authors
SET LastName = 'Smithson'
WHERE AuthorID = (SELECT AuthorID FROM Books WHERE Title = 'Book1');

UPDATE Books
SET Title = 'New Book1'
WHERE Title = 'Book1';

UPDATE Authors
SET LastName = 'Smithson'
WHERE AuthorID = (SELECT AuthorID FROM Books WHERE Title = 'Book1');

UPDATE Books
SET Title = 'New Book1'
WHERE Title = 'Book1';

DELETE FROM Books WHERE AuthorID = 3;

DELETE FROM Authors WHERE AuthorID = 3;

SELECT COUNT(*) AS TotalBooks FROM Books;

SELECT Books.Title, Authors.FirstName, Authors.LastName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;


