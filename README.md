# Sistema de Reservas de Passagens - Backend

Este é o backend do sistema de reservas de passagens aéreas para uma companhia fictícia. O projeto faz parte de uma aplicação fullstack para permitir a compra de passagens, gerenciamento de voos e check-ins online, com áreas específicas para usuários e administradores.

Para acessar o repositório do frontend, [clique aqui](https://github.com/rodrigojramos/airline-frontend).

---

## Sobre o Projeto

Esta aplicação backend foi projetada para ser a API de um sistema de reservas de passagens aéreas. Como usuário, é possível pesquisar e comprar passagens, gerenciar informações pessoais e realizar o check-in dos voos. Para administradores, o sistema oferece uma interface para gerenciar voos, passageiros e aeronaves.

### Funcionalidades Principais

- **Usuários**: compra de passagens, check-in e área pessoal com dados de próximos voos.
- **Administração**: visualização e cadastro de voos, aeronaves, gerenciamento de listas de passageiros.
- **Autenticação e Autorização**: utilizando OAuth2 e JWT para acesso seguro e gestão de sessões.

## Tecnologias Utilizadas

- **Java**
- **Spring Boot**
- **JPA / Hibernate**
- **Maven**
- **PostgreSQL**
- **OAuth2, JWT** (para autenticação e autorização)
- **Swagger** (para documentação da API)
- **Docker e Docker-compose**

## Configuração e Instalação

### Pré-requisitos

- **Java 17+**
- **Maven**
- **PostgreSQL**
  
### Instalação e Execução

1. Clone o repositório:
   ```bash
   git clone https://github.com/rodrigojramos/airline.git
   cd airline

2. Instale as dependências:
   ```bash
   mvn install
   
3. Configuração do banco de dados (H2):
  - O projeto está configurado para usar o banco de dados H2 em memória por padrão, portanto, não é necessária nenhuma configuração adicional para testar localmente.
  - Acesse o console do H2 em http://localhost:8080/h2-console (usuário: sa, senha vazia) para ver as tabelas e dados gerados automaticamente.

4. Inicie o servidor:
   ```bash
   mvn spring-boot:run

A API estará disponível em http://localhost:8080, e a documentação do Swagger pode ser acessada em http://localhost:8080/swagger-ui.html.

## Configuração opcional para PostgreSQL
Caso você deseje utilizar o PostgreSQL em vez do H2:
1. Inicie o PostgreSQL com Docker Compose
  Execute o comando abaixo na raiz do projeto para iniciar o PostgreSQL:
   ```bash
   docker-compose up -d
  Esse comando iniciará o PostgreSQL com as configurações especificadas no arquivo docker-compose.yml.

2. Ative o perfil PostgreSQL
  No arquivo src/main/resources/application.properties, mude a configuração do APP_PROFILE para utilizar o PostgreSQL:
   ```bash
   spring.profiles.active=${APP_PROFILE:dev}
3. Configure a geração do script SQL
   No arquivo src/main/resources/application-dev.properties, descomente as seguintes linhas para gerar um script SQL a partir do mapeamento das entidades:
   ```bash
   spring.jpa.properties.jakarta.persistence.schema-generation.create-source=metadata
   spring.jpa.properties.jakarta.persistence.schema-generation.scripts.action=create
   spring.jpa.properties.jakarta.persistence.schema-generation.scripts.create-target=create.sql
   spring.jpa.properties.hibernate.hbm2ddl.delimiter=;
  Essas configurações permitem gerar automaticamente um arquivo create.sql com as instruções de criação do banco de dados. Ele será salvo na pasta src/main/resources. Após isso volte a comentar estás linhas.

4. Importação de Dados
   - Certifique-se de que o PostgreSQL está em execução (verifique com docker-compose ps) e acessível pela porta configurada no docker-compose.yml (5432).
   - Conecte-se ao banco de dados usando as credenciais configuradas no docker-compose.yml:
     - Usuário: me@example.com
     - Senha: 1234567
   - Importe o arquivo create.sql gerado no passo 3 para o PostgreSQL executando o script diretamente no banco.

## Próximos passos
  - Integração de pagamento com checkout para concluir a compra de passagens.
  - Gerenciamento de fila de espera utilizando Kafka ou RabbitMQ para compra e check-in, garantindo que os processos sejam escaláveis e organizados.

Para mais detalhes sobre a aplicação frontend, acesse o repositório [aqui](https://github.com/rodrigojramos/airline-frontend).
