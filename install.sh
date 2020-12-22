#!/bin/bash

sudo apt update

cd ~
cd Downloads

sudo apt install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

sudo dpkg -i code_1.43.2-1585036376_amd64.deb

sudo apt install git -y

wget https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install 12

nvm use 12

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update

sudo apt-get install yarn -y

npm i -g @adonisjs/cli

sudo apt update

sudo apt install postgresql postgresql-contrib

sudo -u postgres psql
