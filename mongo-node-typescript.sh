#!/bin/bash

#INSTALACION DE MONGODB

wget https://www.mongodb.org/static/pgp/server-4.4.asc -O- | sudo apt-key add -
touch /etc/apt/sources.list.d/mongodb-org.list
echo "deb http://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" >> /etc/apt/sources.list.d/mongodb-org.list

apt update

#INSTALA SERVIDOR-CLIENTE MONGO Y LO INICIALIZA
echo "Instalando servidor mongoDB..."
apt install mongodb-org-server
systemctl start mongod
systemctl enable mongod
apt install -y mongodb-org-shell


#INSTALACION DE NODEJS
echo "Instalando NodeJS..."
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
apt install nodejs
node --version


#INSTALACION DE TYPESCRIPT Y NODEMON
echo "Instalando nodemon y typescript..."
npm install -g nodemon
npm install -g typescript

echo "Se realizò la instalacion de MONGOSB, TYPESCRIPT Y NODEJS CON EXITO"
