CREATE TABLE Client (
IdClient INT IDENTITY(1,1) PRIMARY KEY,
Nom VARCHAR(50),
Prenom VARCHAR(50),
DateNaissance DATE,
TypeContrat VARCHAR(30)
);