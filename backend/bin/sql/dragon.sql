--Responsible for creating the dragon table whithin dragonstack db 
-- ONE TO MANY  relationship between  Genarations and Dragons
CREATE TABLE dragon(
    id SERIAL PRIMARY KEY,
    birthdate TIMESTAMP NOT NULL,
    nickname VARCHAR(64),
    "generationId" INTEGER ,
    FOREIGN KEY  ("generationId") REFERENCES generation(id)
);