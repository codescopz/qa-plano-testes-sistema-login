
Casos de Teste
Projeto: Sistema de Login e Recuperação de Senha
CT01 – Login com credenciais válidas

Requisito: RF01
Prioridade: Alta
Tipo de Teste: Funcional

Pré-condição:
Usuário previamente cadastrado no sistema.

Dados de Teste:
E-mail: usuario@teste.com

Senha: 123456

Passos:

Acessar a tela de login

Informar e-mail válido

Informar senha válida

Clicar no botão “Entrar”

Resultado Esperado:
Usuário deve ser autenticado e redirecionado para a página inicial do sistema.

Pós-condição:
Usuário autenticado com sucesso.

CT02 – Login com senha incorreta

Requisito: RF02
Prioridade: Alta
Tipo de Teste: Negativo

Pré-condição:
Usuário cadastrado no sistema.

Dados de Teste:
E-mail: usuario@teste.com

Senha: senha_errada

Passos:

Acessar tela de login

Informar e-mail válido

Informar senha incorreta

Clicar em “Entrar”

Resultado Esperado:
Sistema deve exibir mensagem:
“E-mail ou senha inválidos”
Usuário não deve acessar o sistema.

CT03 – Campo e-mail vazio

Requisito: RF05
Prioridade: Alta
Tipo de Teste: Validação de Campo

Passos:

Acessar tela de login

Deixar campo e-mail vazio

Informar senha válida

Clicar em “Entrar”

Resultado Esperado:
Sistema deve exibir mensagem informando que o campo e-mail é obrigatório.

CT04 – Campo senha vazio

Requisito: RF05
Prioridade: Alta
Tipo de Teste: Validação de Campo

Passos:

Acessar tela de login

Informar e-mail válido

Deixar campo senha vazio

Clicar em “Entrar”

Resultado Esperado:
Sistema deve exibir mensagem informando que o campo senha é obrigatório.

CT05 – Formato de e-mail inválido

Requisito: RF05
Prioridade: Alta
Tipo de Teste: Validação de Campo

Dados de Teste:
E-mail: usuario_teste
Senha: 123456

Passos:

Acessar tela de login

Informar e-mail em formato inválido

Informar senha válida

Clicar em “Entrar”

Resultado Esperado:
Sistema deve exibir mensagem informando que o formato do e-mail é inválido.

CT06 – Bloqueio após 5 tentativas inválidas

Requisito: RF03
Prioridade: Alta
Tipo de Teste: Segurança

Pré-condição:
Usuário cadastrado no sistema.

Passos:

Acessar tela de login

Informar e-mail válido

Informar senha incorreta

Repetir o processo 5 vezes consecutivas

Resultado Esperado:
Sistema deve bloquear a conta do usuário.
Mensagem exibida:
“Conta bloqueada após múltiplas tentativas inválidas.”

CT07 – Recuperação de senha com e-mail cadastrado

Requisito: RF04
Prioridade: Média
Tipo de Teste: Funcional

Pré-condição:
Usuário cadastrado no sistema.

Dados de Teste:
E-mail: usuario@teste.com

Passos:

Acessar tela de login

Clicar em “Esqueci minha senha”

Informar e-mail cadastrado

Confirmar solicitação

Resultado Esperado:
Sistema deve exibir mensagem de confirmação.
E-mail de recuperação deve ser enviado ao usuário.

CT08 – Recuperação de senha com e-mail não cadastrado

Requisito: RF04
Prioridade: Média
Tipo de Teste: Negativo

Dados de Teste:
E-mail: naoexiste@teste.com

Passos:

Acessar tela de login

Clicar em “Esqueci minha senha”

Informar e-mail não cadastrado

Confirmar solicitação

Resultado Esperado:
Sistema deve exibir mensagem informando que o e-mail não está cadastrado.

Cobertura Confirmada

✔ RF01 → CT01
✔ RF02 → CT02
✔ RF03 → CT06
✔ RF04 → CT07, CT08
✔ RF05 → CT03, CT04, CT05

Cobertura: 100%
