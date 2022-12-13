# Projeto de Banco de dados do sistema Unikey
Repositório do projeto de Banco de dados do Sistema Unikey

# Descrição do Minimundo

Um sistema voltado para a biblioteca da Faculdade Senac que tem como objetivo a organização do processo de empréstimo de armários para os usuários da biblioteca. Esse sistema será acessado pelos funcionários do setor que terá login e senha; Um funcionário vai alugar vários armários para vários usuários; funcionário vai cadastrar o usuário que terá, nome, email, telefone, tipo de usuário e matrícula que vai depender do tipo de usuário; Cada armário terá um id do armário, número do armário, status e poderá ser alugado por vários usuários em horários diferentes; Cada usuário pode estar ou não alugando um armário; 

# Modelo Conceitual

![image](https://user-images.githubusercontent.com/96891482/207087018-01196ded-8d9c-4ed5-b9c8-9b26ec15c8a6.png)

# Modelo Lógico

![image](https://user-images.githubusercontent.com/96891482/207463758-30eeded6-de61-465c-9c82-c668a1c46c01.png)


## Tabelas
- Funcionario -> email, senha
- Usuario -> email, telefone, matricula, nome, tipo_user
- Alugar -> inicio_aluguel, fim_aluguel, usuario_email, armario_id_armario, funcionario_email
- Armario -> id_armario, num_armario, status

# Relatórios das consultas

- Relatório 1: Todos os usuários com nome, telefone e email que pegaram o armário 14.
- Relatório 2: Todos os usuários que são alunos com nome, email e número do armário que pegaram armário em 21 de novembro.
- Relatório 3: Quantos armários foram pegos pelo tipo de usuário professor.
- Relatório 4: todos os usuários que pegaram armário entre 13h e 18h mostrando nome, tipo de usuário, email,  telefone, número do armário
- Relatório 5: Lista de todos os armários que foram alugados por usuários que tem o nome que começa com a letra P, mostrando nome e email.
- Relatório 6: Lista de alunos mostrando quanto tempo um aluno fica com um armário, nome, matrícula, e-mail e número do armário.
- Relatório 7: Lista de todos os armários que foram alugados por usuários que tem o nome que termina com a letra A, mostrando nome e matrícula.
- Relatório 8: Lista dos armários que foram alugados por usuários que possuem telefone que termina com o número ‘0’, mostrando nome e telefone. 
- Relatório 9: Quantidade de armários que foram pegos por pessoas que possuem o nome com a letra inicial “E”. 
- Relatório 10: Lista de armários que foram alugados por usuários que não possuem o começo do número de telefone “99”, mostrando nome e telefone ordenado por nome.
- Relatório 11: Lista dos armários que foram alugados por usuários que possuem a matrícula terminando com número “2”, mostrando nome e matrícula ordenado por nome.
- Relatório 12: Lista de todos os usuários que usaram o armário no dia 22 de novembro, mostrando nome, tipo_user, num_armario, inicio_aluguel e fim_aluguel, ordenar por fim_aluguel.
- Relatório 13: Lista de todos os usuários do tipo visitante mostrando nome, email e telefone, ordenar por ordem alfabética. 
- Relatório 14: Lista de todos os usuários que alugaram o armário de 8h da manhã até 13h, contendo nome, tipo_user, num_armario, fim_aluguel.
- Relatório 15: Lista dos usuários que alugaram o armário 2 no dia 21 de novembro, contendo nome, tipo_user, email e telefone. 
- Relatório 16: Lista com os armários que a funcionária com email: 'monicavi@gmail.com' alugou, contendo num_armario, inicio_aluguel e fim_aluguel. 
- Relatório 17: lista de quantos usuários tem de cada tipo ordenado pela quantidade
- Relatório 18: listar os armários mostrando se está ocupado ou desocupado.
- Relatório 19: Lista de quantos armários cada funcionário alugou, mostrando email do funcionário e quantidade de armários.
- Relatório 20: lista dos funcionários que já alugaram o armário 2 mostrando tipo de usuário, email do usuário, telefone, número do armário, e-mail do funcionário.


