# FT Arena - Football Training Arena

FT Arena é um ambiente de treinamento para futebol de robôs, que permite visualizar em tempo real o que acontece no simulador. O projeto é composto por dois componentes principais: um backend baseado em ROS2 e FastAPI, e um frontend que será desenvolvido posteriormente.

## Estrutura do Projeto

```
FT-Arena/
│
├── backend/               # Componente de backend com ROS2 e FastAPI
│   ├── Dockerfile         # Configuração do Docker para o backend
│   ├── requirements.txt   # Dependências Python
│   └── main.py            # Código principal do backend
│
└── docker-compose.yml     # Configuração do Docker Compose
```

## Requisitos

- Docker
- Docker Compose

## Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/FT-Arena.git
   cd FT-Arena
   ```

2. Inicie o backend:
   ```bash
   docker-compose up --build backend
   ```

3. Para parar os contêineres:
   ```bash
   docker-compose down
   ```

## Tecnologias Utilizadas

### Backend
- ROS2 Jazzy Jalisco
- FastAPI
- WebSockets

## Funcionalidades

- Simulação de um ambiente de futebol de robôs
- Comunicação via WebSockets para atualizações em tempo real

## Desenvolvimento

### Backend
O backend é responsável por interagir com o simulador e enviar dados para o frontend via WebSockets. Ele é construído com FastAPI e ROS2.

## Próximos Passos

- Desenvolver o frontend com Next.js, Tailwind CSS e PixiJS
- Integrar com um simulador real
- Implementar algoritmos de aprendizado por reforço

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Faça commit das suas alterações (`git commit -m 'Adiciona nova feature'`)
4. Faça push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes. 