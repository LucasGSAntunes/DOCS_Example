# Product Backlog Building

[← Back to Main Page](../../index.md)

## Guide to Reviewing This Documentation

This document outlines the **functional and non-functional requirements** for the **Data Management System**, which integrates **a hardware-connected scale, an API, and a mobile application**. The documentation follows a structured approach to ensure clarity and completeness.

### **How to Use This Documentation**

- **Functional Requirements (FR-00)** - The key capabilities the system must implement.
- **Non-Functional Requirements (NFR-00)** - The quality attributes ensuring system performance, security, and usability.
- **Themes (TM-00)** - High-level system areas grouping functionalities.
- **Epics (EP-00)** - Major features that contribute to the system’s development.
- **Capabilities (C-00)** - The abilities the system must support.
- **Features (F-00)** - Specific technical functionalities fulfilling each capability.
- **User Stories (US-00)** - Individual use cases defining how users interact with the system.
- **Backlog** - A detailed, structured representation of all functionalities. (After have all topics, we can construct that)

Each section follows a progressive breakdown of the system’s structure, from high-level requirements to detailed functionalities.
Nothing in this document is a world rule, if you think that something is wrong discuss with the team and fix it.

---

## **1. Functional Requirements**

> Defines the system's **core functionalities**.
> What the system must to do

| #     | Description                                                          |
| ----- | -------------------------------------------------------------------- |
| FR-01 | The system must have a**hardware-integrated scale prototype**. |
| FR-02 | The system must have an**API**.                                |
| FR-03 | The system must have a**mobile application (APP)**.            |
| FR-04 | The system must align with the**Implementation Guide**.        |

(Additional functional requirements …)

---

## **2. Non-Functional Requirements**

> Specifies **quality attributes** that ensure the system meets expectations for **performance, security, usability, scalability, etc**...
> How the system must do functional requirements

| #      | Type        | Description                                                                                 |
| ------ | ----------- | ------------------------------------------------------------------------------------------- |
| NFR-01 | Reliability | The**scale must be resistant** to environmental conditions (dust, moisture, impact).  |
| NFR-02 | Performance | The**API must process weight data in real-time** with minimal latency.                |
| NFR-03 | Usability   | The APP must be**easy to use** for waste pickers with **low digital literacy**. |
| NFR-04 | Scalability | The system must be able to**support multiple cooperative centers**.                   |
| NFR-05 | Security    | The API must ensure**secure authentication** for users.                               |
| NFR-06 | Reliability | The**scale must accurately weigh** the collected material.                            |

(Additional non-functional requirements …)

---

## **3. Themes**

> **Themes** categorize **major system areas**, grouping functionalities under broad topics.

| #     | Theme                     | Description                                                   |
| ----- | ------------------------- | ------------------------------------------------------------- |
| TM-01 | Hardware Project          | Design and implementation of electronic components.           |
| TM-02 | Hardware Integration      | Development and integration of the scale prototype.           |
| TM-03 | System Architecture       | API design and alignment with the implementation guide.       |
| TM-04 | Security & Compliance     | Secure authentication and data protection mechanisms.         |
| TM-05 | Scalability & Performance | Real-time processing and multi-center support.                |
| TM-06 | User Experience           | Ensuring usability for waste pickers and cooperative centers. |

(Additional themes …)

---

## **4. Epics**

> **Epics** define **high-level features** that contribute to system development.

| #     | Epic                             | Description                                                     |
| ----- | -------------------------------- | --------------------------------------------------------------- |
| EP-01 | Scale Prototype Development      | Design and build the hardware-integrated scale prototype.       |
| EP-02 | API Development                  | Implement the API for data collection, processing, and storage. |
| EP-03 | Mobile App Development           | Create the mobile application for user interaction.             |
| EP-04 | Implementation Guide Alignment   | Ensure compliance with the implementation guide.                |
| EP-05 | Security & Authentication        | Develop secure authentication mechanisms.                       |
| EP-06 | Usability & Accessibility        | Optimize UI/UX for waste pickers and cooperative centers.       |
| EP-07 | System Performance & Scalability | Optimize for real-time data processing and multiple centers.    |
| EP-08 | Hardware Resilience              | Ensure durability against environmental conditions.             |

(Additional epics …)

---

## **5. Capabilities**

> **Capabilities** describe the **system's technical abilities** to support key functionalities.

