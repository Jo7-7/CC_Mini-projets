# 🏋️ Malloc Your Muscle – Système de Gestion d'une Salle de Sport (Base de Données SQL)

**📍 Projet académique réalisé à EFREI - Grande école du numérique**  
**📅 Octobre 2024**  

---

## 📌 Contexte et Objectifs

Le projet **Malloc Your Muscle** vise à concevoir une **base de données robuste et performante** permettant la gestion centralisée d'une salle de sport. Cette base de données couvre les aspects suivants :

- **Gestion des adhérents** : Enregistrement, suivi et historique des abonnements.
- **Gestion des abonnements** : Types, durée, tarification et paiements.
- **Gestion des salles de sport** : Localisation et disponibilité.
- **Gestion des activités sportives** : Programmation et participation des adhérents.

Ce projet s'inscrit dans un cadre académique avec pour objectif la mise en œuvre de **meilleures pratiques en conception de bases de données**.

---

## 📌 Périmètre du Projet

### **📌 Entités principales :**
- **Adhérents** : Gestion des membres inscrits.
- **Abonnements** : Types d'abonnements et durées associées.
- **Salles de sport** : Gestion des espaces et infrastructures.
- **Activités sportives** : Cours et entraînements proposés.

### **🔄 Processus couverts :**
- Inscription et gestion des abonnements.
- Attribution des salles aux activités.
- Participation des adhérents aux cours.

---

## 📌 Spécifications Fonctionnelles

### **🔹 Gestion des entités :**
- Création, modification et suppression des adhérents.
- Attribution des abonnements et suivi des paiements.
- Planification et gestion des activités sportives.
- Gestion des disponibilités des salles de sport.

### **🔹 Contraintes :**
- Un adhérent ne peut avoir **qu’un seul abonnement actif** à la fois.
- Une activité sportive doit être **associée à une salle**.
- Un abonnement doit être **lié à une salle proposant ce service**.

---

## 📌 Spécifications Non Fonctionnelles

### **🛡️ Sécurité & Fiabilité**
- Protection des données personnelles des adhérents.
- Intégrité des transactions (ACID) pour éviter les incohérences.

### **⚡ Performance & Scalabilité**
- Indexation sur les tables à fort volume (`Adhérents`, `Proposer`).
- Optimisation des requêtes pour assurer des temps de réponse rapides.

### **🛠 Maintenabilité & Extensibilité**
- Structure normalisée pour faciliter l'évolution du système.
- Documentation détaillée et versionnée du projet.

---

📌 Livrables

-   ✅ Cahier des charges détaillé : Cahier_des_charges.pdf
-   ✅ Modèle conceptuel de données (MCD) : MCD_mini_projet.loo
-   ✅ Modèle physique de données (MPD) : MPD_mini_projet.sql
-   ✅ Diagramme Entité-Relation (ERA) : diagramme_entité_relation.png
-   ✅ Architecture de la base de données : architecture_BD.pdf
-   ✅ Guide d’utilisation de la base SQL : guide_utilisation.sql
-   ✅ Rapport final : rapport_projet.pdf
-   ✅ Script Python de génération de données : generate_data.py

---


📌 Délais et Planning Prévisionnel

-   🔹 Étape 1 : Analyse des besoins et spécifications détaillées ✅ Terminée
-   🔹 Étape 2 : Conception du modèle de données ✅ Terminée
-   🔹 Étape 3 : Développement de la base de données et tests SQL ✅ Terminée
-   🔹 Étape 4 : Optimisation et documentation finale 🚀 En cours 

---

## 📂 Structure du Projet

```
📁 CC_Mini-projets/
│── 📄 README.md              # Documentation principale
│── 📄 LICENSE                # Licence du projet
│── 📂 sql_scripts/           # Scripts SQL
│   │── 📄 gym_database.sql   # Script de création
│   │── 📄 insert_data.sql    # Insertion des 1000 adhérents
│── 📂 tests/                 # Tests SQL
│   │── 📄 test.sql           # Tests des fonctionnalités
│   │── 📄 performance_tests.sql # Tests de performance
│   │── 📄 integrity_check.sql  # Vérifications des contraintes
│── 📂 docs/                  # Documentation supplémentaire
│   │── 📄 Cahier_des_charges.pdf
│   │── 📄 MCD_mini_projet.loo
│   │── 📄 MPD_mini_projet.sql
│   │── 📄 diagramme_entité_relation.png
│   │── 📄 architecture_BD.pdf
│   │── 📄 guide_utilisation.sql
│   │── 📄 rapport_projet.pdf
│── 📂 scripts/               # Scripts Python
│   │── 📄 generate_data.py   # Génération automatique de données
```

---

🛠️ Outils et Technologies

-   ✅ Looping – Conception du MCD.
-   ✅ MySQL & DataGrip – Gestion et optimisation des requêtes SQL.
-   ✅ Python – Génération automatique des 1000 adhérents via generate_data.py.

## ⚙️ Installation & Utilisation

### 🔽 Installation
1️⃣ **Cloner le dépôt GitHub**  
   ```bash
   git clone https://github.com/Jo7-7/CC_Mini-projets.git
   cd CC_Mini-projets
   ```
2️⃣ **Configurer la base de données**
   ```sql
   SOURCE sql_scripts/gym_database.sql;
   SOURCE sql_scripts/insert_data.sql;
   ```
3️⃣ **Vérifier la structure et l'intégrité des données** 
   ```sql
      SHOW TABLES;
      SELECT COUNT(*) FROM Adhérents;
      SOURCE tests/integrity_check.sql;
   ```
4️⃣ **Exécuter les tests SQL** 
   ```sql
   SOURCE tests/test.sql;
   SOURCE tests/performance_tests.sql;
   ```
5️⃣ **Générer des données supplémentaires (1000 adhérents)**
    ```sql
      python scripts/generate_data.py
   ```
6️⃣ **Consulter les exemples de requêtes**
   ```sql
    SOURCE docs/exemples_requetes.sql;
   ```

📸 Retrouve aussi les captures d’écran des résultats dans docs/screenshots/

---

## 📜 Licence

Ce projet est sous **MIT License**. Voir [LICENSE](LICENSE) pour plus d’informations.  

---

## 📫 Contact

👤 **Jo7-7**  
📩 Email: josuekoffi27@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/josu%C3%A9-kinsanh-nixxon-koffi/

👤 **Nathanamon**  
📩 Email: akpablinboaz@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/amon-akpablin-b60a6b216/

![SQL](https://img.shields.io/badge/SQL-MySQL-informational?style=flat&logo=mysql&color=blue)


