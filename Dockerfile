# Usando uma imagem leve baseada no Python 3.12
FROM python:3.12-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o requirements.txt para dentro do container
COPY requirements.txt .

# Instala as dependências necessárias
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos necessários para dentro do container
COPY mqtt_vision/ ./mqtt_vision/

# Comando para rodar o script
CMD ["python", "-m", "mqtt_vision.multicast_mqtt"]