# 📊 Gestor de Finanças Pessoais (GFP)

Desenvolvimento de Software: **Gestor de Finanças Pessoais**

**Autor:** Lucas Ribeiro Lima  
**Local:** Belo Horizonte  
**Data:** Abril/2024

## 📘 Introdução

### 🔍 Problema
O gerenciamento eficiente das finanças pessoais é um desafio constante para muitas pessoas, especialmente em um cenário de constante variação de renda e despesas. A falta de uma ferramenta adequada pode resultar em dificuldades na organização financeira, controle de gastos e no alcance de objetivos financeiros.

### 🎯 Objetivo Geral
Desenvolver um software denominado **Gestor de Finanças Pessoais (GFP)** que auxilie os usuários no controle e gestão de suas finanças pessoais de forma eficiente e intuitiva.

### 📌 Objetivos Específicos
- Desenvolver um sistema de cadastro de renda que permita aos usuários registrar, editar e excluir suas entradas financeiras de maneira simples e rápida.
- Implementar um módulo de cadastro de despesas fixas que sejam automaticamente propagadas para os próximos períodos, simplificando a gestão financeira recorrente.
- Criar uma funcionalidade de cadastro de despesas variáveis e imprevistas para contemplar gastos não planejados.
- Possibilitar aos usuários estabelecer metas de gastos em diferentes categorias de despesas, incentivando o planejamento financeiro.
- Desenvolver relatórios gráficos que permitam aos usuários visualizar de forma clara e objetiva suas receitas e despesas ao longo do tempo.

### 💡 Justificativa
A criação do **Gestor de Finanças Pessoais (GFP)** se justifica pela necessidade de uma solução prática e eficaz para o gerenciamento das finanças pessoais. Diante da crescente complexidade do cenário financeiro individual e a carência de ferramentas adequadas, torna-se essencial desenvolver uma plataforma que proporcione maior controle e organização financeira, contribuindo assim para o bem-estar e a estabilidade financeira dos usuários.

## 🚀 Especificações Iniciais do Software

### 📝 Escopo do Produto
O GFP visa oferecer uma plataforma completa para o gerenciamento de recursos financeiros, incluindo funcionalidades de cadastro de rendas, despesas fixas, despesas variáveis, estipulação de metas e dashboards para acompanhamento.

### ⚙️ Funcionalidades do Produto
- **Cadastro de renda:** Permite que o usuário cadastre, edite e exclua entradas de recursos financeiros.
- **Cadastro de despesas fixas:** Possibilita o cadastro, edição e exclusão de despesas fixas, que serão automaticamente propagadas para as próximas competências.
- **Cadastro de despesas variáveis:** Permite o cadastro de despesas variáveis e imprevistas.
- **Gerenciamento de metas:** Permite que o usuário estipule metas de gastos para determinadas categorias de despesas.
- **Relatórios:** Gera relatórios gráficos que facilitam a visualização das receitas e despesas ao longo dos períodos.
- **Autenticação Social:** O sistema permitirá o login com contas de provedores OpenIdConnect (como Google), garantindo facilidade de acesso.
- **Gerenciamento de Sessões:** O sistema permitirá que o usuário se mantenha logado por um tempo estipulado sem necessidade de novo login.

### 🌐 Ambiente Operacional e Tecnologias
- **Plataforma:** Web
- **Frontend:** Desenvolvido com **Next.js**, utilizando **Server-Side Rendering (SSR)**.
- **Backend:** Desenvolvido com **Node.js** e **Express** para a criação de uma **API REST**.
- **Containers:** Utilização de **Docker** para a implementação e deployment.
- **Banco de Dados:** **MySQL** para persistência relacional dos dados.
- **Armazenamento de Sessões:** **Redis** para armazenamento de sessões e cache de dados.
- **Sistema Operacional:** Ambiente Linux.

### 📦 Requisitos de Implantação

