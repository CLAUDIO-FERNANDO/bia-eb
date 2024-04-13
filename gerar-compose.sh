versao=$(git rev-parse HEAD | cut -c 1-7)
echo TAG=$versao >> .env
docker-compose  -f docker-compose-eb.yml config >> docker-compose-dev.yml

# trocar o docker-compose-dev por docker-compose.yml
mv docker-compose-dev.yml docker-compose.yml
