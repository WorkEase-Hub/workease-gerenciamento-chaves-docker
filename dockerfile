# Usa uma imagem base do Node.js
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY ../package.json ../package-lock.json ./

# Instala as dependências
RUN npm install

# Copia o restante do projeto
COPY ../ .

# Expondo a porta que o Vite utiliza
EXPOSE 8080

# Comando para rodar o front-end
CMD ["npm", "run", "dev"]
