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

### Pré-requisitos

- Docker e Docker Compose

### Configuração com Docker

1. Construa e inicie os contêineres:
   ```bash
   docker-compose up --build
   ```

2. O backend estará disponível em `http://localhost:3000`.

---

