# Criando um Dashboard Corporativo com Integração com MySQL e Power BI

## Descrição do Projeto

Este projeto foi desenvolvido com o objetivo de criar um dashboard corporativo para análise de dados, integrando o banco de dados MySQL com o Power BI. Embora o escopo inicial incluísse o uso do **Azure** para hospedar o banco de dados, dificuldades técnicas impediram a integração com o serviço. No entanto, todos os scripts foram desenvolvidos e executados no **MySQL**, seguido de uma integração direta com o **Power BI** para visualização e análise de dados.

O projeto consiste na criação e manipulação de um banco de dados de uma empresa fictícia, onde são armazenadas informações sobre funcionários, departamentos, projetos e dependentes. Esses dados foram extraídos para gerar relatórios detalhados em Power BI.

Link para o relatório Power BI: [Relatório Power BI](https://app.powerbi.com/links/fgxZEZox_T?ctid=da49a844-e2e3-40af-86a6-c3819d704f49&pbi_source=linkShare)

## Tecnologias Utilizadas

- **MySQL**: Banco de dados relacional para armazenamento e consulta de dados.
- **Power BI**: Ferramenta de Business Intelligence utilizada para criação de relatórios interativos e análise de dados.
- **Power BI Service**: Publicação e compartilhamento do relatório para visualização online.

## Estrutura do Banco de Dados

As tabelas criadas para este projeto incluem:

1. **funcionario**: Armazena dados de funcionários como nome, CPF, endereço, salário, e informações de supervisão.
2. **departamento**: Contém os dados dos departamentos, incluindo nome, número e CPF do gerente.
3. **localizacoes_departamento**: Define as localizações físicas dos departamentos.
4. **projeto**: Informações sobre os projetos da empresa, como nome, número e departamento responsável.
5. **dependente**: Tabela para armazenar os dados dos dependentes dos funcionários.
6. **trabalha_em**: Relaciona os funcionários com os projetos em que trabalham, incluindo o número de horas dedicadas.

## Passos para Execução do Projeto

1. **Criação do Banco de Dados**:
   - Todos os scripts SQL foram criados e executados localmente no **MySQL**. As tabelas foram criadas, e os dados foram inseridos manualmente para simular um ambiente corporativo.

2. **Consultas SQL**:
   - Foram desenvolvidas diversas consultas SQL para extrair dados como salários, dependentes, funcionários de departamentos específicos, e localização de projetos.

3. **Integração com Power BI**:
   - O Power BI foi conectado ao MySQL para extração dos dados.
   - Medidas e colunas calculadas foram criadas diretamente no Power BI para gerar insights mais profundos.

4. **Criação de Relatórios**:
   - Um dashboard interativo foi criado no Power BI, contendo visualizações como gráficos de barras, tabelas e cartões para representar os dados de funcionários, departamentos e projetos.
   - O relatório foi publicado no **Power BI Service** e compartilhado publicamente.

## Relatórios Criados

### Relatório de Salário por Departamento
- **Visualização**: Gráfico de barras.
- **Descrição**: Apresenta o salário médio por departamento, permitindo uma análise rápida dos custos de pessoal.

### Contagem de Departamentos
- **Visualização**: Cartão.
- **Descrição**: Exibe a quantidade total de departamentos na empresa.

## Como Visualizar o Relatório

O relatório está disponível no link a seguir:  
[Relatório Power BI](https://app.powerbi.com/links/fgxZEZox_T?ctid=da49a844-e2e3-40af-86a6-c3819d704f49&pbi_source=linkShare)

## Possíveis Expansões Futuras

- **Integração com Azure**: Em uma futura iteração, a integração com o **Azure** pode ser implementada para fornecer escalabilidade e maior segurança no armazenamento e manipulação de dados.
- **Automatização**: Criar rotinas de ETL para automatizar a carga de dados no banco de dados e atualizações dinâmicas no Power BI.
- **KPIs Avançados**: Desenvolver indicadores de performance mais complexos e análises preditivas baseadas em Machine Learning.

## Conclusão

Este projeto demonstrou a integração eficaz entre um banco de dados relacional e uma ferramenta de Business Intelligence, criando uma solução prática e visual para a análise de dados corporativos. Mesmo sem a utilização do Azure, o projeto atingiu seus principais objetivos de visualização e análise de dados em tempo real.

---

Esse README cobre todas as áreas principais do seu projeto e dá um panorama completo das ferramentas e processos utilizados!