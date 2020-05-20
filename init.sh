docker network inspect web >/dev/null 2>&1 || docker network create --driver bridge web
docker-compose build
docker-compose up