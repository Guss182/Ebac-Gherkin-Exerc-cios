            #language: pt

            Funcionalidade: Finalizar Compra
            Como usuário do sistema
            Quero concluir meu cadastro
            Para finalizar a compra de um produto

            Contexto:
            Dado que eu esteja na página de checkout

            Cenário: Preencher dados de checkout com sucesso
            Quando eu preencher os dados obrigatórios do checkout
            E eu confirmar o pedido
            Então o pedido deve ser concluído com sucesso

            Cenário: Tentar finalizar compra com dados incompletos
            Quando eu tentar confirmar o pedido sem preencher os dados obrigatórios
            Então uma mensagem de erro deve ser exibida solicitando o preenchimento dos dados obrigatórios

            Esquema do Cenário: Validar campos obrigatórios no checkout
            Quando eu preencher o campo <Campo> com valor <Valor>
            Então o sistema deve exibir <Mensagem>

            Exemplos:
            | Campo    | Valor     | Mensagem          |
            | E-mail   | inválido  | E-mail inválido   |
            | Nome     | em branco | campo obrigatório |
            | Endereço | em branco | campo obrigatório |
            | Telefone | em branco | campo obrigatório |
            | CEP      | inválido  | CEP inválido      |