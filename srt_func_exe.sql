USE book_store;

-- string function exercise

SELECT REVERSE(
        UPPER(
            "Why does my cat look at me with such hatred?"
        )
    );

SELECT REPLACE ( CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '-' );

SELECT * FROM books;

select REPLACE (title, ' ', '->') as 'title' FROM books;

select title as 'forwards', REVERSE(title) as 'backwards' FROM books;

SELECT UPPER(
        CONCAT_WS(
            ' ', author_fname, author_lname
        )
    ) as 'full name in caps'
FROM books;

SELECT CONCAT(
        title, ' was released in ', released_year
    ) as 'blurb'
FROM books;

SELECT title as 'title', LENGTH(title) as 'character count'
FROM books;

SELECT CONCAT(SUBSTR(title, 1, 10), '...') as 'short title', CONCAT_WS(
        ', ', author_lname, author_fname
    ) as 'author', CONCAT(stock_quantity, ' in stock') as 'quantity'
FROM books;

-- DISTINCT example

SELECT DISTINCT author_lname FROM books;