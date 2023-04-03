#language: pt

Funcionalidade: Tela de login
Como cliente da Ebac Shopp
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de login da plataforma EBAC-SHOP

Cenário: Autenticação Válida
Quando eu digitar o usuário "jose.souza@gmail.com.br"
E a asenha "jose@2023"
Então deve exibir a tela de checkout

Cenário: Usuário inexistente
Quando eu digitar um usuário inexistente
Então deve exibir uma mensagem "usuário inexistente"

Cenário: Usuário com Senha inválida
Quando eu digitar um usuário ou senha inválida
Então deve exibir uma mensagem "usuário ou senha inválida"

Esquema do Cenário: Validar autenticação inválidos
Quando inserir <usuario> 
E <senha>
Então exibir uma <mensagem> de erro

Exemplos:
| usuario | senha | mensagem |
| "joao@google.com" | "joao@123" | "Usuário ou senha inválidos" |
| "abc@def.com" | "abc123" | "Usuário não cadastrado" |


