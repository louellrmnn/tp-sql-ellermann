SELECT *
FROM Clients

SELECT nom, email
FROM Clients

SELECT *
FROM Clients 
WHERE age =>40

SELECT *
FROM Clients 
WHERE age >= 25 and age <= 35

SELECT *
FROM Campagnes
ORDER BY budget ASC

SELECT *
FROM Campagnes
ORDER BY debut_campagne DESC
LIMIT 5

SELECT AVG(age) FROM Clients

SELECT SUM(montant_depense) FROM Cout_Campagnes

SELECT nom_campagne , MAX(budget) FROM Campagnes

SELECT segment_id, COUNT(nom)
FROM Clients, Segments
WHERE Clients.segment_id = Segments.nom_segment 
GROUP BY Segments.nom_segment 

SELECT nom_segment, COUNT(nom)
FROM Clients, Segments
WHERE Clients.segment_id = Segments.segment_id
GROUP BY nom_segment

SELECT campagne_id, SUM(revenus_generes) AS Revenus
FROM Performances
GROUP BY campagne_id

SELECT canal, AVG(clics)
FROM Campagnes, Performances
GROUP BY canal

SELECT nom, nom_segment, description
FROM Clients, Segments

//16
SELECT nom, client_id, revenus_generes
FROM Clients
JOIN Performances ON Clients.client_id = Performances.client_id
WHERE revenus_generes > 1000

SELECT nom, client_id, MAX(revenus_generes)
FROM Clients
JOIN Performances ON Clients.client_id = Performances.client_id

SELECT nom_campagne, budget
FROM Campagnes
WHERE budget > (
    SELECT AVG(budget)
    FROM Campagnes);
