SELECT COUNT(title) FROM books WHERE title LIKE 'the%';

SELECT title, author_lname, COUNT(*) AS 'total' FROM books GROUP BY author_lname;

SELECT MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT MAX(title) FROM books;

-- * subquery
SELECT * from books WHERE pages = (SELECT MAX(pages) FROM books);

