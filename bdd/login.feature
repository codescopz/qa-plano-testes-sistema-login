Feature: Autenticação e Recuperação de Senha
  Como um usuário do sistema
  Eu quero realizar login e recuperar minha senha
  Para acessar minha conta com segurança

  Background:
    Given que o usuário está na tela de login
    And o sistema está disponível
    And o ambiente é Web - Google Chrome 120+


  # RF01 - Login com credenciais válidas
  cenario: Login com e-mail e senha válidos
    Given que o usuário possui cadastro ativo
    When informa o e-mail "usuario@teste.com"
    And informa a senha "123456"
    And clica no botão "Entrar"
    Then o sistema deve autenticar o usuário com sucesso
    And deve redirecionar para a página inicial


  # RF02 - Senha incorreta
  cenario: Login com senha incorreta
    Given que o usuário possui cadastro ativo
    When informa o e-mail "usuario@teste.com"
    And informa a senha "senha_errada"
    And clica no botão "Entrar"
    Then o sistema deve exibir a mensagem "E-mail ou senha inválidos."
    And o acesso ao sistema não deve ser permitido


  # RF05 - Campo e-mail em branco
  cenario: Tentativa de login com campo e-mail vazio
    When deixa o campo e-mail em branco
    And informa a senha "123456"
    And clica no botão "Entrar"
    Then o sistema deve exibir mensagem informando que o campo e-mail é obrigatório


  # RF05 - Campo senha em branco
  cenario: Tentativa de login com campo senha vazio
    When informa o e-mail "usuario@teste.com"
    And deixa o campo senha em branco
    And clica no botão "Entrar"
    Then o sistema deve exibir mensagem informando que o campo senha é obrigatório


  # RF05 - E-mail em formato inválido
 cenario: Login com e-mail em formato inválido
    When informa o e-mail "usuario_teste"
    And informa a senha "123456"
    And clica no botão "Entrar"
    Then o sistema deve exibir mensagem informando formato inválido


  # RF03 - Bloqueio após 5 tentativas inválidas
  cenario: Bloqueio da conta após 5 tentativas incorretas
    Given que o usuário possui cadastro ativo
    When informa senha incorreta 5 vezes consecutivas
    Then o sistema deve bloquear a conta
    And deve exibir a mensagem "Conta bloqueada após múltiplas tentativas inválidas."


  # RF04 - Recuperação de senha com e-mail cadastrado
  cenario: Recuperação de senha com e-mail válido
    Given que o usuário está na tela de recuperação de senha
    When informa o e-mail "usuario@teste.com"
    And confirma a solicitação
    Then o sistema deve exibir mensagem de confirmação
    And deve enviar e-mail de recuperação


  # RF04 - Recuperação com e-mail não cadastrado
  cenario: Recuperação de senha com e-mail inexistente
    Given que o usuário está na tela de recuperação de senha
    When informa o e-mail "naoexiste@teste.com"
    And confirma a solicitação
    Then o sistema deve informar que o e-mail não está cadastrado

