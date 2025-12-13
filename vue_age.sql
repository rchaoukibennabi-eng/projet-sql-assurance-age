CREATE VIEW Vue_Client_Age AS
SELECT
IdClient,
Nom,
Prenom,
DateNaissance,
TypeContrat,
DATEDIFF(YEAR, DateNaissance, GETDATE())
- CASE
WHEN DATEADD(YEAR, DATEDIFF(YEAR, DateNaissance, GETDATE()), DateNaissance) > GETDATE()
THEN 1
ELSE 0
END AS Age
FROM Client;