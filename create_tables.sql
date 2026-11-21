DROP TABLE IF EXISTS subscriptions CASCADE;
DROP TABLE IF EXISTS Readers CASCADE;
DROP TABLE IF EXISTS "Readers" CASCADE;
CREATE TABLE Readers (
    reader_code integer NOT NULL UNIQUE PRIMARY KEY,
    Surname character varying(50) NOT NULL,
    Person_name character varying(50) NOT NULL,
    birthday date NOT NULL,
    passport integer NOT NULL UNIQUE,
    adress character varying(255) NOT NULL,
    middle_name character varying(50) NOT NULL,
	phone_number character varying(20) NOT NULL
);
CREATE TABLE subscriptions (
    reader_code integer NOT NULL,
    book_code integer NOT NULL,
    date_of_issue date NOT NULL,
    term integer NOT NULL,
    return_notation boolean, 
    PRIMARY KEY (reader_code, book_code),
    CONSTRAINT fk_subscriptions_reader 
        FOREIGN KEY (reader_code) 
        REFERENCES Readers (reader_code)
);