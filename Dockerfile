# Verwende einen Node.js-Image als Basis
FROM node:14

# Erstelle und setze das Arbeitsverzeichnis
WORKDIR /app

# Kopiere package.json und package-lock.json
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest des Anwendungsquellcodes
COPY . .

# Exponiere den Port
EXPOSE 3000

# Startbefehl
CMD ["node", "index.js"]
