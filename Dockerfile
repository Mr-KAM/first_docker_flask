# utiliser une image Python comme base
from python:3.9-slim

# définir le répertoire de travail dans le conteneur
workdir /app

# copier les fichiers locaux dans le répertoire de travail du conteneur
copy . .

# installer les dépendances
run pip install -r requirements.txt

# exposer le port 5000
expose 5000

# commande pour lancer l'application
cmd ["python", "app.py"]