--Responsible for creating the generation table whithin dragonstack db 

CREATE TABLE generation(
    id SERIAL PRIMARY KEY,
    expiration TIMESTAMP NOT NULL 
);