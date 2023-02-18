
/* 1. Create a database called public. */
CREATE DATABASE public;

/* 2. Create a table called items with the following columns:
    - idItems (int, primary key, not null, auto increment)
    - item_name (varchar, not null)
    - price (int, not null) */
USE public;

CREATE TABLE items (
    idItems SERIAL PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    price INT NOT NULL
);

/* 3. Create a table called customers with the following columns:
    - idCustomers (int, primary key, not null, auto increment)
    - first_name (varchar, not null)
    - last_name (varchar, not null) */
CREATE TABLE customers (
    idCustomers SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

/* 4. Insert the following data into the items table:
    - Petit bureau, 100
    - Grand bureau, 300
    - Ventilateur, 80 */
INSERT INTO items (item_name, price)
VALUES ('Petit bureau', 100), ('Grand bureau', 300), ('Ventilateur', 80);

/* 5. Insert the following data into the customers table:
    - Greg, Jones
    - Sandra, Jones
    - Scott, Scott
    - Trevor, Vert
    - Melanie, Johnson */
INSERT INTO customers (first_name, last_name)
VALUES ('Greg', 'Jones'), ('Sandra', 'Jones'), ('Scott', 'Scott'), ('Trevor', 'Vert'), ('Melanie', 'Johnson');

/* 6. Select all the data from the items table. */
SELECT * FROM items;

/* 7. Select all the data from the customers table. */
SELECT * FROM items WHERE price > 80;

/* 8. Select all the data from the items table where the price is less than or equal to 300. */
SELECT * FROM items WHERE price <= 300;

/* 9. Select all the data from the customers table where the last name is 'Smith'. */
SELECT * FROM customers WHERE last_name = 'Smith';

/* 10. Select all the data from the customers table where the first name is not 'Jones'. */
SELECT * FROM customers WHERE last_name = 'Jones';

/* 11. Select all the data from the customers table where the first name is not 'Scott'. */
SELECT * FROM customers WHERE first_name != 'Scott';
