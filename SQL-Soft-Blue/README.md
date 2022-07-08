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

  * <b>BANCO DE DADOS:</b> ferramentas que permitem o armazenamento e manipulação de dados organizados em forma de tabelas;
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

  * <b>CREATE:</b> Cria uma estrutura.
  * <b>ALTER:</b> Altera um estrutura.
  * <b>DROP:</b> Exclui uma estrutura.

#### DML (Data Manipulation Language): Linguagem de Manipulação de Dados.

  * <b>INSERT:</b> Inserir dados na tabela.
  * <b>UPDATE:</b> Altera os dados.
  * <b>DELETE:</b> Exclui os dados.

#### DQL (Data Query Language): Linguagem de Consulta de Dados.

  * <b>SELECT:</b> Retorna dados.
    - Ordenação de dados.
    - Agrupamento de dados.
    - Funções aritméticas.

#### DCL (Data Control Language): Linguagem de Controle de Dados.

  * <b>GRANT:</b> Habilita acesso a dados e operações.
  * <b>REVOKE:</b> Revoga acesso a dados e operações.

#### DTL (Data Transaction Language): Linguagem de Transação de Dados.

  * <b>START TRANSACTION:</b> Inicia a transação.
  * <b>COMIT:</b> Concretiza a transação.
  * <b>ROLLBACK:</b> Anula a transação.

#### Principais bancos de dados:

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651053-df07e9b3-629d-4853-859c-7dee2fd70fad.PNG" width="500px"/>
</div>

### 2. NORMALIZAÇÃO DE DADOS

- Relacionamentos e chaves:
  * <b>RELACIONAMENTOS:</b> Ligações entre tabelas.
  * <b>CHAVE PRIMÁRIA (PRIMARY KEY, PK):</b> Coluna com valores únicos.
  * <b>CHAVE COMPOSTA:</b> Composição com duas ou mais colunas para gerar uma combinação única.
  * <b>CHAVE ESTRANGEIRA (FOREIGN KEY, FK):</b> Coluna que armazena a chave primária de outra tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651161-7e1471e1-ba02-4036-bca4-8049773e312e.PNG" width="1000px"/>
</div>

### Tipos de relacionamento:

  * <b>RELACIONAMENTO 1 PARA 1 (1:1):</b>
    Para cada registro da primeira tabela existe no máximo um correspondente na segunda tabela, e vice-versa.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651355-33de4fda-3f35-4e52-8c37-dc6d465262b4.PNG" width="1000px"/>
</div>

  * <b>RELACIONAMENTO 1 PARA MUITOS (1:*):</b>
    Para cada registro da primeira tabela pode existir um ou mais correspondentes na segunda tabela, e para cada registro na segunda tabela existe apenas um registro correspondente na primeira tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651491-3cdbd055-e401-4003-852c-dade8b251881.PNG" width="1000px"/>
</div>

  * <b>RELACIONAMENTO MUITOS PARA MUITOS (*:*):</b>
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

#### Normalização dos dados:

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

#### Primeira forma normal (1FN):

  * Cada linha de tabela deve representar um registro.
  * Cada célula de tabela deve conter um único valor.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651734-cc4eaaa2-9352-4d3f-9da7-36677e8ebc04.PNG" width="700px"/>
</div>

#### Segunda forma normal (2FN):

  * Obrigatoriamente estar na 1FN.
  * Atributos não chave da tabela devem depender de algumas das chaves da tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651752-de6eafdd-779d-4285-8977-52001cbcdadf.PNG" width="700px"/>
</div>

#### Terceira forma normal (2FN):

  * Obrigatoriamente estar na 2FN.
  * Atributos não chave da tabela depender exclusivamente da chave primária da tabela.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651784-36891894-89af-4aea-998b-fe25764cc872.PNG" width="700px"/>
</div>

