import random
import mysql.connector

# Connexion à la base de données MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="yourpassword",
    database="Bd_Malloc_your_Muscle"
)
cursor = conn.cursor()

# Listes de données fictives
noms = ["Dupont", "Martin", "Bernard", "Dubois", "Thomas", "Robert", "Richard", "Petit", "Durand", "Leroy"]
prenoms = ["Jean", "Paul", "Marie", "Lucie", "Sophie", "Pierre", "Nicolas", "Julien", "Emma", "Louis"]
villes = ["Paris", "Lyon", "Marseille", "Toulouse", "Bordeaux", "Nice", "Nantes", "Strasbourg", "Lille", "Rennes"]
code_postaux = ["75001", "69001", "13001", "31000", "33000", "06000", "44000", "67000", "59000", "35000"]
abonnement_ids = list(range(1, 6))  # 5 types d'abonnements

# Génération de 1000 adhérents
print("🔄 Génération de 1000 adhérents...")
for i in range(1, 1001):
    nom = random.choice(noms)
    prenom = random.choice(prenoms)
    code_postal = random.choice(code_postaux)
    telephone = f"06{random.randint(10000000, 99999999)}"
    email = f"{prenom.lower()}.{nom.lower()}{i}@email.com"
    date_debut = f"202{random.randint(1, 3)}-{random.randint(1, 12):02d}-{random.randint(1, 28):02d}"
    date_fin = f"202{random.randint(4, 5)}-{random.randint(1, 12):02d}-{random.randint(1, 28):02d}"
    abonnement_id = random.choice(abonnement_ids)

    sql = """
    INSERT INTO Adhérents (Code_postal_adhérent, Nom_adhérent, Prenom_adhérent, Téléphone, Mail_adhérent, Date_debut, Date_fin, Id_abonnements)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """
    values = (code_postal, nom, prenom, telephone, email, date_debut, date_fin, abonnement_id)
    cursor.execute(sql, values)

# Validation et fermeture de la connexion
conn.commit()
cursor.close()
conn.close()
print("✅ Génération et insertion des adhérents terminées !")
