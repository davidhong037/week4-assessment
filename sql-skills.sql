-- Artist Table
-- Problem 1
INSERT INTO artist (name)
VALUES ('John Summit'),
('Vintage Culture'),
('Sonny Fodera');

--Problem 2
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

-- Employee Table
-- Problem 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- Problem 2
SELECT * FROM employee
WHERE reports_to = 2;

-- Problem 3
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- Invoice Table
-- Problem 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- Problem 2
SELECT MAX(total) FROM invoice;

-- Problem 3
SELECT MIN(total) FROM invoice;

-- Problem 4
SELECT * FROM invoice
WHERE total > 5;

-- Problem 5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- Problem 6
SELECT SUM(total) FROM invoice;

-- JOIN Queries (Various Tables)
-- Problem 1
SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

-- Problem 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

-- Problem 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id;

-- Problem 4
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id

-- Extra Credit
-- Artist Table
-- Problem 1
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

-- Problem 2
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- Problem 3
SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Employee Table
-- Problem 1
SELECT MAX(birth_date) FROM employee;

-- Problem 2
SELECT MIN(birth_date) FROM employee;

-- Invoice Table
-- Problem 1
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Problem 2
SELECT AVG(total) FROM invoice;

-- More Join Queries
-- Problem 1
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- Problem 2
SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- Problem 3
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- Problem 4
SELECT t.name, a.title
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g on g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';