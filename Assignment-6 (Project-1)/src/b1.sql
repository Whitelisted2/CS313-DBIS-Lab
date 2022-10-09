USE library;

CREATE TABLE book(
    book_id VARCHAR(6) PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    category VARCHAR(20),
    author VARCHAR(50)
);

CREATE TABLE student(
    student_id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_name VARCHAR(20),
    year YEAR,
    semester NUMERIC(2)
);

CREATE TABLE issue(
    student_id VARCHAR(5),
    book_id VARCHAR(6),
    issue_date DATE NOT NULL,
    return_date DATE,
    PRIMARY KEY(student_id, book_id, issue_date),
    FOREIGN KEY(student_id) REFERENCES student(student_id),
    FOREIGN KEY(book_id) REFERENCES book(book_id)
);

