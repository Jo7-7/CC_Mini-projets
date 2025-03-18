-- Création du schéma et sélection de la base de données
CREATE SCHEMA IF NOT EXISTS Bd_Malloc_your_Muscle;
USE Bd_Malloc_your_Muscle;

DROP TABLE IF EXISTS Adhérents, Activité_sportive, Abonnements, Salles, Salle_de_sports, Disposer, Dérouler, Proposer;

-- Création de la table Abonnements
CREATE TABLE Abonnements (
    Id_abonnements INT AUTO_INCREMENT PRIMARY KEY,
    Nom_abonnements VARCHAR(50) NOT NULL,
    prix FLOAT NOT NULL,
    périodicité VARCHAR(50) NOT NULL,
    modalité_de_paiement VARCHAR(50) NOT NULL
);

-- Création de la table Adhérents
CREATE TABLE Adhérents (
    Id_adhérent INT AUTO_INCREMENT PRIMARY KEY,
    Code_postal_adhérent VARCHAR(10) NOT NULL,
    Nom_adhérent VARCHAR(50) NOT NULL,
    Prenom_adhérent VARCHAR(50) NOT NULL,
    Téléphone VARCHAR(15) NOT NULL,
    Mail_adhérent VARCHAR(50) NOT NULL UNIQUE,
    Date_debut DATE NOT NULL,
    Date_fin DATE NOT NULL,
    Id_abonnements INT,
    FOREIGN KEY (Id_abonnements) REFERENCES Abonnements(Id_abonnements) ON DELETE SET NULL
);

-- Création de la table Salles
CREATE TABLE Salles (
    Num_salle INT AUTO_INCREMENT PRIMARY KEY,
    Code_postal VARCHAR(10) NOT NULL UNIQUE,
    Ville VARCHAR(50) NOT NULL
);

-- Création de la table Activité_sportive
CREATE TABLE Activité_sportive (
    Nom_activité VARCHAR(50) PRIMARY KEY,
    Description TEXT NOT NULL
);

-- Création des relations entre les tables
CREATE TABLE Disposer (
    Id_adhérent INT,
    Code_postal VARCHAR(10),
    PRIMARY KEY (Id_adhérent, Code_postal),
    FOREIGN KEY (Id_adhérent) REFERENCES Adhérents(Id_adhérent) ON DELETE CASCADE,
    FOREIGN KEY (Code_postal) REFERENCES Salles(Code_postal) ON DELETE CASCADE
);

CREATE TABLE Dérouler (
    Nom_activité VARCHAR(50),
    Num_salle INT,
    PRIMARY KEY (Nom_activité, Num_salle),
    FOREIGN KEY (Nom_activité) REFERENCES Activité_sportive(Nom_activité) ON DELETE CASCADE,
    FOREIGN KEY (Num_salle) REFERENCES Salles(Num_salle) ON DELETE CASCADE
);

CREATE TABLE Proposer (
    Id_abonnements INT,
    Code_postal VARCHAR(10),
    PRIMARY KEY (Id_abonnements, Code_postal),
    FOREIGN KEY (Id_abonnements) REFERENCES Abonnements(Id_abonnements) ON DELETE CASCADE,
    FOREIGN KEY (Code_postal) REFERENCES Salles(Code_postal) ON DELETE CASCADE
);

-- Afficher les tables créées pour vérification
SHOW TABLES;



	

    
    
    
    
	