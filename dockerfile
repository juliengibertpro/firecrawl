# 1. Utilise une image Node
FROM node:18

# 2. Installe pnpm
RUN npm install -g pnpm

# 3. Va dans le dossier /app
WORKDIR /app

# 4. Copie tout le projet
COPY . .

# 5. Va dans le dossier du serveur et installe les dépendances
RUN cd apps/api && pnpm install

# 6. Ouvre le port 3002
EXPOSE 3002

# 7. Lance le serveur
CMD ["pnpm", "--prefix", "apps/api", "run", "start:production"]
