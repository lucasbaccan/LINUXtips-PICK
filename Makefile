IMAGE_NAME_GIROPOPS=giropops-senhas
CONTAINER_NAME_GIROPOPS=giropops-senhas
CONTAINER_NAME_REDIS=giropops-senhas-redis

# Fazer a construção da imagem docker do projeto giropops-senhas
docker-build:
	docker build -t $(IMAGE_NAME_GIROPOPS) .

# Rodar o projeto giropops-senhas, precisa ter o redis rodando antes
# Vamos utilizar o docker network para conectar os dois containers
docker-run: docker-build
	docker network create giropops-senhas || true
	docker rm -f giropops-senhas-redis || true
	docker run --rm -d --name $(CONTAINER_NAME_REDIS) --network giropops-senhas -p 6379:6379 cgr.dev/chainguard/redis
	docker rm -f $(CONTAINER_NAME_GIROPOPS) || true
	docker run --rm -d --name $(CONTAINER_NAME_GIROPOPS) --network giropops-senhas -p 5000:5000 -e REDIS_HOST=$(CONTAINER_NAME_REDIS) $(IMAGE_NAME_GIROPOPS)

docker-remove:
	docker rm -f $(CONTAINER_NAME_GIROPOPS) || true
	docker rm -f $(CONTAINER_NAME_REDIS) || true
	docker network rm giropops-senhas || true