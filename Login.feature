            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente
            Quero fazer login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina de login da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuario "jose.souza@gmail.com.br"
            E a senha "jose@2023"
            Então Deve redirecionar o usuario para a tela "checkout"

            Cenário: Usuário e senha invalida
            Quando eu digitar o usuário "josesouza@gmail.com.br"
            E a senha "jose@2023"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar usuários válidos e inválidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve apresentar <mensagem>

            Exemplos:
            | usuario              | Senha        | Mensagem                     |
            | "maria.gmail.com.br" | "teste321"   | "Usuário ou senha Inválidos" |
            | "joao@uol.com.br"    | "joao321"    | "Usuário ou senha Inválidos" |
            | "jose@bol.com.br"    | "sose@134"   | "Usuário ou senha Inválidos" |
            | "joao@uol.com.br"    | "joao@123#"  | "Usuário autenticado!"       |
            | "jose@bol.com.br"    | "jose@1234"  | "Usuário autenticado!"       |
            | "maria@gmail.com.br" | "maria@1234" | "Usuário autenticado!"       |
