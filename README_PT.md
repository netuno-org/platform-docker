# platform-docker
Imagem de contêiner oficial para o Netuno Platform.

## Pré-requisitos
- [Docker](https://docs.docker.com/get-started/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## ⚙️ Configuração Inicial
1. Copie os arquivos de configuração do docker para a raíz do seu app netuno.
2. Abra o arquivo `docker-compose.yml` e substitua todas as ocorrências de `<netuno-app-name>` pelo nome real do seu aplicativo.
- No mapeamento de volumes:
```yml
volumes:
  - .:/srv/netuno/apps/<meu-app-netuno>
```
- No comando de inicialização:
```yml
command: bash -c "./netuno server app=<meu-app-netuno>"
```

## 🏃 Como Executar
Para subir os serviços:
```bash
docker compose up

# 💡 Se quiser rodar em segundo plano, adicione o parâmetro -d
docker compose up -d
```

## Comandos úteis
- Para mostrar os logs do netuno
```bash
docker compose logs -f netuno
```
- Parar os containers sem apaga-los
```bash
docker compose stop
```
- Parar os containers e apaga-los
```bash
docker compose down

# 💡 Se quiser remover também a base de dados, adicione o parâmetro -v para remover os volumes ligados aos containers
docker compose down -v
```
