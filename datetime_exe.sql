CREATE TABLE birth_date (
    b_id int not null AUTO_INCREMENT PRIMARY KEY, fullname varchar(100), birthdate DATE, birthtime TIME, birth_tmdt DATETIME
);

INSERT INTO
    birth_date (
        fullname, birthdate, birthtime, birth_tmdt
    )
VALUES (
        'Aakash Sharma', '2000-03-28', '10:23:30', '2000-12-15 10:55:40'
    ),
    (
        'Aakash Yadav', '2003-05-18', '03:23:40', '2012-12-23 10:55:40'
    ),
    (
        'Dipendra Yadav', '2002-09-25', '11:50:40', '2003-11-23 11:40:40'
    ),
    (
        'Saurabh', '2003-06-20', '11:40:40', '2005-01-23 11:40:40'
    ),
    (
        'Mudit', '2024-04-18', '00:48:50', '2024-04-18 00:48:50'
    );

-- INSERT INTO
--     birth_date (
--         fullname, birthdate, birthtime, birth_tmdt
--     )
-- VALUES (
--         'Aakash Sharma', CURDATE(), CURTIME(), CURRENT_TIMESTAMP()
--     );

SELECT * FROM birth_date;

SELECT CURRENT_TIME();

SELECT CURDATE();

-- * day number
SELECT DAYOFWEEK(CURDATE() - 1);

SELECT DATE_FORMAT(NOW(), '%w');

-- * day name
SELECT DAYNAME(CURDATE());

SELECT DATE_FORMAT(now(), '%W');

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');

-- * tweet table

CREATE Table tweets (
    t_id int not null AUTO_INCREMENT PRIMARY KEY, content VARCHAR(255), username VARCHAR(255), created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    tweets (username, content)
VALUES ('Aakash Sharma', 'this is second content.');

SELECT * FROM tweets;
