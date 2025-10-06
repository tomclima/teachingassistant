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