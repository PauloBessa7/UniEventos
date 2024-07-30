# Use uma imagem base apropriada
FROM node:latest

# Defina o diretório de trabalho
WORKDIR /app-node

EXPOSE 3000

# Copie todos os arquivos e pastas do diretório atual para o diretório de trabalho no container
COPY . .

# Mude para o diretório back-end onde estão os arquivos package.json e package-lock.json
WORKDIR /app-node/back-end

# Instale as dependências
RUN npm install

# Defina o ponto de entrada
ENTRYPOINT ["npx", "json-server", "--watch", "data_base/eventos.json", "--port", "3000"]
