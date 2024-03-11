FROM swift:latest

WORKDIR /app

COPY . /app

CMD ["swift", "run", "fetchDefinition"]

