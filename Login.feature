            #language: Pt

            Funcionalidade: Login do Usuário
            Como usuário do sistema
            Quero fazer login na minha conta
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login

            Cenário: Realizar login com sucesso
            Quando eu inserir o usuário "Gustavo123"
            E eu inserir a senha "Senha@123"
            Então eu devo ser redirecionado para a página de pedidos

            Cenário: Tentar login com usuário inválido
            Quando eu inserir o usuário "xaysgyxayxs"
            E eu inserir a senha "Senha@123"
            Então uma mensagem de erro "Usuário ou senha inválidos" deve ser exibida

            Cenário: Tentar login com senha inválida
            Quando eu inserir o usuário "Gustavo123"
            E eu inserir a senha "senhaerrada"
            Então uma mensagem de erro "Usuário ou senha inválidos" deve ser exibida