use book_store;

SELECT * FROM books;

SELECT count(*) as 'total books' FROM books;

SELECT released_year, COUNT(released_year) as 'year' FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) AS 'stock' FROM books;

SELECT author_fname, author_lname, AVG(released_year) as 'year' from books GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname, ' ', author_lname) as 'full name', pages FROM books ORDER BY pages DESC LIMIT 1;

-- * using subquery
SELECT CONCAT(author_fname, ' ', author_lname) as 'full name', pages from books WHERE pages = (SELECT MAX(pages) FROM books);


SELECT released_year AS 'years', COUNT(released_year) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year ORDER BY released_year;

