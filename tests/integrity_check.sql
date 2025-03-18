USE Bd_Malloc_your_Muscle;

-- ✅ Vérification des clés primaires : aucune valeur NULL ne doit être présente
SELECT 'Vérification : Clés primaires nulles' AS CheckType;
SELECT * FROM Adhérents WHERE Id_adhérent IS NULL;
SELECT * FROM Abonnements WHERE Id_abonnements IS NULL;
SELECT * FROM Salles WHERE Num_salle IS NULL;
SELECT * FROM Activité_sportive WHERE Nom_activité IS NULL;

-- ✅ Vérification des clés étrangères : toutes les relations doivent être valides
SELECT 'Vérification : Clés étrangères invalides' AS CheckType;
SELECT * FROM Adhérents WHERE Id_abonnements NOT IN (SELECT Id_abonnements FROM Abonnements);
SELECT * FROM Disposer WHERE Code_postal NOT IN (SELECT Code_postal FROM Salles);
SELECT * FROM Dérouler WHERE Nom_activité NOT IN (SELECT Nom_activité FROM Activité_sportive);

-- ✅ Vérification des doublons : il ne doit pas y avoir de doublons sur les clés uniques
SELECT 'Vérification : Doublons sur les colonnes uniques' AS CheckType;
SELECT Mail_adhérent, COUNT(*) FROM Adhérents GROUP BY Mail_adhérent HAVING COUNT(*) > 1;
SELECT Id_abonnements, COUNT(*) FROM Abonnements GROUP BY Id_abonnements HAVING COUNT(*) > 1;
SELECT Code_postal, COUNT(*) FROM Salles GROUP BY Code_postal HAVING COUNT(*) > 1;

-- ✅ Vérification des valeurs NULL dans les colonnes critiques
SELECT 'Vérification : Colonnes importantes contenant NULL' AS CheckType;
SELECT * FROM Adhérents WHERE Nom_adhérent IS NULL OR Prenom_adhérent IS NULL;
SELECT * FROM Abonnements WHERE Nom_abonnements IS NULL OR prix IS NULL;
SELECT * FROM Salles WHERE Ville IS NULL;
SELECT * FROM Activité_sportive WHERE Description IS NULL;

-- ✅ Vérification de la cohérence des données
SELECT 'Vérification : Cohérence des abonnements et adhérents' AS CheckType;
SELECT a.Id_adhérent, a.Nom_adhérent, ab.Nom_abonnements
FROM Adhérents a
LEFT JOIN Abonnements ab ON a.Id_abonnements = ab.Id_abonnements
WHERE a.Id_abonnements IS NOT NULL AND ab.Nom_abonnements IS NULL;
