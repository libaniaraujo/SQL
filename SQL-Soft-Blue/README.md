# CURSO SQL - SOFT BLUE

### 1. INTRODUÇÃO A BANCO DE DADOS

#### O que são banco de dados?
  
  * Mecanismos de armazenamento de dados.
  * Conjunto de informação com estrutura regular.
  * Banco de dados não relacionais:
    - Arquivos estruturados
  * Banco de dados relacionais:
    - Dados organizados em tabelas
    - Tabelas podem se relacionar com outras tabelas
    - Menor espaço de armazenamento
    - Maior valor velocidade de acesso aos dados
    - Padrão mundialmente utilizado

#### Banco de dados relacionais:

  * <b>BANCO DE DADOS: ferramentas que permitem o armazenamento e manipulação de dados organizados em forma de tabelas;
  * <b>TABELAS:</b> forma de organização de dados formada por linhas e colunas.
  * <b>COLUNAS:</b> campos que formam um registro.
  * <b>LINHAS:</b> registros ou tuplas.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177649837-0a979061-83cf-4ad4-bc02-acd826aa6d7b.PNG" width="300px"/>
</div>

  * <b>VISÕES:</b> consultas SQL a dados das tabelas do banco de dados sem armazená-los.
  * <b>ÍNDICES:</b> estruturas que gerenciam a ordenação de valores dos campos informados para melhorar a performance de processamento destes campos.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177650446-f9d12c90-9b0a-4a43-824c-bdc4d97e1337.PNG" width="800px"/>
</div>

#### SGBDs:

  * SGBD:
    - Sistema Gerenciador de Banco de Dados.
    - DBMS: Database Management System.
    - SGBD não é um banco de dados, mas sim um complemento.
    - SGBD é um grupo de programas para interação com os dados.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177650654-075fe453-233d-401f-80ac-938b0c799214.PNG" width="500px"/>
</div>

#### Introdução a SQL:

  * SQL (Structured Query Language) => Linguagem Estruturada de Consulta
  * Formada pelo conjunto das linguagens:
    - <b>DDL (Data Definition Language):</b> Linguagem de Definição de Dados.
    - <b>DML (Data Manipulation Language):</b> Linguagem de Manipulação de Dados.
    - <b>DQL (Data Query Language):</b> Linguagem de Consulta de Dados.
    - <b>DCL (Data Control Language):</b> Linguagem de Controle de Dados.
    - <b>DTL (Data Transaction Language):</b> Linguagem de Transação de Dados.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177650890-251dbe49-b03c-4d07-a0fd-c346f74edaf2.PNG" width="700px"/>
</div>

#### DDL (Data Definition Language): Linguagem de Definição de Dados.

  * CREATE: Cria uma estrutura.
  * ALTER: Altera um estrutura.
  * DROP: Exclui uma estrutura.

#### DML (Data Manipulation Language): Linguagem de Manipulação de Dados.

  * INSERT: Inserir dados na tabela.
  * UPDATE: Altera os dados.
  * DELETE: Exclui os dados.

#### DQL (Data Query Language): Linguagem de Consulta de Dados.

  * SELECT: Retorna dados.
    - Ordenação de dados.
    - Agrupamento de dados.
    - Funções aritméticas.

#### DCL (Data Control Language): Linguagem de Controle de Dados.

  * GRANT: Habilita acesso a dados e operações.
  * REVOKE: Revoga acesso a dados e operações.

#### DTL (Data Transaction Language): Linguagem de Transação de Dados.

  * START TRANSACTION: Inicia a transação.
  * COMIT: Concretiza a transação.
  * ROLLBACK: Anula a transação.

#### Principais bancos de dados:

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651053-df07e9b3-629d-4853-859c-7dee2fd70fad.PNG" width="500px"/>
</div>

### 2. NORMALIZAÇÃO DE DADOS

- Relacionamentos e chaves:
  * RELACIONAMENTOS: Ligações entre tabelas.
  * CHAVE PRIMÁRIA (PRIMARY KEY, PK): Coluna com valores únicos.
  * CHAVE COMPOSTA: Composição com duas ou mais colunas para gerar uma combinação única.
  * CHAVE ESTRANGEIRA (FOREIGN KEY, FK): Coluna que armazena a chave primária de outra tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651161-7e1471e1-ba02-4036-bca4-8049773e312e.PNG" width="1000px"/>
</div>

### Tipos de relacionamento:

  * RELACIONAMENTO 1 PARA 1 (1:1):
    Para cada registro da primeira tabela existe no máximo um correspondente na segunda tabela, e vice-versa.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651355-33de4fda-3f35-4e52-8c37-dc6d465262b4.PNG" width="1000px"/>
</div>

  * RELACIONAMENTO 1 PARA MUITOS (1:*):
    Para cada registro da primeira tabela pode existir um ou mais correspondentes na segunda tabela, e para cada registro na segunda tabela existe apenas um registro correspondente na primeira tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651491-3cdbd055-e401-4003-852c-dade8b251881.PNG" width="1000px"/>
</div>

  * RELACIONAMENTO MUITOS PARA MUITOS (*:*):
    Para cada registro da primeira tabela pode existir um ou mais correspondentes na segunda tabela, e vice-versa.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651620-205df42d-1611-4d9d-9754-9f60f483d107.PNG" width="1000px"/>
</div>

- Boas práticas no uso da chave:
  * Quanto menor melhor. 
  * Transparente para o usuário.

- Anomalias de dados:
  * Tabelas "fazem tudo" geram anomalias.
  * Anomalia de inserção:
    - Impede a inclusão de registros devido à falta de dados.
  * Anomalia de exclusão:
    - Impede a exclusão de registros devido ao relacionamento com outra tabela.
  * Anomalia de alteração:
    - Impede a alteração de registros devido ao relacionamento com outra tabela.

