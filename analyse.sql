Clients assurables (18 à 70 ans)
SELECT *
FROM Vue_Client_Age
WHERE Age BETWEEN 18 AND 70;

-- Répartition par tranche d'âge
SELECT
CASE
WHEN Age < 18 THEN 'Mineur'
WHEN Age BETWEEN 18 AND 30 THEN '18-30'
WHEN Age BETWEEN 31 AND 50 THEN '31-50'
ELSE '50+'
END AS TrancheAge,
COUNT(*) AS NombreClients
FROM Vue_Client_Age
GROUP BY
CASE
WHEN Age < 18 THEN 'Mineur'
WHEN Age BETWEEN 18 AND 30 THEN '18-30'
WHEN Age BETWEEN 31 AND 50 THEN '31-50'
ELSE '50+';

-- Âge moyen par type de contrat
SELECT
TypeContrat,
AVG(Age) AS AgeMoyen
FROM Vue_Client_Age
GROUP BY TypeContrat;