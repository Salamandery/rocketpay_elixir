# 🚀 RocketPay API

<p align="center">
  <img src="https://img.shields.io/badge/Elixir-1.7+-4E2A8E?style=for-the-badge&logo=elixir"/>
  <img src="https://img.shields.io/badge/Phoenix-1.5.7-ED8B00?style=for-the-badge&logo=phoenix"/>
  <img src="https://img.shields.io/badge/PostgreSQL-13+-336791?style=for-the-badge&logo=postgresql"/>
  <img src="https://img.shields.io/badge/Ecto-3.4+-4E2A8E?style=for-the-badge&logo=elixir"/>
  <img src="https://img.shields.io/badge/Credo-1.5+-4E2A8E?style=for-the-badge&logo=elixir"/>
  <img src="https://img.shields.io/badge/Jason-1.0+-000000?style=for-the-badge&logo=json"/>
</p>

<div align="center">
  <b>🇧🇷 Português | <a href="#english-version">🇺🇸 English below</a></b>
</div>

---

## 📑 Sumário | Table of Contents
- [Sobre o Projeto | About](#sobre-o-projeto--about)
- [Tecnologias | Technologies](#tecnologias--technologies)
- [Estrutura | Structure](#estrutura--structure)
- [Funcionalidades | Features](#funcionalidades--features)
- [Rotas da API | API Routes](#rotas-da-api--api-routes)
- [Instalação e Execução | Setup & Run](#instalação-e-execução--setup--run)
- [Configuração | Configuration](#configuração--configuration)
- [Testes | Testing](#testes--testing)
- [Autor | Author](#autor--author)

---

## Sobre o Projeto | About

**PT-BR:**
> API REST desenvolvida em Elixir com Phoenix Framework para processamento de números. O projeto inclui funcionalidades para leitura de arquivos CSV, soma de números e retorno de resultados via API JSON. Ideal para estudos de Elixir, Phoenix e desenvolvimento de APIs RESTful.

**EN:**
> REST API developed in Elixir with Phoenix Framework for number processing. The project includes features for reading CSV files, summing numbers, and returning results via JSON API. Ideal for studying Elixir, Phoenix, and RESTful API development.

---

## 🚀 Tecnologias | Technologies

**PT-BR:**
- **Elixir 1.7+**: Linguagem funcional para desenvolvimento de aplicações escaláveis
- **Phoenix Framework 1.5.7**: Framework web para Elixir com alta performance
- **PostgreSQL**: Banco de dados relacional para persistência de dados
- **Ecto 3.4+**: ORM para Elixir com suporte a múltiplos bancos de dados
- **Credo 1.5+**: Ferramenta de análise estática de código
- **Jason 1.0+**: Biblioteca para parsing e geração de JSON
- **LiveDashboard**: Dashboard em tempo real para monitoramento

**EN:**
- **Elixir 1.7+**: Functional language for scalable application development
- **Phoenix Framework 1.5.7**: High-performance web framework for Elixir
- **PostgreSQL**: Relational database for data persistence
- **Ecto 3.4+**: ORM for Elixir with multi-database support
- **Credo 1.5+**: Static code analysis tool
- **Jason 1.0+**: Library for JSON parsing and generation
- **LiveDashboard**: Real-time dashboard for monitoring

---

## 🗂️ Estrutura | Structure
```
rocketpay_elixir/
├── config/
│   ├── config.exs          # Configuração principal
│   ├── dev.exs             # Configuração de desenvolvimento
│   ├── prod.exs            # Configuração de produção
│   └── test.exs            # Configuração de testes
├── lib/
│   ├── rocketpay/
│   │   ├── application.ex  # Aplicação principal
│   │   ├── numbers.ex      # Módulo de processamento de números
│   │   └── repo.ex         # Configuração do repositório
│   └── rocketpay_web/
│       ├── controllers/
│       │   └── welcome_controller.ex  # Controlador da API
│       ├── router.ex       # Definição de rotas
│       └── endpoint.ex     # Configuração do endpoint
├── priv/
│   └── repo/
│       └── migrations/     # Migrações do banco de dados
├── test/                   # Testes automatizados
├── mix.exs                 # Configuração do projeto
└── numbers.csv             # Arquivo de exemplo com números
```

---

## ⚡ Funcionalidades | Features

**PT-BR:**
- ✅ **API REST**: Endpoints JSON para processamento de dados
- ✅ **Processamento de CSV**: Leitura e soma de números de arquivos CSV
- ✅ **Validação de Dados**: Tratamento de erros e validações
- ✅ **LiveDashboard**: Monitoramento em tempo real (desenvolvimento)
- ✅ **Testes Automatizados**: Suíte de testes com ExUnit
- ✅ **Análise de Código**: Integração com Credo para qualidade
- ✅ **Banco de Dados**: Configuração PostgreSQL com Ecto

**EN:**
- ✅ **REST API**: JSON endpoints for data processing
- ✅ **CSV Processing**: Reading and summing numbers from CSV files
- ✅ **Data Validation**: Error handling and validations
- ✅ **LiveDashboard**: Real-time monitoring (development)
- ✅ **Automated Tests**: Test suite with ExUnit
- ✅ **Code Analysis**: Credo integration for code quality
- ✅ **Database**: PostgreSQL configuration with Ecto

---

## 🛣️ Rotas da API | API Routes

**PT-BR:**
```
GET /api/{filename}
```
- **Descrição**: Processa arquivo CSV e retorna a soma dos números
- **Parâmetros**: `filename` (nome do arquivo sem extensão)
- **Resposta de Sucesso**:
  ```json
  {
    "message": "Welcome momovalda api. Aqui o resultado do momo 37"
  }
  ```
- **Resposta de Erro**:
  ```json
  {
    "message": "Invalid File!"
  }
  ```

**EN:**
```
GET /api/{filename}
```
- **Description**: Processes CSV file and returns the sum of numbers
- **Parameters**: `filename` (filename without extension)
- **Success Response**:
  ```json
  {
    "message": "Welcome momovalda api. Aqui o resultado do momo 37"
  }
  ```
- **Error Response**:
  ```json
  {
    "message": "Invalid File!"
  }
  ```

---

## ⚙️ Instalação e Execução | Setup & Run

**PT-BR:**
1. **Pré-requisitos:**
   - Elixir 1.7+
   - Erlang/OTP 20+
   - PostgreSQL

2. **Clone e instale:**
   ```bash
   git clone <repository-url>
   cd rocketpay_elixir
   mix deps.get
   ```

3. **Configure o banco de dados:**
   ```bash
   mix ecto.setup
   ```

4. **Execute o servidor:**
   ```bash
   mix phx.server
   ```

5. **Acesse a API:**
   - URL: `http://localhost:4000/api/numbers`
   - Dashboard: `http://localhost:4000/dashboard` (apenas desenvolvimento)

**EN:**
1. **Prerequisites:**
   - Elixir 1.7+
   - Erlang/OTP 20+
   - PostgreSQL

2. **Clone and install:**
   ```bash
   git clone <repository-url>
   cd rocketpay_elixir
   mix deps.get
   ```

3. **Configure database:**
   ```bash
   mix ecto.setup
   ```

4. **Run the server:**
   ```bash
   mix phx.server
   ```

5. **Access the API:**
   - URL: `http://localhost:4000/api/numbers`
   - Dashboard: `http://localhost:4000/dashboard` (development only)

---

## ⚙️ Configuração | Configuration

**PT-BR:**
- **Desenvolvimento**: `config/dev.exs`
- **Produção**: `config/prod.exs`
- **Testes**: `config/test.exs`
- **Banco de Dados**: Configurado via Ecto
- **Endpoint**: `http://localhost:4000`

**EN:**
- **Development**: `config/dev.exs`
- **Production**: `config/prod.exs`
- **Testing**: `config/test.exs`
- **Database**: Configured via Ecto
- **Endpoint**: `http://localhost:4000`

---

## 🧪 Testes | Testing

**PT-BR:**
```bash
# Executar todos os testes
mix test

# Executar testes com cobertura
mix test --cover

# Executar análise de código
mix credo
```

**EN:**
```bash
# Run all tests
mix test

# Run tests with coverage
mix test --cover

# Run code analysis
mix credo
```

---

## 👨‍💻 Autor | Author

**PT-BR:**

<div align="center">

**Rodolfo M. F. Abreu**  
Desenvolvedor de software apaixonado por tecnologia, aprendizado contínuo e boas práticas de programação. Sempre em busca de novos desafios e oportunidades para colaborar em projetos inovadores.

[![GitHub](https://img.shields.io/badge/GitHub-rodolfomfabreu-black?style=for-the-badge&logo=github)](https://github.com/salamandery)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Rodolfo%20Abreu-blue?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/rodolfo-marques-ferreira-de-abreu/)

Sinta-se à vontade para entrar em contato para dúvidas, sugestões ou colaborações!

</div>

**EN:**

<div align="center">

**Rodolfo M. F. Abreu**  
Software developer passionate about technology, continuous learning, and best programming practices. Always looking for new challenges and opportunities to collaborate on innovative projects.

[![GitHub](https://img.shields.io/badge/GitHub-rodolfomfabreu-black?style=for-the-badge&logo=github)](https://github.com/salamandery)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Rodolfo%20Abreu-blue?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/rodolfo-marques-ferreira-de-abreu/)

Feel free to get in touch for questions, suggestions, or collaborations!

</div>

---

<div align="center">
  <b>Feito com 💙 para estudos de Elixir, Phoenix e desenvolvimento de APIs RESTful.<br/>
  Made with 💙 for Elixir, Phoenix and RESTful API development studies.</b>
</div>

---

<div align="center" id="english-version">
  <b>🇺🇸 English version above | <a href="#top">🇧🇷 Versão em português acima</a></b>
</div>