- Normalização dos dados:
  * Evitar anomalias.
  * Facilitar a manutenção.
  * Maximizar a performance.
  * Manter a integração dos dados.
  * Processo de normalização dos dados:
    - Criada em 1970.
    - 5 formas normais.
    - Na prática a normalização é feita por intuição.
    - Resulta em um número maior de tabelas no banco.
    - Mais tabelas podem aumentar a manutenção do banco.
    - Deve ser utilizado com bom senso.

- Primeira forma normal (1FN):
  * Cada linha de tabela deve representar um registro.
  * Cada célula de tabela deve conter um único valor.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651734-cc4eaaa2-9352-4d3f-9da7-36677e8ebc04.PNG" width="1000px"/>
</div>

- Segunda forma normal (2FN):
  * Obrigatoriamente estar na 1FN.
  * Atributos não chave da tabela devem depender de algumas das chaves da tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651752-de6eafdd-779d-4285-8977-52001cbcdadf.PNG" width="1000px"/>
</div>

- Terceira forma normal (2FN):
  * Obrigatoriamente estar na 2FN.
  * Atributos não chave da tabela depender exclusivamente da chave primária da tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651784-36891894-89af-4aea-998b-fe25764cc872.PNG" width="300px"/>
</div>

- Quarta forma normal (4FN) e quinta forma normal (5FN):
  * Separam em novas tabelas valores que ainda estejam redundantes em uma mesma coluna.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651822-3e53a50e-3412-406e-9456-0bc6e00e3f9d.PNG" width="300px"/>
</div>

### 3. CRIANDO UM BANCO DE DADOS

#### SQL, ANSI, ISO e outros:

  * SQL (Structured Query Language):
    - Linguagem declarativa, detalha a forma do resultado.
    - Criado no início dos anos 70, em laboratórios da IBM.
    - Novos dialetos surgiram, derivando e evoluindo o SQL.
  * Necessidade de padronização:
    - American National Institute (ANSI) em 1986.
    - International Organization for Standardization (ISO) em 1987.
    - Revisto pela primeira vez em 1992 originando o padrão SQL-92.
    - Outras revisões:
      - SQL: 1999 incorporou características de expressões regulares, queries recursivas e triggers.
      - SQL: 2003 incorporou características de XLM, sequências.
      - SQL: 2008, SQL: 2011.
    - Bancos de dados criam e evoluem suas próprias derivações do SQL.
    - Curso aborda SQL padrão, com menções e outras variações.

#### Tipos de dados:

  * Booleanos e numéricos
  <div align="center">
<img src="" width="300px"/>
</div>
    (FIGURA 14)
  * String
  <div align="center">
<img src="" width="300px"/>
</div>
    (FIGURA 15)
  * Data e hora
  <div align="center">
<img src="" width="300px"/>
</div>
    (FIGURA 16)
  * Listas customizadas
  <div align="center">
<img src="" width="300px"/>
</div>
    (FIGURA 17)

#### Outros tipos de dados:
  * BLOB: Permite o armazenamento de informações binárias, arquivos e imagens.
  * TEXT: Permite o armazenamento de grandes informações de strings.
  * REDES: Permite o armazenamento de endereços IP, MAC-ADRESS e outros.
  * MONETÁRIOS: Permite o armazenamento de valores monetários com formatação.
  * GEOMÉTRICOS: Permite o armazenamento de informações de formas geométricas.

#### Atributos:
  * NULL / NOT NULL: Pemite ou não valores nulos.
  * UNSIGNED / SIGNED: Permite ou não números negativos.
  * AUTO-INCREMENT: Sequências, contadores.
  * ZEROFILL: Preenche o valor numérico completando com zeros à esquerda.

### Boas práticas de armazenamento:
  * Espaço em disco: Quanto menor o tipo de dado, menos espaço ele ocupará.
  * Processamento e busca: Quanto menor o tipo de dado, mais rápido é o processamento.
  * Maus usos dos tipos de dados:
    - Armazenar dados numéricos em colunas string.
    - Armazenar dados numéricos em campos maiores que o necessário.
    - Criar campos de string maiores do que o necessário.
  * Bons usos dos tipos de dados:
    - Escolher o menor tipo de dados possível para armazenar suas informações.
    - Pergunta: Qual o menor e maior valor que o campo poderá receber?

- Comandos para a criação e definição do banco de dados:
  * CREATE: Cria uma estrutura. 
  * ALTER: Altera uma estrutura.
  * DROP: Exclui uma estrutura.

- Criando um banco de dados:
  * Como funciona?
    (FIGURA 18)
  * CREATE DATABASE Nome
    Nomes sem espaços e sem caracteres especiais.
    Os conjuntos mais utilizados são Latin1 e UTF-8.
  * ALTER DATABASE Nome Propriedade
  * DROP DATABASE Nome
    Exclusão é definitiva e irreversível.

- Criando uma tabela:
  * Como funciona?
    (FIGURA 19)
  * CREATE TABLE Nome Campos
  * Sintaxe de descrição de campo:
    Nome TipodeDados Atributos
  * Atributos
    Null, Zerofill, Unsigned, Auto-increment, Chave
  * ALTER TABLE Nome Propriedade
  * DROP TABLE Nome 
    Exclusão é definitiva e irrervesível.

- Criando um índice:
  * Como funciona?
    (FIGURA 20)
  * CREATE INDEX Nome ON TabelaEColuna
  * ALTER INDEX Nome Propriedade
  * DROP INDEX Nome

- Criando uma sequência:
  * CREATE SEQUENCE Nome
  * ALTER SEQUENCE Nome Propriedade
  * DROP SEQUENCE Nome
    Exclusão é definitiva e irreversível
