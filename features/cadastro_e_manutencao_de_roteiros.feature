Scenario:Criação bem-sucedida de roteiro
    "Given estou na tela de “Cadastro de Roteiros”
    And não existe roteiro cadastrado com o título “Roteiro 1”
    When eu preencho os campos obrigatórios do roteiro e clico em “Salvar”
    Then o sistema exibe mensagem de sucesso
    And permaneço na tela de “Cadastro de Roteiros”
    And consigo visualizar o roteiro “Roteiro 1” na lista de roteiros cadastrados"

Scenario:Falha na criação de roteiro por falta de dados					
    "Given estou na tela de “Cadastro de Roteiros”
    And não preenchi os campos obrigatórios
    When clico em “Salvar”
    Then o sistema exibe mensagem de erro indicando os campos obrigatórios ausentes
    And continuo na tela de “Cadastro de Roteiros” com os dados parciais preenchidos"			

Scenario:Falha na edição de roteiro por título já existente		
   "Given estou na tela de “Listagem de Roteiros”
    And existe um roteiro chamado “Roteiro 1” e outro chamado “Roteiro 2”
    When clico em “Editar” no roteiro “Roteiro 2”
    And altero o título para “Roteiro 1” e clico em “Salvar”
    Then o sistema exibe mensagem de erro indicando que já existe um roteiro com esse título
    And continuo na tela de “Edição de Roteiros” com os dados preenchidos"			

Scenario: Cancelamento da remoção de roteiro
    "Given estou na tela de “Listagem de Roteiros”
    And existe um roteiro chamado “Roteiro 1”
    When clico em “Remover” no roteiro “Roteiro 1”
    And cancelo a ação na janela de confirmação
    Then continuo na tela de “Listagem de Roteiros”
    And o roteiro “Roteiro 1” permanece visível na listagem"								