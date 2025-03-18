-- Select the database
USE Bd_Malloc_your_Muscle;

-- ⚡ Measure query execution time for retrieving all members
SELECT SQL_NO_CACHE * 
FROM Adhérents;

-- ⚡ Measure the performance of a complex join query
SELECT SQL_NO_CACHE 
    a.Nom_adhérent, 
    a.Prenom_adhérent, 
    s.Ville, 
    ab.Nom_abonnements
FROM Adhérents a
INNER JOIN Disposer d 
    ON a.Id_adhérent = d.Id_adhérent
INNER JOIN Salles s 
    ON d.Code_postal = s.Code_postal
INNER JOIN Abonnements ab 
    ON a.Id_abonnements = ab.Id_abonnements;

-- ⚡ Analyze index usage in a query
EXPLAIN 
SELECT * 
FROM Adhérents 
WHERE Mail_adhérent LIKE '%@email.com';


