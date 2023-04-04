            #language: pt

            Funcionalidade: Configurar produto
            como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu selecione um produto

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu inserir o produto no carrinho
            Então deve apresentar a mensagem: "Selecionar cor, tamanho e quantidade"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar 11 peças para inserir no carrinho
            E se o resultado for >10 
            Então deve apresentar a mensagem: "Limite de 10 unidades por compra!"

            Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando eu clicar no botão: "limpar"
            Então deve voltar as informações originais

            Esquema do Cenário: Quantidades de produtos
            Quando eu selecionar <quantidade> e inserir no carrinho
            E se quantidade for > <limite> ou <= <limite>
            Então deve apresentar <mensagem> de sucesso ou de limite de 10 produtos
            Exemplos:
            | Quantidade | Limite | Mensagem                            |
            | "13"       | "10"   | "Limite de 10 unidades por compra!" |
            | "9"        | "10"   | "Incluído com Sucesso!"             |



