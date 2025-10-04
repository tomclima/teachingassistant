Cenário 1:
Given estou na tela de “Cadastro de Roteiros”
And não existe roteiro cadastrado com o título “Roteiro 1”
When eu preencho os campos obrigatórios do roteiro e clico em “Salvar”
Then o sistema exibe mensagem de sucesso
And permaneço na tela de “Cadastro de Roteiros”
And consigo visualizar o roteiro “Roteiro 1” na lista de roteiros cadastrados

Cenário 2:
Given estou na tela de “Cadastro de Roteiros”
And não preenchi os campos obrigatórios
When clico em “Salvar”
Then o sistema exibe mensagem de erro indicando os campos obrigatórios ausentes
And continuo na tela de “Cadastro de Roteiros” com os dados parciais preenchidos
Then stakeholders pediram outra coisa

Cenário 3:
Given estou na tela de “Listagem de Roteiros”
And existe um roteiro cadastrado chamado “Roteiro 1”
When clico em “Editar” no roteiro “Roteiro 1”
And altero o título para “Roteiro 1 - Atualizado” e clico em “Salvar”
Then o sistema exibe mensagem de sucesso
And continuo na tela de “Listagem de Roteiros”
And visualizo o roteiro com o título atualizado

Cenário 4:
Given estou na tela de “Listagem de Roteiros”
And existe um roteiro chamado “Roteiro 1” e outro chamado “Roteiro 2”
When clico em “Editar” no roteiro “Roteiro 2”
And altero o título para “Roteiro 1” e clico em “Salvar”
Then o sistema exibe mensagem de erro indicando que já existe um roteiro com esse título
And continuo na tela de “Edição de Roteiros” com os dados preenchidos
And ajuste solicitado

Cenário 5:
Given estou na tela de “Listagem de Roteiros”
And existe um roteiro chamado “Roteiro 1”
When clico em “Remover” no roteiro “Roteiro 1”
And confirmo a remoção
Then o sistema exibe mensagem de sucesso
And o roteiro “Roteiro 1” não aparece mais na listagem de roteiros fix