#### Quarta forma normal (4FN) e quinta forma normal (5FN):

  * Separam em novas tabelas valores que ainda estejam redundantes em uma mesma coluna.

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177651822-3e53a50e-3412-406e-9456-0bc6e00e3f9d.PNG" width="700px"/>
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

  * <b>Booleanos e numéricos</b>

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177653425-33ad22e1-1168-45a4-a64d-caac2c04ff76.PNG" width="700px"/>
</div>

  * <b>String</b>

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177653442-b844768f-736e-4f7b-8cde-2ecc61ed8e7c.PNG" width="700px"/>
</div>

  * <b>Data e hora</b>

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177653529-5f55f01c-6fdc-4cdd-a280-967f4805d3dd.PNG" width="700px"/>
</div>

  * <b>Listas customizadas</b>

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177653554-7cdb89b3-5e80-4b4c-bba7-4488c4174b5d.PNG" width="700px"/>
</div>

#### Outros tipos de dados:

  * <b>BLOB:</b> Permite o armazenamento de informações binárias, arquivos e imagens.
  * <b>TEXT:</b> Permite o armazenamento de grandes informações de strings.
  * <b>REDES:</b> Permite o armazenamento de endereços IP, MAC-ADRESS e outros.
  * <b>MONETÁRIOS:</b> Permite o armazenamento de valores monetários com formatação.
  * <b>GEOMÉTRICOS:</b> Permite o armazenamento de informações de formas geométricas.

#### Atributos:

  * <b>NULL / NOT NULL:</b> Pemite ou não valores nulos.
  * <b>UNSIGNED / SIGNED:</b> Permite ou não números negativos.
  * <b>AUTO-INCREMENT:</b> Sequências, contadores.
  * <b>ZEROFILL:</b> Preenche o valor numérico completando com zeros à esquerda.

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

#### Comandos para a criação e definição do banco de dados:

  * <b>CREATE:</b> Cria uma estrutura. 
  * <b>ALTER:</b> Altera uma estrutura.
  * <b>DROP:</b> Exclui uma estrutura.

#### Criando um banco de dados:

  * Como funciona?

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177654417-4cda8dec-05b2-432c-988e-090eaac76cfe.PNG" width="700px"/>
</div>

* <b>CREATE DATABASE Nome</b>
    Nomes sem espaços e sem caracteres especiais.
    Os conjuntos mais utilizados são Latin1 e UTF-8.
  * <b>ALTER DATABASE Nome Propriedade</b>
  * <b>DROP DATABASE Nome</b>
    Exclusão é definitiva e irreversível.

#### Criando uma tabela:

  * Como funciona?

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177654569-3404b9e8-a4a1-4669-8cb8-60fa4c35f025.PNG" width="700px"/>
</div>

  * <b>CREATE TABLE Nome Campos</b>
  * Sintaxe de descrição de campo:
    Nome TipodeDados Atributos
  * Atributos
    Null, Zerofill, Unsigned, Auto-increment, Chave
  * <b>ALTER TABLE Nome Propriedade</b>
  * <b>DROP TABLE Nome</b> 
    Exclusão é definitiva e irrervesível.

#### Criando um índice:

  * Como funciona?

<div align="center">
<img src="https://user-images.githubusercontent.com/94937578/177654621-7471d364-bd61-426a-847b-ed092800957d.PNG" width="700px"/>
</div>

  * <b>CREATE INDEX Nome ON TabelaEColuna</b>
  * <b>ALTER INDEX Nome Propriedade</b>
  * <b>DROP INDEX Nome</b>

#### Criando uma sequência:

  * <b>CREATE SEQUENCE Nome</b>
  * <b>ALTER SEQUENCE Nome Propriedade</b>
  * <b>DROP SEQUENCE Nome</b>
    Exclusão é definitiva e irreversível



### 4. MANIPULANDO DADOS

#### DML e DQL:
  * <b>DML => Linguagem de Mnipulação de Dados</b>
    - INSERT: Insere dados.
    - UPDATE: Altera dados.
    - DELETE: Exclui dados.
  * <b>DQL => Linguagem de Consulta de Dados</b>
    - SELECT: Retorna dados.
    - Ordenação de dados.
    - Agrupamento de dados.
    - Filtros de seleção.
    - Funções aritméticas.

