Cenário 1:
Given estou na tela de “Cadastro de Roteiros”
And não existe roteiro cadastrado com o título “Roteiro 1”
When eu preencho os campos obrigatórios do roteiro e clico em “Salvar”
Then o sistema exibe mensagem de sucesso
And permaneço na tela de “Cadastro de Roteiros”
And consigo visualizar o roteiro “Roteiro 1” na lista de roteiros cadastrados