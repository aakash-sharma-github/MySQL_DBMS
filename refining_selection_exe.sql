use book_store;

SELECT * FROM books;

SELECT title AS 'title' from books where title LIKE '%Stories%';

SELECT title as 'title', pages as 'pages' FROM books ORDER BY pages DESC LIMIT 1;

SELECT CONCAT_WS('-', title, released_year) as 'summary' FROM books ORDER BY released_year DESC LIMIT 3;

SELECT title as 'title', author_lname as 'author_lname' FROM books WHERE author_lname LIKE '%\ %';

SELECT title as 'title', released_year as 'released_year', stock_quantity as 'stock_quantity' FROM books ORDER BY stock_quantity LIMIT 3;

SELECT title as 'title', author_lname as 'author_lname' FROM books ORDER BY author_lname, title;

select UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) as 'yell' FROM books ORDER BY author_lname;