#### Gerenciando dados:
  * INSERT INTO Tabela VALUES (Valores)

<img src="https://user-images.githubusercontent.com/94937578/177778505-2832dc4e-8b06-4fd5-a90b-16315a8c7e5b.PNG" width="700px"/>

  * SELECT Campos FROM Tabela
  
<img src="https://user-images.githubusercontent.com/94937578/177778582-95277cae-df3d-406a-a2dd-df37fbcb1705.PNG" width="700px" width="700px"/>

  * UPDATE Tabela SET Campo = Valor

<img src="https://user-images.githubusercontent.com/94937578/177778770-c1375d3b-58f3-4728-85b0-548bd055805f.PNG"/>

  * DELETE FROM Tabela

<img src="https://user-images.githubusercontent.com/94937578/177779007-e500f011-1071-4c52-a9d1-1601642d49fa.PNG" width="700px"/>

#### Filtos de seleção:
  * Registros selecionados (WHERE)
  * Operadores relacionais:
    - Igual (=), Diferente (!=)
    - Maior (>), Maior ou Igual (>=)
    - Menor (<), Menor ou Igual (<=)
    - Nulo (ISNULL) ou Não Nulo (IS NOT NULL)
    - Entre intervalo (BETWEEN)
    - Valor parcial (LIKE)
  * Operadores lógicos:
    - AND
    - OR
    - NOT

#### Consultando dados com filtros:
  * SELECT Campos FROM Tabela WHERE Condição

<img src="https://user-images.githubusercontent.com/94937578/177779259-e066a663-5277-47ed-9eb5-a49b7cba9577.PNG" width="700px"/>

  * UPDATE Tabela SET Campo = Valor WHERE Condição

<img src="https://user-images.githubusercontent.com/94937578/177779459-dcdeaeee-0f4d-4ed5-9f57-edbc2b2238be.PNG" width="700px"/>

  * DELETE FROM Tabela WHERE Condição

<img src="https://user-images.githubusercontent.com/94937578/177779605-e05ef5df-fee8-44a3-ae5a-859e12b89fba.PNG" width="700px"/>

#### Atributos especiais:
  * Apelido de tabela:
    SELECT Campos FROM Tabela Apelido...

<img src="https://user-images.githubusercontent.com/94937578/177779715-d94bcde7-9e87-4d1b-91a6-2880e0b6afab.PNG" width="700px"/>

  * Apelido de campos:
    SELECT Campos AS Apelido FROM...

<img src="https://user-images.githubusercontent.com/94937578/177779810-05412282-2784-4219-8428-9dd0d29ef070.PNG" width="700px"/>

  * Unindo Seleções (UNION [ALL]):
    SELECT ... UNION SELECT ...

<img src="https://user-images.githubusercontent.com/94937578/177779887-5fd42069-76d8-4400-adbb-28725a7c00fb.PNG" width="700px"/>


### 5. RELACIONAMENTOS E VISÕES

#### Relacionamentos no SQL:
  * Informações relacionadas entre si.
  * Em geral entre diferentes tabelas.
  * Geralmente possuem campos em comum.
  * Parâmetro JOIN e suas variações.
  * SELECT ... FROM T1 JOIN T2 ON T1.FK = T2.PK
  * SELECT ... FROM T1 JOIN T2 USING Chave
  * Compatibilidade com banco de dados.

#### INNER JOIN:
  * JOIN padrão.
  * Produto cartesiano entre as tabelas.
  * Combina todas as linhas da primeira tabela com todas as linhas da segunda, que satisfaçam as condições da chave.
  * SELECT * FROM PESSOAS JOIN VEICULOS ON PESSOAS.CPF = VEICULOS.CPF

<img src="https://user-images.githubusercontent.com/94937578/177986864-2c13b5d5-07ab-4688-aac4-cf636423bbad.PNG" width="700px"/>

