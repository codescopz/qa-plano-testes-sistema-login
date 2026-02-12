Casos de Teste

Projeto: Sistema de Login e Recuperação de Senha


CT01 – Login com dados válidos


Requisito: RF01
Prioridade: Alta
Tipo: Funcional

Pré-condição:
Usuário já cadastrado no sistema.

Dados de teste:
E-mail: usuario@teste.com

Senha: 123456

Passos:

Acessar a tela de login

Informar e-mail válido

Informar senha válida

Clicar em “Entrar”

Resultado esperado:
O sistema deve autenticar o usuário e redirecionar para a página inicial.

Pós-condição:
Usuário logado com sucesso.


CT02 – Login com senha incorreta


Requisito: RF02
Prioridade: Alta
Tipo: Negativo

Pré-condição:
Usuário cadastrado.

Dados de teste:
E-mail: usuario@teste.com

Senha: senha_errada

Passos:

Acessar a tela de login

Informar e-mail válido

Informar senha incorreta

Clicar em “Entrar”

Resultado esperado:
O sistema deve exibir a mensagem:
“E-mail ou senha inválidos.”
O acesso não deve ser permitido.


CT03 – Campo e-mail em branco


Requisito: RF05
Prioridade: Alta
Tipo: Validação de campo

Passos:

Acessar a tela de login

Deixar o campo e-mail vazio

Informar senha válida

Clicar em “Entrar”

Resultado esperado:
O sistema deve informar que o campo e-mail é obrigatório.


CT04 – Campo senha em branco


Requisito: RF05
Prioridade: Alta
Tipo: Validação de campo

Passos:

Acessar a tela de login

Informar e-mail válido

Deixar o campo senha vazio

Clicar em “Entrar”

Resultado esperado:
O sistema deve informar que o campo senha é obrigatório.


CT05 – E-mail em formato inválido


Requisito: RF05
Prioridade: Alta
Tipo: Validação de campo

Dados de teste:
E-mail: usuario_teste
Senha: 123456

Passos:

Acessar a tela de login

Informar e-mail com formato inválido

Informar senha válida

Clicar em “Entrar”

Resultado esperado:
O sistema deve exibir mensagem informando que o formato do e-mail é inválido.


CT06 – Bloqueio após 5 tentativas inválidas


Requisito: RF03
Prioridade: Alta
Tipo: Segurança

Pré-condição:
Usuário cadastrado.

Passos:

Acessar a tela de login

Informar e-mail válido

Informar senha incorreta

Repetir o processo 5 vezes consecutivas

Resultado esperado:
A conta deve ser bloqueada após a 5ª tentativa inválida.
Mensagem exibida:
“Conta bloqueada após múltiplas tentativas inválidas.”


CT07 – Recuperação de senha com e-mail cadastrado


Requisito: RF04
Prioridade: Média
Tipo: Funcional

Pré-condição:
Usuário cadastrado.

Dados de teste:
E-mail: usuario@teste.com

Passos:

Acessar a tela de login

Clicar em “Esqueci minha senha”

Informar e-mail cadastrado

Confirmar solicitação

Resultado esperado:
O sistema deve exibir mensagem de confirmação.
Um e-mail de recuperação deve ser enviado ao usuário.


CT08 – Recuperação com e-mail não cadastrado


Requisito: RF04
Prioridade: Média
Tipo: Negativo

Dados de teste:
E-mail: naoexiste@teste.com

Passos:

Acessar a tela de login

Clicar em “Esqueci minha senha”

Informar e-mail não cadastrado

Confirmar solicitação

Resultado esperado:
O sistema deve informar que o e-mail não está cadastrado.

Cobertura de Requisitos

✔ RF01 → CT01
✔ RF02 → CT02
✔ RF03 → CT06
✔ RF04 → CT07, CT08
✔ RF05 → CT03, CT04, CT05

Cobertura total: 100% dos requisitos mapeados.
