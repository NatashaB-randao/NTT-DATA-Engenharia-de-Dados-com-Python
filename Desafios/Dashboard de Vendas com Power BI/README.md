# Power BI Dashboard: Análise de Professores e Cursos

## Descrição do Projeto

Este projeto tem como objetivo a criação de um modelo dimensional utilizando o **Star Schema** (Esquema em Estrela) para a análise de dados relacionados a professores e cursos ministrados. O foco principal é fornecer insights sobre os professores, cursos oferecidos e departamentos associados, permitindo uma análise eficiente no Power BI.

### Objetivo

O dashboard criado permite uma visão abrangente sobre os dados dos professores, como o número de cursos que ministram, a distribuição por departamento, e o tempo que passaram lecionando. Além disso, o modelo criado com base no **Star Schema** organiza os dados de maneira otimizada, facilitando a execução de consultas e a visualização dos dados no Power BI.

### Link do Dashboard

- [Acesse o dashboard no Power BI](https://app.powerbi.com/links/sc0v-83A6_?ctid=da49a844-e2e3-40af-86a6-c3819d704f49&pbi_source=linkShare)

## Modelo Star Schema

O modelo segue a arquitetura **Star Schema** (Esquema em Estrela), que organiza os dados em uma tabela de fatos e várias tabelas de dimensões, permitindo consultas rápidas e organizadas para relatórios de Business Intelligence (BI). A tabela fato centraliza as informações principais da análise, enquanto as tabelas de dimensões fornecem detalhes para aprofundar a compreensão desses dados.

### Por que utilizar o Star Schema?

- **Eficiência em Consultas**: Ao centralizar os dados em uma tabela fato e referenciá-los através de dimensões relacionadas, o Star Schema otimiza as consultas, reduzindo o tempo de processamento e simplificando a modelagem dos dados.
- **Organização e Clareza**: Ao separar as entidades de análise em dimensões específicas, o Star Schema oferece uma estrutura mais clara e fácil de manter, especialmente em ambientes de BI.
- **Escalabilidade**: Este modelo permite fácil escalabilidade, à medida que novos dados e dimensões podem ser adicionados com simplicidade.

## Estrutura do Modelo

- **Tabela Fato**: `Fato_ProfessorCurso`
  - Contém informações sobre a relação entre os professores e os cursos ministrados, com detalhes sobre datas e departamentos.
  
- **Tabelas Dimensão**:
  - `Dim_Professor`: Contém detalhes sobre cada professor.
  - `Dim_Departamento`: Armazena informações sobre os departamentos.
  - `Dim_Curso`: Contém dados dos cursos ministrados pelos professores.
  - `Dim_Data`: Dimensão de datas para análise temporal dos dados.

### Relacionamentos do Modelo

Os relacionamentos entre as tabelas no Power BI seguem a estrutura 1:N (um-para-muitos), permitindo uma análise eficiente:

- `Fato_ProfessorCurso[ID_Professor]` → `Dim_Professor[ID_Professor]`
- `Fato_ProfessorCurso[ID_Departamento]` → `Dim_Departamento[ID_Departamento]`
- `Fato_ProfessorCurso[ID_Curso]` → `Dim_Curso[ID_Curso]`
- `Fato_ProfessorCurso[ID_Data]` → `Dim_Data[ID_Data]`

## Visualizações do Dashboard

### Principais Visualizações

- **Gráfico de Barras**: Quantidade de professores por departamento.
- **Gráfico de Pizza**: Distribuição de cursos por departamento.
- **Tabela Detalhada**: Lista de professores com seus cursos e departamentos.
- **Cartões de Métricas**: Exibição de métricas chave como número total de professores, total de cursos e média de cursos por professor.
- **Gráfico de Linhas**: Evolução dos cursos ministrados ao longo do tempo.

### Segmentações (Slicers)

O dashboard também inclui segmentações para filtrar os dados por:

- Departamento
- Professor
- Data

## Como Utilizar o Dashboard

1. **Filtros Interativos**: Utilize as segmentações para filtrar os dados de acordo com o departamento, professor ou período.
2. **Análise Temporal**: Visualize a evolução dos cursos ministrados ao longo do tempo através dos gráficos de linha.
3. **Distribuição de Professores e Cursos**: Explore a distribuição de professores e cursos em diferentes departamentos para identificar padrões ou tendências.

## Como Atualizar os Dados

Caso você deseje atualizar os dados do dashboard com novas informações:

1. **Atualize os dados no MySQL** com as inserções e modificações necessárias.
2. **No Power BI**, clique em "Atualizar" para carregar os dados mais recentes.
3. Verifique se as novas informações foram refletidas corretamente nas visualizações.

## Conclusão

Este projeto demonstra a criação de um **Star Schema** eficaz para análise de dados educacionais, especificamente focado na relação entre professores e cursos. Utilizando o Power BI, foi possível criar um dashboard interativo, oferecendo insights valiosos para gestores e equipes de planejamento acadêmico.