#### EQUI JOIN:
  * Similar ao INNER JOIN.
  * Chaves de mesmo nome nas tabelas.
  * SELECT * FROM PESSOAS JOIN VEICULOS USING (CPF)

<img src="https://user-images.githubusercontent.com/94937578/177986934-cb39d6c6-ad19-4f6a-99d1-273e82e67e3f.PNG" width="700px"/>

#### NON EQUI JOIN:
  * Relacionamento sem campo em comum.
  * SELECT P.NOME, P.SALARIO, S.FAIXA FROM PESSOAS P INNER JOIN SALARIOS S ON P.SALARIO BETWEEN S.INICIO AND S.FIM
<img src="https://user-images.githubusercontent.com/94937578/177987004-c3610202-c703-44a8-912c-c58b115e272a.PNG" width="700px"/>

#### OUTER JOIN, LEFT JOIN, LEFT OUTER JOIN:
  * Linhas que não satisfazem a condição de união.
  * LEFT: Linhas da primeira tabela cujo campo Condição não satisfaçam a união de tabelas.
  * SELECT * FROM PESSOAS LEFT JOIN VEICULOS ON PESSOAS.CPF = VEICULOS.CPF

<img src="https://user-images.githubusercontent.com/94937578/177987079-891c9138-6482-486d-a108-23735369dd91.PNG" width="700px"/>

#### RIGHT JOIN, RIGHT OUT JOIN:
  * Similar ao LEFT JOIN.
  * RIGHT: Linhas da segunda tabela cujo campo Condição não satisfaçam a união de tabelas.
  * SELECT * FROM PESSOAS RIGHT JOIN VEICULOS ON PESSOAS.CPF = VEICULOS.CPF

<img src="https://user-images.githubusercontent.com/94937578/177987146-281d184f-d486-46b8-ab70-ad868734c489.PNG" width="700px"/>

#### FULL OUTER JOIN:
  * Combinação de LEFT JOIN e RIGHT JOIN.
  * Linhas da primeira e segunda tabela cujos campos de condição não satisfaçam a união de tabelas.
  * SELECT * FROM PESSOAS  FULL JOIN VEICULOS ON PESSOAS.CPF = VEICULOS.CPF

<img src="https://user-images.githubusercontent.com/94937578/177987214-001ea541-e147-47af-8389-64ceac8bfd5b.PNG" width="700px"/>

#### SELF JOIN:
  * União da tabela com ela mesma.
  * SELECT A.NOME, B.NOME AS INDICADO_POR FROM PESSOAS A JOIN PESSOAS B ON A.INDICADO = B.CPF

<img src="https://user-images.githubusercontent.com/94937578/177987290-30429936-4e29-49df-922d-2a405fa35cfd.PNG" width="700px"/>

#### Visões:
  * Relação que não faz parte do modelo lógico.
  * Acessível ao usuário como uma relação virtual.
  * Otimização de espaço em disco.
  * Centralização de código.
  * Facilidade de manutenção de expressões SQL.

<img src="https://user-images.githubusercontent.com/94937578/177987355-d7b4b598-1515-44dd-8d23-be94289ad793.PNG" width="700px"/>

#### Criando uma visão: 
  * CREATE VIEW Nome AS ExpressaoSQL
  * ALTER VIEW Nome Propriedade
    Exclusão e nova criação (substituição)
  * DROP VIEW Nome
    Apenas a estrutura da visão é removido.
    Os dados permanecem intactos em suas respectivas tabelas.



### 6. FUNÇÕES ESPECIAIS E SUBQUERIES

#### Funções de agregação:
  * <b>COUNT:</b> Contagem de registros de uma consulta.
    SELECT COUNT (*) FROM funcionarios
  * <b>SUM:</b> Soma de valores.
    SELECT SUM (salario) FROM funcionarios
  * <b>AVG:</b> Média de valores.
    SELECT AVG (salario) FROM funcionarios
  * <b>MAX:</b> Valor máximo retornado pela consulta.
    SELECT MAX (salario) FROM funcionarios
  * <b>MIN:</b> Valor mínimo retornado pela consulta.
    SELECT MIN (salario) FROM funcionarios

