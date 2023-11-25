# Passo 1: Imagem base
FROM node:latest

# Passo 2: Definir o diretório de trabalho no container
WORKDIR /app

# Passo 3: Copiar os arquivos de dependências
COPY package.json package-lock.json* ./

# Passo 4: Instalar dependências
RUN npm install

# Passo 5: Copiar os arquivos do projeto
COPY . .

# Passo 6: Expõe a porta 3000
EXPOSE 3000

# Passo 7: Comando para iniciar o aplicativo
CMD ["npm", "start"]
