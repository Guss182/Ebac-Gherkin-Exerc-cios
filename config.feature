            #language: pt
            
            Funcionalidade: Configurar Produto
            como usuário do sistema
            quero configurar meu produto
            Para escolher tamanho, cor e quantidade desejados

            Contexto:
            Dado que eu acesse a página de seleção do produto

            Cenário: tentar adicionar produto sem selecionar tamanho e cor
            Quando eu tentar adicionar o produto ao carrinho sem selecionar tamanho e cor
            Então um alerta deve ser exibida solicitando a seleção de tamanho e cor

            Cenário: adicionar produto com tamanho e cor selecionados
            Quando eu selecionar o tamanho "M" e a cor "Vermelho"
            E eu adicionar o produto ao carrinho
            Então o produto deve ser adicionado ao carrinho com sucesso

            Cenário: adicionar produto com tamanho selecionado e sem cor
            Quando eu selecionar o tamanho "G" sem selecionar a cor
            E eu tentar adicionar o produto ao carrinho
            Então um alerta deve ser exibido solicitando a seleção de cor

            Cenário: adicionar produto com cor selecionada e sem tamanho
            Quando eu selecionar a cor "Azul" sem selecionar o tamanho
            E eu tentar adicionar o produto ao carrinho
            Então um alerta deve ser exibido solicitando a seleção de tamanho

            Esquema do Cenário: Limites de quantidade do produto
            Quando eu selecionar a quantidade de <Quantidade> do produto
            Então o sistema deve exibir <Resultado>

            Exemplos:
            | Quantidade | Resultado                                   |
            | 1          | permitir a adição ao carrinho               |
            | 3          | permitir a adição ao carrinho               |
            | 8          | permitir a adição ao carrinho               |
            | 10         | permitir a adição ao carrinho               |
            | 11         | exibir alerta de quantidade máxima excedida |
            
            Cenário: Limpar configuração do produto
            Dado que eu tenha selecionado cor, tamanho e quantidade do produto
            Quando eu clicar no botão Limpar
            Então todas as seleções devem ser removidas e o produto deve voltar ao estado inicial
