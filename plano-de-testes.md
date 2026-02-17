Plano de Testes
Projeto: Sistema de Login e Recuperação de Senha
1. Introdução

Este documento descreve o Plano de Testes para o módulo de Login e Recuperação de Senha, com o objetivo de garantir que o sistema funcione corretamente, seja seguro e atenda aos requisitos definidos.

2. Objetivo

Validar o funcionamento do sistema de autenticação de usuários, assegurando:

Acesso correto com credenciais válidas

Bloqueio em tentativas inválidas

Funcionamento adequado da recuperação de senha

Exibição correta de mensagens de erro

Segurança básica contra acessos indevidos

3. Escopo


# Dentro do Escopo

Login com e-mail e senha

Validação de campos obrigatórios

Validação de formato de e-mail

Mensagens de erro

Bloqueio após 5 tentativas inválidas

Recuperação de senha via e-mail

# Fora do Escopo

Cadastro de usuário

Login via redes sociais

Integração com sistemas externos

4. Requisitos Testados
ID	Requisito
RF01	Usuário deve autenticar com e-mail e senha válidos
RF02	Sistema deve exibir erro para senha incorreta
RF03	Sistema deve bloquear conta após 5 tentativas inválidas
RF04	Sistema deve permitir recuperação de senha via e-mail
RF05	Campos obrigatórios devem ser validados

6. Tipos de Teste Aplicados

Teste Funcional

Teste Negativo

Teste de Validação de Campo

Teste de Usabilidade

Teste de Segurança (básico)

Teste Exploratório

6. Ambiente de Testes

Navegador: Google Chrome

Sistema Operacional: Windows 10

Ambiente: Homologação (simulado)

Massa de dados:

Usuário válido

Usuário inválido

E-mail não cadastrado

7. Estratégia de Teste

Execução manual

Priorização baseada em risco (login = alta prioridade)

Registro de evidências (prints simulados)

Documentação de defeitos (modelo de bug report)

8. Critérios de Entrada

Requisitos definidos

Ambiente disponível

Massa de dados preparada

9. Critérios de Saída

100% dos casos de teste executados

Nenhum defeito crítico aberto

Funcionalidades principais validadas

10. Riscos Identificados

Falha no envio de e-mail

Ataques de força bruta

Falha no bloqueio de conta

Exposição de mensagens técnicas ao usuário

11. Métricas de Teste

Total de Casos Planejados: 8

Total Executados: —

Aprovados: —

Reprovados: —

Taxa de Sucesso: —

12. Responsável

QA Responsável: Natália Nascimento
Perfil: QA em formação | Estudante de Análise e Desenvolvimento de Sistemas