| #    | Capability                 | Description                                                       |
| ---- | -------------------------- | ----------------------------------------------------------------- |
| C-01 | Weight Measurement         | Accurately measure weight using the scale prototype.              |
| C-02 | Real-Time Data Processing  | Process weight data with minimal latency.                         |
| C-03 | Secure API Access          | Ensure authentication and authorization for API access.           |
| C-04 | Mobile User Interface      | Provide an intuitive mobile interface for waste pickers.          |
| C-05 | Multi-Center Support       | Allow multiple cooperative centers to use the system.             |
| C-06 | Environmental Resilience   | Ensure scale durability in dust, moisture, and impact conditions. |
| C-07 | Data Storage & Retrieval   | Store and retrieve weight data efficiently.                       |
| C-08 | Compliance with Guidelines | Follow best practices from the implementation guide.              |

(Additional capabilities …)

---

## **6. Features**

> **Features** define the **specific functionalities** required to implement each capability.

| #    | Feature                       | Description                                                       |
| ---- | ----------------------------- | ----------------------------------------------------------------- |
| F-01 | Scale Data Transmission       | Transmit weight data from the scale to the API.                   |
| F-02 | Mobile Weight Display         | Display real-time weight data on the mobile app.                  |
| F-03 | User Authentication           | Secure login system for API and app users.                        |
| F-04 | Offline Mode                  | Enable mobile app functionality without an internet connection.   |
| F-05 | Multi-Center Management       | Manage users and operations across multiple cooperative centers.  |
| F-06 | API Logging & Monitoring      | Track API requests and performance metrics.                       |
| F-07 | Data Export                   | Allow users to export collected data in CSV or JSON formats.      |
| F-08 | UI Accessibility Enhancements | Ensure the app is accessible for users with low digital literacy. |

(Additional features …)

---

## **7. User Stories**

> **User stories** describe **how different users interact with the system**, providing real-world scenarios.

| #     | Description                                                                                                                                |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| US-01 | As a scale operator, I want the equipment to perform precise measurements to avoid weighing errors.                                        |
| US-02 | As a scale operator, I want the equipment to have a digital display to view the weight before confirmation.                                |
| US-03 | As an administrator, I want the scale to be resistant to adverse environmental conditions (dust, moisture, impact) for greater durability. |
| US-04 | As a scale operator, I want the system to notify me if the scale is uncalibrated to ensure accuracy.                                       |
| US-05 | As an administrator, I want to configure different weighing modes in the system to meet operational needs.                                 |

(Additional user stories …)

## **8. Critérios de Aceitação**

Os critérios de aceitação são condições que uma funcionalidade ou user story deve atender para ser considerada completa. Eles garantem que os requisitos foram implementados corretamente e atendem às necessidades do usuário.

| **User Story**                                                                                                                                            | **Critérios de Aceitação**                                                                                                                                                                                                                                                                |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **US-01**- Como operador da balança, quero que o equipamento faça medições precisas para evitar erros de pesagem.                                     | 1. A balança deve ter um erro máximo de ±0,1% do peso real.  2. O sistema deve validar a calibração da balança antes de iniciar uma nova medição.  3. O operador deve ser notificado em caso de erro de medição.                                                                         |
| **US-02**- Como operador da balança, quero que o equipamento tenha um display digital para visualizar o peso antes da confirmação.                     | 1. O display digital deve mostrar o peso em tempo real com atualização a cada 0,5 segundos.  2. O operador deve poder confirmar a pesagem antes de enviar os dados para o sistema.  3. Caso haja erro de leitura, o sistema deve alertar o operador.                                             |
| **US-03**- Como administrador, quero que a balança seja resistente a condições ambientais adversas (poeira, umidade, impacto) para maior durabilidade. | 1. O equipamento deve ter certificação IP65 ou superior para resistência a poeira e umidade.  2. A estrutura da balança deve suportar impactos de até 5 kg sem comprometer a funcionalidade.  3. Os componentes eletrônicos devem estar protegidos contra corrosão.                         |
| **US-04**- Como operador da balança, quero que o sistema me avise caso a balança esteja descalibrada para garantir a precisão.                         | 1. O sistema deve executar uma verificação de calibração a cada inicialização.  2. Caso a calibração esteja incorreta, o operador deve ser notificado antes de realizar medições.  3. O sistema deve permitir a calibração manual quando necessário.                                  |
| **US-05**- Como administrador, quero configurar diferentes modos de pesagem no sistema para atender às necessidades operacionais.                        | 1. O sistema deve oferecer pelo menos três modos de pesagem configuráveis pelo administrador.  2. O administrador deve poder definir limites mínimos e máximos para cada modo.  3. Os operadores devem ser capazes de alternar entre os modos de pesagem sem necessidade de reinicialização. |

