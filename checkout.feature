            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a pagina de Checkout

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu entrar na tela de checkout
            Então deve apresentar campos obrigatórios marcados com asteriscos (*) na cor vermelha

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu clicar no botão de "Finalizar compra"
            E não for preenchidos todos os campos obrigatórios
            Então deve apresentar mensagem: "Todos os campos devem ser preenchidos!"

            Esquema do Cenário: testar e-mails válidos e invalidos
            Quando eu inserir o <e-mail>
            E se existir caracter "@" e ".com" , atualizar <status> para válido
            Então deve apresentar <mensagem> de validação

            Exemplos:
            | e-mail            | status     | mensagem                                   |
            | "joao@uol.com"    | "válido"   | "E-mail válido!"                           |
            | "joao@uol"        | "inválido" | "E-mail inválido. Digite um e-mail válido" |