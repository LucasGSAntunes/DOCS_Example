# **Esquema de Banco de Dados**

[← Voltar para a Página Principal](../../../index.md)

## **1. Tabelas**

### **1.1. Users**

Tabela que armazena informações sobre os usuários do sistema, como médicos e administradores.

| Coluna     | Tipo         | Descrição                                           |
| ---------- | ------------ | ----------------------------------------------------- |
| id         | UUID         | Identificador único do usuário (Chave Primária)    |
| name       | VARCHAR(255) | Nome do usuário                                      |
| email      | VARCHAR(255) | Email único do usuário (Chave Única)               |
| password   | VARCHAR(255) | Senha do usuário, criptografada                      |
| role       | ENUM         | Role do usuário (e.g.,`doctor`, `administrator`) |
| created_at | TIMESTAMP    | Data de criação do registro                         |
| updated_at | TIMESTAMP    | Data de última atualização do registro             |

### **1.2. Documents**

Tabela que armazena informações sobre os documentos cadastrados no sistema.

| Coluna     | Tipo         | Descrição                                                                         |
| ---------- | ------------ | ----------------------------------------------------------------------------------- |
| id         | UUID         | Identificador único do documento (Chave Primária)                                 |
| title      | VARCHAR(255) | Título do documento                                                                |
| content    | TEXT         | Conteúdo do documento                                                              |
| created_by | UUID         | ID do usuário que criou o documento (Chave Estrangeira referenciando `Users.id`) |
| created_at | TIMESTAMP    | Data de criação do documento                                                      |
| updated_at | TIMESTAMP    | Data de última atualização do documento                                          |

### **1.3. Topics**

Tabela que armazena os tópicos relacionados aos documentos.

| Coluna     | Tipo         | Descrição                                       |
| ---------- | ------------ | ------------------------------------------------- |
| id         | UUID         | Identificador único do tópico (Chave Primária) |
| name       | VARCHAR(255) | Nome do tópico                                   |
| created_at | TIMESTAMP    | Data de criação do tópico                      |
| updated_at | TIMESTAMP    | Data de última atualização do tópico          |

### **1.4. Document_Topics (Relacional)**

Tabela intermediária que associa documentos e tópicos, permitindo que um documento tenha múltiplos tópicos.

| Coluna      | Tipo | Descrição                                                        |
| ----------- | ---- | ------------------------------------------------------------------ |
| document_id | UUID | ID do documento (Chave Estrangeira referenciando `Documents.id`) |
| topic_id    | UUID | ID do tópico (Chave Estrangeira referenciando `Topics.id`)      |

### **1.5. Subscription**

Tabela que armazena informações sobre as assinaturas dos médicos.

| Coluna     | Tipo      | Descrição                                                  |
| ---------- | --------- | ------------------------------------------------------------ |
| id         | UUID      | Identificador único da assinatura (Chave Primária)         |
| doctor_id  | UUID      | ID do médico (Chave Estrangeira referenciando `Users.id`) |
| start_date | TIMESTAMP | Data de início da assinatura                                |
| end_date   | TIMESTAMP | Data de término da assinatura                               |
| status     | ENUM      | Status da assinatura (e.g.,`active`, `inactive`)         |
| created_at | TIMESTAMP | Data de criação da assinatura                              |
| updated_at | TIMESTAMP | Data de última atualização da assinatura                  |

## **2. Relacionamentos**

1. **Users ↔ Documents:**

   - Um **usuário** (médico ou administrador) pode criar vários **documentos**, mas cada documento é criado por um único usuário.
   - Relacionamento de **um para muitos** entre `Users` e `Documents`.
2. **Documents ↔ Topics:**

   - Um **documento** pode estar associado a múltiplos **tópicos** e um **tópico** pode ser associado a múltiplos **documentos**.
   - Relacionamento de **muitos para muitos** entre `Documents` e `Topics`, resolvido pela tabela intermediária `Document_Topics`.
3. **Users ↔ Subscription:**

   - Um **usuário** (médico) pode ter uma única **assinatura**, mas uma assinatura é vinculada a apenas um **usuário**.
   - Relacionamento de **um para um** entre `Users` e `Subscription` (para médicos).

## **3. Exemplo de Diagrama Entidade-Relacionamento (ERD)**

```
  Users
  +-------------------------+
  | id (PK)                 |
  | name                    |
  | email                   |
  | password                |
  | role                    |
  | created_at              |
  | updated_at              |
  +-------------------------+
         |
         | 1
         | 
         | N
   +-------------------------+
   | Documents               |
   |-------------------------|
   | id (PK)                 |
   | title                   |
   | content                 |
   | created_by (FK)         |
   | created_at              |
   | updated_at              |
   +-------------------------+
         |
         | N
         |
   +-------------------------+
   | Document_Topics         |
   |-------------------------|
   | document_id (FK)        |
   | topic_id (FK)           |
   +-------------------------+
         |
         | N
         |
   +-------------------------+
   | Topics                  |
   |-------------------------|
   | id (PK)                 |
   | name                    |
   | created_at              |
   | updated_at              |
   +-------------------------+
   
   +-------------------------+
   | Subscription            |
   |-------------------------|
   | id (PK)                 |
   | doctor_id (FK)          |
   | start_date              |
   | end_date                |
   | status                  |
   | created_at              |
   | updated_at              |
   +-------------------------+
```

## **4. Explicações de Campos**

- **PK (Primary Key)**: Chave primária, usada para identificar unicamente um registro.
- **FK (Foreign Key)**: Chave estrangeira, usada para estabelecer um relacionamento com outra tabela.



# Revision History

| Date       | Version | Changes                           | Authors |
| ---------- | ------- | --------------------------------- | ------- |
| 02/04/2024 | 0.1     | Document creation                 |         |
| 06/04/2024 | 0.2     | Topics 1.1, 1.2, 1.3, and 3       |         |
| 16/04/2024 | 0.3     | Documentation on Git Pages        |         |
| 09/09/2024 | 0.4     | Updated technologies and app type |         |
| 09/09/2024 | 0.5     | Technology adjustments            |         |

[← Voltar para a Página Principal](../../../index.md)
