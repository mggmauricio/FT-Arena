# FT Arena - Football Training Arena

FT Arena é um ambiente de treinamento para futebol de robôs, que permite visualizar em tempo real o que acontece no simulador. O projeto inclui componentes para recepção de dados do simulador SSL via multicast e publicação desses dados via MQTT.

## Estrutura do Projeto

```
FT-Arena/
│
├── mqtt_vision/              # Biblioteca para recepção multicast e envio MQTT
│   ├── data/                 # Arquivos de definição Protobuf e classes geradas
│   │   ├── __init__.py
│   │   ├── messages_robocup_ssl_detection_pb2.py
│   │   ├── messages_robocup_ssl_detection.proto
│   │   ├── messages_robocup_ssl_geometry_pb2.py
│   │   ├── messages_robocup_ssl_geometry.proto
│   │   ├── messages_robocup_ssl_wrapper_pb2.py
│   │   └── messages_robocup_ssl_wrapper.proto
│   ├── multicast_mqtt.py     # Implementação principal
│   └── setup.py              # Configuração para instalação como pacote pip
│
├── Dockerfile                # Configuração do Docker para o serviço receiver
├── requirements.txt          # Dependências Python
└── docker-compose.yml        # Configuração dos serviços Docker
```

## Componentes do Sistema

### Simulador SSL
O simulador gRSim envia dados de detecção e geometria via multicast usando o formato Protobuf SSL_WrapperPacket.

### MQTT Broker
Um broker MQTT (Mosquitto) atua como intermediário para a comunicação entre os componentes do sistema.

### Receiver (mqtt_vision)
Um serviço que recebe os dados multicast do simulador, decodifica as mensagens Protobuf e publica os dados via MQTT.

## Requisitos

- Docker
- Docker Compose

## Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/mggmauricio/FT-Arena.git
   cd FT-Arena
   ```

2. Inicie apenas o simulador:
   ```bash
   docker-compose up simulator
   ```

3. Para iniciar o receiver manualmente:
   ```bash
   docker-compose up receiver
   ```

4. Para iniciar todos os serviços (incluindo o broker MQTT):
   ```bash
   docker-compose up --build
   ```

5. Para parar os contêineres:
   ```bash
   docker-compose down
   ```

## Tecnologias Utilizadas

- Protocol Buffers (Protobuf) - Para serialização de dados
- MQTT - Para comunicação publisher/subscriber
- Docker - Para containerização dos serviços
- Python - Linguagem principal de desenvolvimento

## Funcionalidades

- Recepção de dados do simulador SSL via multicast
- Decodificação de mensagens Protobuf (SSL_WrapperPacket, SSL_DetectionFrame, SSL_GeometryData)
- Publicação de dados de detecção e geometria via MQTT
- Containerização dos serviços para fácil implantação

## Desenvolvimento

### mqtt_vision
A biblioteca `mqtt_vision` é responsável por conectar-se ao multicast, receber e decodificar mensagens Protobuf do simulador, e publicar esses dados através de um broker MQTT. Ela separa os dados de detecção e geometria em tópicos MQTT distintos.

## Próximos Passos

- Desenvolver um frontend para visualização dos dados
- Implementar algoritmos de visão computacional para análise dos dados
- Integrar com ROS2 para controle de robôs
- Expandir a biblioteca com mais funcionalidades

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Faça commit das suas alterações (`git commit -m 'Adiciona nova feature'`)
4. Faça push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes. 
