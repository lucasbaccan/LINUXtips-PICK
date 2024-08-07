# Vamos utilizar o Dockerfile para criar a imagem do nosso projeto.
# 
# A Chainguard só disponibiliza a imagem latest e latest-dev de forma gratuita.
# https://images.chainguard.dev/directory/image/python/overview
# então vamos usar a imagem latest-dev pois ela já vem com o pip instalado.
FROM cgr.dev/chainguard/python:latest-dev as builder
# Definindo o diretório de trabalho para /app para ser um diretório de trabalho padrão
WORKDIR /app
# Copiando o arquivo requirements.txt para o diretório de trabalho
# pois precisamos dele para instalar as dependências do projeto
# e o arquivo Werkzeug==2.2.2 para corrigir um bug de compatibilidade
COPY giropops-senhas/requirements.txt .
RUN python -m venv /app/venv && \
    . /app/venv/bin/activate && \
    pip install -r requirements.txt --no-cache-dir && \
    pip install Werkzeug==2.2.2 --no-cache-dir

    # Agora vamos criar a imagem final, utilizamos a imagem sem '-dev' pois ela é mais leve
FROM cgr.dev/chainguard/python:latest
WORKDIR /app

# Copiando o ambiente virtual criado na imagem anterior
COPY --from=builder /app/venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

# Copiando o código fonte do projeto para o diretório de trabalho
COPY giropops-senhas/app.py .
COPY giropops-senhas/templates templates/
COPY giropops-senhas/static static/

# A variável de ambiente REDIS_HOST precisa ser definida para que a aplicação
# consiga se conectar ao Redis. Ela é utilizada no arquivo app.py
ENV REDIS_HOST=$REDIS_HOST

# Expondo a porta 5000 para acessar a aplicação via navegador
EXPOSE 5000

# Definindo o comando de entrada para iniciar a aplicação Flask
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]