#### Integrando com WHERE:
  * SELECT Comando FROM Tabela WHERE Condição
  * SELECT SUM (salario) FROM funcionarios
    WHERE departamento = 'Recursos Humanos'

#### Funções de paginação:
  * <b>DISTINCT:</b> Seleciona os valores únicos, sem repetição.
    SELECT DISTINCT (departamento) FROM funcionarios
  * <b>ORDER BY:</b> Ordena o resultado baseado nas colunas informadas.
    SELECT * FROM funcionarios ORDER BY salario
  * <b>LIMIT:</b> Limita o número de resultados retornados.
    SELECT * FROM funcionarios LIMIT 2
  * <b>OFFSET:</b> Indica quantos registros devem ser avançados. Avança (pula) registros do resultado.
    SELECT * FROM funcionarios OFFSET 2
  * Combinações são permitidas.

#### Funções de agrupamento:
  * <b>GROUP BY:</b> Agrupamento de registros por categoria.
    SELECT DEPARTAMENTO, AVG (salario) FROM funcionarios GROUP BY departamento
  * <b>HAVING:</b> Seleção de agrupamento. Filtro de seleção para agrupamento.
    SELECT departamento, AVG (salario) FROM funcionarios GROUP BY departamento HAVING AVG (salario) > 1500

#### Subqueries:
  * Realização de consultas com filtro de seleção baseado em uma lista ou seleção.
  * <b>IN / NOT IN:</b>
    SELECT Nome FROM Funcionarios WHERE Departamento IN ('Marketing', 'TI')
    SELECT Nome FROM Funcionarios WHERE Departamento IN (SELECT Departamento FROM Funcionarios GROUP BY Departamento HAVING AVG (salario) > 1500)



### 7. CONTROLE DE ACESSO

#### DCL - Controle de Acesso:
  * Forma de garantir que somente pessoas autorizadas possam realizar ações com os dados.
  * Níveis de acesso:
    - Banco de dados
    - Tabelas
    - Colunas
    - Registros
  * Níveis de ações:
    - Gerenciar estruturas
    - Gerenciar dados
    - Ler dados

### Como funciona:

<img src="https://user-images.githubusercontent.com/94937578/178013345-8ca14e04-5e60-4076-b0d7-321652cd3e92.PNG"/>

#### Linguagem de controle de dados:
  * CREATE USER Nome: Cria um usuário
  * DROP USER Nome: Exclui um usuário
  * GRANT: Habilita acessos
  * REVOKE: Revoga acessos

#### Gerenciando acessos:
  * Habilitando acessos:
    GRANT Ação ON Estrutura TO Usuário
  * Revogando acesso:
    REVOKE Ação ON Estrutura TO Usuário
  * Ações:
    ALL, SELECT, INSERT, UPDATE, DELETE
  * Estruturas:
    TABLE, VIEW, SEQUENCE



### 8. TRANSAÇÕES (ACID)

#### Transações:
  * Conjunto de operações.
  * ACID:
    - Atomicidade
    - Consistência
    - Isolamento
    - Durabilidade

#### Exemplo:
  * Transferência bancária de cliente A para B:
    - Verifica se há saldo suficiente na conta do cliente A
    - Retira da conta do cliente A o valor da transferência
    - Deposita na conta do cliente B o valor da transferência 

<img src="https://user-images.githubusercontent.com/94937578/178018911-5a9d5aaf-c277-4315-b5b8-b8d4cd9a6526.PNG"/>

<img src="https://user-images.githubusercontent.com/94937578/178018987-9d5ba59e-b885-4e90-aa13-1e158fc18b2f.PNG"/>

#### Linguagem de transação de dados:
  - <b>START TRANSACTION:</b> Inicia a transação
  - <b>COMMIT:</b> Concretiza a transação
  - <b>ROLLBACK:</b> Anula a transação
