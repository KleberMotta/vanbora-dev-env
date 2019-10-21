FROM node:8.13.0 AS imagem_base

# Variável de ambiente do node.js
ARG NODE_ENV
ENV NODE_ENV=development

# Instala o firebase-tools e o react-native-cli
RUN yarn global add firebase-tools \
    react-native-cli@2.0.1 --ignore-engines

# Cria o diretório onde os arquivos do projeto serão armazenados
RUN mkdir /home/node/vanbora-env    

WORKDIR /home/node/vanbora-env