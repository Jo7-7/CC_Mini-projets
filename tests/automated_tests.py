import mysql.connector

# Connexion à la base MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="yourpassword",
    database="Bd_Malloc_your_Muscle"
)
cursor = conn.cursor()

# Vérifier que toutes les tables contiennent des données
tables = ["Adhérents", "Abonnements", "Salles", "Activité_sportive", "Disposer", "Dérouler", "Proposer"]

for table in tables:
    cursor.execute(f"SELECT COUNT(*) FROM {table}")
    count = cursor.fetchone()[0]
    if count > 0:
        print(f"✅ {table} contient {count} enregistrements.")
    else:
        print(f"❌ {table} est vide !")

# Vérifier qu'il n'y a pas de valeurs NULL dans les clés primaires
cursor.execute("SELECT COUNT(*) FROM Adhérents WHERE Id_adhérent IS NULL")
if cursor.fetchone()[0] == 0:
    print("✅ Aucune valeur NULL dans Id_adhérent.")
else:
    print("❌ Des valeurs NULL détectées dans Id_adhérent !")

# Fermer la connexion
cursor.close()
conn.close()