## **9. Backlog**

O backlog do projeto é uma lista abrangente de todas as tarefas, funcionalidades e melhorias planejadas para o sistema. Ele serve como referência central para o que precisa ser desenvolvido, permitindo que a equipe tenha uma visão clara do escopo do projeto.

| Tema | Épico                                 | Capacidades                    | Features                                   | User Story | Descrição                                                                                                               | Critérios de Aceitação                                                                                                                                                                                                           |
| ---- | -------------------------------------- | ------------------------------ | ------------------------------------------ | ---------- | ------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| TM01 | EP01 Gestão de Conteúdos e Usuários | C01 Gerenciamento de Usuários | F01 Registro de Médicos e Administradores | US01       | Como médico, eu gostaria de me registrar no sistema para ter credenciais de acesso.                                      | 1. O sistema deve permitir cadastro de médicos com e-mail único.  2. O médico deve receber um e-mail de confirmação após o cadastro.  3. O sistema deve armazenar os dados com segurança.                                    |
| TM01 | EP01 Gestão de Conteúdos e Usuários | C01 Gerenciamento de Usuários | F05 Login de Médicos e Administradores    | US02       | Como médico, eu gostaria de realizar login no sistema para ter acesso ao conteúdo da plataforma.                        | 1. O login deve permitir autenticação via e-mail e senha.  2. O sistema deve bloquear a conta após 5 tentativas falhas.  3. O médico deve ser redirecionado à dashboard após login bem-sucedido.                              |
| TM01 | EP01 Gestão de Conteúdos e Usuários | C01 Gerenciamento de Usuários | F05 Login de Médicos e Administradores    | US03       | Como administrador, eu gostaria de realizar login no sistema para ter acesso às funcionalidades de gestão.              | 1. O login deve permitir autenticação de administradores.  2. Administradores devem ter permissões diferenciadas.  3. O sistema deve registrar logs de acessos de administradores.                                               |
| TM01 | EP01 Gestão de Conteúdos e Usuários | C01 Gerenciamento de Usuários | F04 Edição de Perfil de Usuário         | US04       | Como usuário (médico ou administrador), eu gostaria de redefinir a minha senha para recuperar as credenciais de acesso. | 1. O sistema deve permitir redefinição de senha via e-mail.  2. O link de redefinição deve expirar após 15 minutos.  3. A nova senha deve atender critérios de segurança.                                                    |
| TM01 | EP01 Gestão de Conteúdos e Usuários | C01 Gerenciamento de Usuários | F04 Edição de Perfil de Usuário         | US05       | Como usuário (médico ou administrador), eu gostaria de editar o meu perfil para atualizar as informações cadastradas. | 1. O sistema deve permitir a edição de nome, telefone e especialidade.  2. Alterações devem ser salvas com sucesso e refletidas imediatamente.  3. O usuário deve receber confirmação por e-mail após a edição.           |
| TM01 | EP02 Assinatura e Notificações       | C04 Gerenciamento de Finanças | F12 Gerenciamento de Assinatura            | US06       | Como médico, eu gostaria de acessar área de finanças para gerenciar assinatura.                                        | 1. O sistema deve exibir planos disponíveis e preços.  2. O médico deve poder atualizar seu plano de assinatura.  3. O pagamento deve ser processado com segurança via gateway de pagamento.                                    |
| TM01 | EP01 Gestão de Conteúdos e Usuários | C01 Gerenciamento de Usuários | F01 Registro de Médicos e Administradores | US07       | Como administrador, eu gostaria de criar outras contas administrador para auxiliar.                                       | 1. O administrador deve poder convidar novos administradores via e-mail.  2. O novo administrador deve aceitar o convite para ativar a conta.  3. O sistema deve permitir apenas administradores cadastrarem novos administradores. |

---

## Revision History

| Date       | Version | Changes                           | Authors |
| ---------- | ------- | --------------------------------- | ------- |
| 02/04/2024 | 0.1     | Document creation                 |         |
| 06/04/2024 | 0.2     | Topics 1.1, 1.2, 1.3, and 3       |         |
| 16/04/2024 | 0.3     | Documentation on Git Pages        |         |
| 09/09/2024 | 0.4     | Updated technologies and app type |         |
| 09/09/2024 | 0.5     | Technology adjustments            |         |

[← Back to Main Page](../../index.md)
