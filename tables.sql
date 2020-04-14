CREATE DATABASE 
CREATE TABLE Author
(
	auth_id INT PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
);

CREATE TABLE Writes
(
	book_id ISBN	PRIMARY KEY,
	auth INT
	FOREIGN KEY(auth) REFERENCES Author(auth_id)
);
CREATE TABLE PublishedBy
(
	book_id ISBN,
	pub_id INT,
	publisher_name BLOB,
	FOREIGN KEY(book_id) REFERENCES Book(isbn)
);
CREATE TABLE Book
(
	isbn ISBN PRIMARY KEY,
	title BLOB NOT NULL,
	pub_year INT,
	page_num INT,
	fiction INT NOT NULL,
);

CREATE TABLE Genre
(
	book_id ISBN,
	genre BLOB,
	FOREIGN KEY(book_id) REFERENCES Book(isbn)
);

CREATE DOMAIN ISBN CHECK
(char(13) LIKE '[0-9]*10')

