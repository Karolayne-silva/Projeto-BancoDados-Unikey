# Projeto de Banco de dados do sistema Unikey
Repositório do projeto de Banco de dados do Sistema Unikey

# Descrição do Minimundo

Um sistema voltado para a biblioteca da Faculdade Senac que tem como objetivo a organização do processo de empréstimo de armários para os usuários da biblioteca. Esse sistema será acessado pelos funcionários do setor que terá login e senha; Um funcionário vai alugar vários armários para vários usuários; funcionário vai cadastrar o usuário que terá, nome, email, telefone, tipo de usuário e matrícula que vai depender do tipo de usuário; Cada armário terá um id do armário, número do armário, status e poderá ser alugado por vários usuários em horários diferentes; Cada usuário pode estar ou não alugando um armário; 

# Modelo Conceitual

![image](https://user-images.githubusercontent.com/96891482/207087018-01196ded-8d9c-4ed5-b9c8-9b26ec15c8a6.png)

# Modelo Lógico

![image](https://user-images.githubusercontent.com/96891482/207087095-2e0e9687-d811-4bbb-b898-c024783421a3.png)

## Tabelas
- Funcionario -> email, senha
- Usuario -> email, telefone, matricula, nome, tipo_user
- Alugar -> inicio_aluguel, fim_aluguel, usuario_email, armario_id_armario, funcionario_email
- Armario -> id_armario, num_armario, status



