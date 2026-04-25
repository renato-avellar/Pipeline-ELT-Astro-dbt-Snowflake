# 🚀 Pipeline de Dados ELT: Astro Runtime + dbt + Snowflake

Este projeto implementa uma pipeline de dados moderna utilizando o conceito de **ELT (Extract, Load, Transform)**. Ele utiliza o **Astronomer (Astro CLI)** para orquestração com Airflow, **dbt (data build tool)** para transformações de dados e **Snowflake** como Data Warehouse.

## 🏗️ Arquitetura e Tecnologias

- **Orquestrador:** [Apache Airflow](https://airflow.apache.org/) (via Astro Runtime 10.3.0)
- **Transformação:** [dbt-core](https://www.getdbt.com/) com adaptador `dbt-snowflake`
- **Data Warehouse:** [Snowflake](https://www.snowflake.com/)
- **Infraestrutura:** Docker (via Astro CLI)

## 📂 Estrutura do Projeto

```text
.
├── dags/                   # Definições das DAGs do Airflow
├── include/
│   └── data_pipeline/      # Projeto dbt (Modelos, Testes, Macros)
├── Dockerfile              # Customização da imagem (instalação do dbt)
├── requirements.txt        # Dependências Python do Airflow
└── packages.txt            # Pacotes do sistema operacional (nível OS)
```

## 🚀 Como Iniciar

### Pré-requisitos
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Astro CLI](https://www.astronomer.io/docs/astro/cli/install-cli)

### Instalação e Execução
1. Clone o repositório:
   ```bash
   git clone git@github.com:renato-avellar/Pipeline-ELT-Astro-dbt-Snowflake.git
   cd dbt-dag
   ```

2. Inicie o ambiente local:
   ```bash
   astro dev start
   ```

3. Acesse a UI do Airflow:
   - **URL:** `http://localhost:8080` (ou a porta indicada no terminal)
   - **Login/Senha:** `admin` / `admin`

## ⚙️ Configuração do Snowflake

Para que o dbt funcione, você deve configurar uma Connection no Airflow com o ID `snowflake_conn` (ou o nome definido na sua DAG) contendo:
- **Account:** `<seu_account_locator>`
- **User:** `<seu_usuario>`
- **Password:** `<sua_senha>`
- **Database/Schema:** Definidos no projeto dbt

## 🧪 Testes e Qualidade
O projeto inclui testes de integridade de dados via dbt:
```bash
# Dentro do container ou via Airflow
dbt test
```

---
✨ *Este projeto foi desenvolvido seguindo as melhores práticas de Engenharia de Dados.*
