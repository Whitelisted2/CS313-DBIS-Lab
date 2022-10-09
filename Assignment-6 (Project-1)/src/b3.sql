-- some sample records to enter manually (adding books)
INSERT INTO book VALUES ("200008", "And Then There Were None", "Detective", "Agatha Christie");
INSERT INTO book VALUES ("200009", "The Hobbit", "Fantasy", "JRR Tolkien");
INSERT INTO book VALUES ("200010", "Animal Farm", "Satire", "George Orwell");

-- some sample records to enter manually (issuing books)
INSERT INTO issue VALUES ("11003", "200008", "2022-10-01", "2022-10-15");
INSERT INTO issue VALUES ("22006", "200009", "2022-09-01", "2022-09-15");
INSERT INTO issue VALUES ("11003", "200009", "2022-08-01", "2022-08-15");
INSERT INTO issue VALUES ("22006", "200010", "2022-09-01", "2022-09-15");
