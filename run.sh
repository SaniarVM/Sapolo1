#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=53c37d8c8a900970711a
export DRONE_GITHUB_CLIENT_SECRET=0b74c65d9c5b0d8b130ad836882d69f7a6f01d12
export DRONE_GITHUB_ADMIN=SaniarVM
export DRONE_SERVER_HOST=7d96-5-182-254-204.eu.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
