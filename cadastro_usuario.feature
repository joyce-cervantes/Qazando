Feature: Cadastro de novo usuário

  Como visitante
  Quero me cadastrar no sistema
  Para poder acessar funcionalidades exclusivas

  Background:
    Dado que estou na página de cadastro

  Cenário: Campos obrigatórios não preenchidos
    Quando não preencho os campos Nome, E-mail e Senha
    Então o botão "Cadastrar" deve permanecer desabilitado

  Cenário: Nome com menos de 3 caracteres
    Quando preencho o campo Nome com "Jo"
    Então deve ser exibida uma mensagem de erro "Nome deve ter no mínimo 3 caracteres"

  Cenário: E-mail em formato inválido
    Quando preencho o campo E-mail com "email-invalido"
    Então deve ser exibida uma mensagem de erro "E-mail inválido"

  Cenário: E-mail já cadastrado
    Dado que o e-mail "teste@exemplo.com" já existe no sistema
    Quando preencho o campo E-mail com "teste@exemplo.com"
    Então deve ser exibida uma mensagem "E-mail já cadastrado"

  Cenário: Senha com menos de 6 caracteres
    Quando preencho o campo Senha com "12345"
    Então deve ser exibida uma mensagem "Senha deve ter no mínimo 6 caracteres"

  Cenário: Cadastro com sucesso
    Quando preencho todos os campos obrigatórios corretamente
    E clico no botão "Cadastrar"
    Então os dados devem ser enviados via HTTPS
    E devo ser redirecionado para a página de login
    E devo ver a mensagem "Cadastro realizado com sucesso"

  Cenário: Erro no servidor
    Dado que ocorre um erro interno no servidor
    Quando clico no botão "Cadastrar"
    Então devo ver um feedback visual de erro

  Cenário: Design responsivo
    Dado que estou em um dispositivo móvel, tablet ou desktop
    Então o formulário deve estar centralizado e visível sem rolagem vertical
