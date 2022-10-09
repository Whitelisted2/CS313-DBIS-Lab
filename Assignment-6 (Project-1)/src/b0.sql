CREATE USER 'librarian'@'localhost' IDENTIFIED BY 'eselifterbraun';
CREATE DATABASE library;
GRANT ALL PRIVILEGES ON library.* TO 'librarian'@'localhost';