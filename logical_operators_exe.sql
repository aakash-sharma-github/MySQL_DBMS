SELECT 10!= 10;

SELECT 15 > 14 && 99 - 5 <= 94;

SELECT 1 IN (5, 3) || 9 BETWEEN 8 AND 10;

SELECT * FROM books;

USE book_store;

SELECT title, released_year FROM books WHERE released_year < 1980;

SELECT title, author_lname FROM books WHERE author_lname = 'eggers' OR author_lname = 'chabon';

SELECT title, author_lname FROM books WHERE author_lname IN ('eggers', 'chabon');

SELECT title, author_lname, released_year from books WHERE author_lname = 'lahiri' && released_year >= '2000';

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title, pages FROM books WHERE pages >= '100' AND pages <= '200';

SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%';

SELECT title, author_lname FROM books WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');

SELECT title, author_lname,
CASE 
    WHEN title like '%Stories%' THEN 'Stories'
    WHEN title like 'just kids' THEN 'Memoir'
    WHEN title like 'a heartbreaking%' THEN 'Memoir'
    ELSE  'Novel'
END AS 'TYPE'
FROM books;


SELECT title, stock_quantity,
CASE 
    WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    ELSE  '***'
END AS 'star' FROM books;


SELECT title, author_lname,
CASE 
    WHEN COUNT(*) = 1 THEN '1 book'  
    ELSE CONCAT(COUNT(*), ' books')
END AS 'Count'
 FROM books GROUP BY author_fname, author_lname;

