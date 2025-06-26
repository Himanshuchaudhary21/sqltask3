use himanshu2db;
CREATE TABLE Book (
  book_id INT PRIMARY KEY,
  title VARCHAR(100),
  publication_year INT
);

CREATE TABLE Author (
  author_id INT PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE Member (
  member_id INT PRIMARY KEY,
  name VARCHAR(100),
  gender VARCHAR(10)
);

CREATE TABLE Borrow (
  borrow_id INT PRIMARY KEY AUTO_INCREMENT,
  book_id INT,
  member_id INT,
  borrow_date DATE,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES Book(book_id),
  FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

CREATE TABLE Book_Author (
  book_id INT,
  author_id INT,
  PRIMARY KEY (book_id, author_id),
  FOREIGN KEY (book_id) REFERENCES Book(book_id),
  FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Book Table
INSERT INTO Book VALUES 
(1, 'SQL Basics', 2018),
(2, 'Data Structures', 2015),
(3, 'Python Programming', 2020),
(4, 'Machine Learning', 2019),
(5, 'Database Design', 2016);

-- Author Table
INSERT INTO Author VALUES 
(101, 'Raj Mehta'),
(102, 'Amit Sharma'),
(103, 'Neha Gupta'),
(104, 'Simran Kaur');

-- Member Table
INSERT INTO Member VALUES 
(201, 'Himanshu', 'Male'),
(202, 'Priya', 'Female'),
(203, 'Karan', 'Male'),
(204, 'Anjali', 'Female'),
(205, 'Ravi', 'Male');

-- Borrow Table
INSERT INTO Borrow (book_id, member_id, borrow_date, return_date) VALUES 
(1, 201, '2023-01-10', '2023-01-20'),
(2, 202, '2023-02-05', '2023-02-15'),
(3, 203, '2023-03-01', '2023-03-10'),
(4, 204, '2023-04-12', '2023-04-22'),
(5, 205, '2023-05-01', '2023-05-11');

-- Book_Author Table
INSERT INTO Book_Author VALUES 
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 101);
SELECT * FROM Book;
SELECT title, publication_year FROM Book;
SELECT * FROM Book WHERE publication_year > 2016;
SELECT * FROM Member WHERE gender = 'Female';
SELECT * FROM Borrow ORDER BY return_date DESC;
SELECT * FROM Author LIMIT 3;
SELECT * FROM Book WHERE title LIKE '%Data%';
SELECT * FROM Book WHERE publication_year BETWEEN 2015 AND 2019;
SELECT DISTINCT gender FROM Member;
SELECT title AS Book_Title, publication_year AS Year FROM Book;