- **Banco de Dados MySQL:** O sistema deve ser implantado em um banco de dados MySQL na versão **9.0.1**, garantindo a compatibilidade com as funcionalidades utilizadas, exposto na porta **3306**.
- **Redis:** Um banco de dados NoSQL do tipo chave-valor será utilizado para o cache de sessões. O Redis será implantado na versão **7.4**, exposto na porta **6379**.
- **Variáveis de Ambiente:**  
  As variáveis de ambiente devem ser configuradas no servidor de implantação ou em um arquivo `.env` localizado no diretório raiz do projeto:
  - **ROOTPWD:** Senha do usuário root do banco de dados.
  - **GFPUSER:** Usuário do banco de dados.
  - **GPFPWD:** Senha do usuário **GFPUSER** do banco de dados.

## 🔐 Requisitos Funcionais e Não Funcionais

### **Requisitos Funcionais:**
- [RF001] O sistema deve permitir o gerenciamento de rendas fixas.
- [RF002] O sistema deve permitir o gerenciamento de rendas esporádicas.
- [RF003] O sistema deve permitir o gerenciamento de despesas variáveis.
- [RF004] O sistema deve permitir o gerenciamento de despesas fixas.
- [RF005] O sistema deve permitir o cadastro/entrada de novos usuários.
- [RF006] O sistema deve permitir a utilização de login social.
- [RF007] O sistema não deve permitir acesso sem autenticação à carteira financeira.
- [RF008] O sistema deve permitir realizar personalizações de tema na interface.
- [RF009] O sistema deve permitir que o usuário se mantenha logado por um tempo estipulado sem necessitar realizar login novamente.
- [RF010] O sistema deve exibir uma barra de progresso em relação à meta de gastos entre rendas e despesas mensais.
- [RF011] O sistema deve exibir os dados de rendas e despesas de forma mensal, trimestral ou anual.
- [RF012] O sistema deve permitir ao usuário filtrar e selecionar o período desejado.
- [RF013] O sistema deve permitir a extração de relatórios com os dados do período solicitado.

### **Requisitos Não Funcionais:**
- [NF001] Confiabilidade: O sistema deve representar informações corretas e precisas sobre o estado financeiro, sem erros de cálculos.
- [NF002] Confidencialidade: O sistema deve manter os dados dos usuários seguros e confidenciais.
- [NF003] Segurança: O sistema não deve expor dados dos usuários em nível de banco de dados.

## 🛠️ Metodologia
Será utilizada a metodologia **Kanban** para o desenvolvimento do software, realizando entregas de pequenos pacotes de software de forma incremental, facilitando o acompanhamento do progresso e a realização de testes.

## 📚 Referências Bibliográficas
- Anderson, D. J. (2010). **Kanban**: Successful Evolutionary Change for Your Technology Business. Blue Hole Press.
- CENTRO UNIVERSITÁRIO DE MARINGÁ. Núcleo de Educação a Distância; PERSEGUINE, Vanessa Ravazzi. **Engenharia de Requisitos**. Maringá-Pr.: UniCesumar, 2017. Reimpressão, 2021.158 p.
- Centro Universitário de Maringá. Núcleo de Educação a Distância et al. (2019). **Engenharia de Software**. Maringá-Pr.: Unicesumar.
- Centro Universitário de Maringá. Núcleo de Educação a Distância; Pelissari, William Roberto; Luz, Carlos Danilo; Kaiser, Jeferson. (2021). **Banco de Dados II**. Maringá-Pr.: UniCesumar.
- Martin, R. C. (2008). **Clean Code**: A Handbook of Agile Software Craftsmanship. Prentice Hall.
- PISANI DA ARCH. **Diagrama de Componentes na Prática | UML**. Jan. 2024. Disponível em: https://www.youtube.com/watch?v=yjFpwFZHGtw. Acesso em: 24 set. 2024.
- UNIVERSIDADE FEDERAL DE JUIZ DE FORA. **Documento de requisitos do sistema**. Juiz de Fora: UFJF, 2016. Disponível em: https://www2.ufjf.br/diavi//files/2016/07/DocumentosdeRequisitosdoSistema.pdf. Acesso em: 24 set. 2024.
