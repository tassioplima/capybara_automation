#language:pt

Funcionalidade: Login 

    @teste1
    Cenário: Usuário deve ser autorizado

        Dado que eu acesso a página principal 
        Quando faço o login com "tassiopelima@gmail.com" e "opts10"
        Então e devo autenticar com sucesso
        E devo ver  seguinte mensagem "Olá, Tassio"

    @teste2
    Cenário: Senha errada

        Dado que eu acesso a página principal 
         Quando faço o login com "tassiopelima@gmail.com" e "12345"
        Então devo ver  seguinte mensagem "senha inválida"

    @teste3
    Cenário: Usuário não existe

        Dado que eu acesso a página principal 
        Quando faço o login com "tassiopelima@gmail.net" e "12345"
        Então devo ver  seguinte mensagem "Usuário não cadastrado"

     @teste4
    Cenário: Email incorreto

        Dado que eu acesso a página principal 
        Quando faço o login com "tassiopelgmail.com" e "12345"
        Então devo ver  seguinte mensagem "Email incorreto ou ausente"    

