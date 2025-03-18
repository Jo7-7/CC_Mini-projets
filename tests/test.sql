USE Bd_Malloc_your_Muscle;

-- 1️⃣ Vérifier le nombre total d'adhérents
SELECT COUNT(*) AS nombre_adhérents FROM Adhérents;

-- 2️⃣ Lister les 10 premiers adhérents
SELECT * FROM Adhérents LIMIT 10;

-- 3️⃣ Vérifier si tous les abonnements sont bien attribués
SELECT Abonnements.Nom_abonnements, COUNT(Adhérents.Id_adhérent) AS total_adhérents
FROM Abonnements
LEFT JOIN Adhérents ON Abonnements.Id_abonnements = Adhérents.Id_abonnements
GROUP BY Abonnements.Nom_abonnements;

-- 4️⃣ Voir quelles salles ont le plus d'adhérents
SELECT Salles.Ville, COUNT(Disposer.Id_adhérent) AS nb_adhérents
FROM Salles
LEFT JOIN Disposer ON Salles.Code_postal = Disposer.Code_postal
GROUP BY Salles.Ville
ORDER BY nb_adhérents DESC;

-- 5️⃣ Voir les activités et le nombre de salles où elles sont proposées
SELECT Activité_sportive.Nom_activité, COUNT(Dérouler.Num_salle) AS nombre_salles
FROM Activité_sportive
LEFT JOIN Dérouler ON Activité_sportive.Nom_activité = Dérouler.Nom_activité
GROUP BY Activité_sportive.Nom_activité
ORDER BY nombre_salles DESC;

-- 6️⃣ Tester la performance d'une requête complexe
SET STATISTICS PROFILE ON;
SELECT * FROM Adhérents
JOIN Disposer ON Adhérents.Id_adhérent = Disposer.Id_adhérent
JOIN Salles ON Disposer.Code_postal = Salles.Code_postal
WHERE Salles.Ville = 'Paris';
SET STATISTICS PROFILE OFF;
