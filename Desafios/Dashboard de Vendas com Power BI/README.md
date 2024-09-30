# Power BI Dashboard de Vendas - Star Schema

Este repositório contém o projeto de criação de um **Dashboard de Vendas** utilizando o Power BI e um **Star Schema** como modelo de dados. O dashboard apresenta uma visão geral das vendas de uma empresa, permitindo análises interativas de métricas, como o total de vendas, quantidade de vendas por cliente, vendas por produto e vendas ao longo do tempo.

## 📊 Link do Dashboard

Você pode acessar o dashboard publicado diretamente no Power BI pelo link abaixo:

🔗 [Dashboard de Vendas - Power BI](https://app.powerbi.com/links/sc0v-83A6_?ctid=da49a844-e2e3-40af-86a6-c3819d704f49&pbi_source=linkShare)

## 🔧 Tecnologias Utilizadas

- **Power BI**: Ferramenta principal utilizada para visualização de dados e criação do dashboard.
- **MySQL**: Banco de dados utilizado para armazenar e consultar os dados de vendas.
- **Modelo Star Schema**: Aqui está uma versão expandida da explicação sobre o **Star Schema**:

---

- **Modelo Star Schema**: O modelo de dados segue a arquitetura de esquema estrela (Star Schema), uma das estruturas mais utilizadas em projetos de Business Intelligence (BI) e Data Warehousing. Este modelo é composto por uma **tabela fato** no centro (contendo os dados transacionais, como vendas), rodeada por várias **tabelas dimensionais** (que contêm dados descritivos, como informações de clientes, produtos e datas).

  **Por que utilizar o Star Schema?**
  - **Simplicidade**: O Star Schema é fácil de entender e configurar, o que o torna ideal para ambientes de BI, onde o objetivo é disponibilizar dados para análise de maneira eficiente e acessível para diferentes níveis de usuários.
  - **Desempenho otimizado para consultas**: Como o Star Schema organiza os dados de forma simples, ele permite consultas rápidas e otimizadas, o que é crucial para relatórios interativos em dashboards. Isso ocorre porque o modelo reduz a complexidade das junções entre tabelas.
  - **Foco em Análises**: Com o Star Schema, as tabelas fato contêm métricas numéricas (como quantidades e valores de vendas), enquanto as dimensões fornecem contexto (como quem comprou, qual produto foi comprado e quando ocorreu a venda). Esse formato facilita a criação de KPIs e visualizações orientadas a negócios.
  - **Escalabilidade**: O modelo também é escalável, sendo fácil adicionar novas dimensões ou métricas à tabela fato conforme os dados de vendas crescem ou novas categorias de análises são necessárias.
  
  **Estrutura**
  - A **tabela fato** central armazena dados transacionais, como vendas, com chaves estrangeiras que se conectam a dimensões.
  - As **tabelas dimensionais** armazenam dados descritivos, permitindo a exploração de "quem", "o que", "quando", "onde" e "como" em cada venda.

  Esse modelo garante uma organização clara e de fácil manutenção, permitindo a geração de insights mais rápidos e uma experiência mais fluida ao construir relatórios e dashboards no Power BI.

--- 

Se precisar de mais ajustes ou detalhes adicionais, é só avisar!
  
## 📂 Estrutura do Projeto

### Tabelas no Banco de Dados

1. **Fato_Vendas**: Contém os dados transacionais de vendas.
2. **Dim_Cliente**: Tabela dimensional com informações dos clientes.
3. **Dim_Produto**: Tabela dimensional com informações dos produtos.
4. **Dim_Data**: Tabela dimensional que representa as datas.

### Relacionamentos do Star Schema

- `Fato_Vendas[ID_Cliente] → Dim_Cliente[ID_Cliente]`
- `Fato_Vendas[ID_Produto] → Dim_Produto[ID_Produto]`
- `Fato_Vendas[ID_Data] → Dim_Data[ID_Data]`

## 🎯 Principais Funcionalidades

O dashboard permite que os usuários visualizem e interajam com os seguintes indicadores de performance:

- **Total de Vendas**: Valor total das vendas realizadas.
- **Quantidade de Vendas**: Número total de transações realizadas.
- **Vendas ao Longo do Tempo**: Gráfico de linha mostrando as vendas distribuídas ao longo do tempo.
- **Vendas por Cliente**: Gráfico de barras que exibe a contribuição de cada cliente para o total de vendas.
- **Vendas por Produto**: Gráfico que detalha as vendas por categoria de produto.


## 🛠️ Instruções de Uso

1. Clone este repositório para sua máquina local:
    ```bash
    git clone https://github.com/seu-usuario/nome-do-repositorio.git
    ```

2. Abra o Power BI e carregue os dados que estão no banco de dados MySQL.

3. Configure o modelo de dados conforme o **Star Schema**, criando os relacionamentos entre as tabelas de fato e dimensão.

4. Importe as tabelas para o Power BI e crie os gráficos e KPIs conforme o exemplo no dashboard publicado.

5. Utilize as segmentações (Slicers) para filtrar os dados dinamicamente.

## 📈 Visualizações no Dashboard

O dashboard contém as seguintes visualizações:

- **Cartões de KPI** para mostrar o total de vendas e o número de transações.
- **Gráficos de Linhas** para as vendas ao longo do tempo.
- **Gráficos de Barras** para exibir as vendas por cliente e por produto.
- **Slicers (Segmentações)** para permitir a filtragem por data, cliente e produto.



