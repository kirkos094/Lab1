 TABLE Readers (
    reader_code INTEGER NOT NULL UNIQUE PRIMARY KEY,
    Surname CHARACTER VARYING(50) NOT NULL,
    Person_name CHARACTER VARYING(50) NOT NULL,
    middle_name CHARACTER VARYING(50) NOT NULL,
    birth_day DATE NOT NULL,
    passport_details BIGINT NOT NULL UNIQUE,
    adress CHARACTER VARYING(255) NOT NULL,
    phone_number BIGINT NOT NULL UNIQUE
);
CREATE TABLE Subscriptions (
    reader_code INTEGER NOT NULL UNIQUE PRIMARY KEY REFERENCES Readers(reader_code),
    book_code INTEGER NOT NULL,
    date_of_issue DATE NOT NULL,
    term INTEGER NOT NULL,
    return_notation boolean NOT NULL
);

