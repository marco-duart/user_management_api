# User Management API

Uma API para gerenciamento de usuários e seus endereços, desenvolvida com Ruby on Rails.

---

## Funcionalidades

Cadastro, edição, exclusão, visualização de detalhes de usuários e seus endereços e verificação de cpf e email disponivel.

---

## Stack Tecnológico

### Backend

- **Framework:** Ruby on Rails
- **Banco de Dados:** PostgreSQL.

---

## Rotas da API

| Método    | Endpoint                 | Descrição                                       |
|-----------|--------------------------|-------------------------------------------------|
| `GET`     | `/users`                 | Lista todos os usuários com seus endereços      |
| `POST`    | `/users`                 | Cria um novo usuário com endereços              |
| `GET`     | `/users/:id`             | Exibe detalhes de um usuário                    |
| `PUT`     | `/users/:id`             | Atualiza um usuário                             |
| `DELETE`  | `/users/:id`             | Exclui um usuário                               |
| `GET`     | `/users/check_email`     | Verifica se o email é unico                     |
| `GET`     | `/users/check_cpf`       | Verifica se o CPF é unico                       |
| `GET`     | `/up`                    | Verifica o status da aplicação (health check)   |

---

## Gems Utilizadas

| Gem                        |
|----------------------------|
| `pg`                       |
| `puma`                     |
| `redis`                    |
| `dotenv-rails`             |
| `active_model_serializers` |
| `ransack`                  |
| `rack-cors`                |
| `factory_bot_rails`        |
| `faker`                    |
| `rspec-rails`              |
| `rubocop`                  |

---

## Configuração e Execução

### Instalação do backend

1. Clone o repositório:
   ```bash
   git clone https://github.com/marco-duart/user_management_api.git
   cd user_management_api
   ```
2. Variáveis de ambiente
   Criar um arquivo .env na pasta raiz do diretório, ou renomear o .env.example.
   Preencher com suas variáveis de ambiente ou utilizar as variáveis padrão comentadas no .env.example, também disponíveis abaixo:

   ```bash
   DATABASE_HOST=db #Para utilizar o postgres instalado via Docker
   DATABASE_USERNAME=postgres # Padrão
   DATABASE_PASSWORD=postgres # Padrão
   DATABASE_PORT=5432 # Padrão
   RAILS_MAX_THREADS=5 # Padrão
   DATABASE_NAME=user_management_production
   RAILS_ENV=production
   REDIS_URL=redis://localhost:6379/0
   ```


### Pré-requisitos

- Docker e Docker Compose

### Configuração com Docker

1. Construa e inicie os contêineres:
   ```bash
   docker-compose up --build
   ```

---

### Parando o Ambiente

Para parar os contêineres Docker:
```bash
docker-compose down
```

---

