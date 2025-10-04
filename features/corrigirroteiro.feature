Feature: Correção de roteiro 
	Scenario: Correção bem sucedida de Roteiros
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2, 3 e 4 foram respondidas corretamente
		And: Vejo a opção de enviar a correção
		When: Eu envio a correção
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: Vejo que ele está indicado como "Já enviado"
	
	Scenario: Envio mal-sucedido de roteiro parcialmente corrigido
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2, 3 foram respondidas corretamente, mas nada para a 4
		And: Vejo a opção de enviar a correção
		When: Eu envio a correção
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: Vejo que uma mensagem de erro indicando envio mal-sucedido por correção incompleta
		And: Vejo que o roteiro não está indicado como "Já enviado"

	Scenario: Envio mal-sucedido por erro interno do sistema:
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2, 3 e 4 foram respondidas corretamente
		And: Vejo a opção de enviar a correção
		When: Eu envio a correção
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: Vejo que uma mensagem de erro indicando erro interno do sistema e que a correção não foi enviada
		And: Vejo que o roteiro não está indicado como "Já enviado"
		And: Vejo que a minha correção não enviada está salva

	Scenario: Correção parcial, mas não enviada, salva no sistema
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2, 3 e 4 foram respondidas corretamente, mas não marco nada para a questão 4
		When: Eu saio do site
		And: Eu volto para a página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: vejo que a minha correção não enviada está salva com as questões 1, 2, 3 e 4 marcadas como certas, mas nada para a questão 4
	
	Scenario: alerta ao clicar na opção de limpar correção
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2, 3 e 4 foram respondidas corretamente, mas não marco nada para a questão 4
		When: Eu escolho a opção de limpar a correção atual
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: Vejo um aviso "Tem certeza que deseja limpar correção? Essa ação não pode ser desfeita"
	
	Scenario: Escolha de não limpar correção após alerta
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2 e 3 foram respondidas corretamente, mas não marco nada para a questão 4
		And: Eu escolho a opção de limpar a correção atual
		And: Vejo um aviso "Tem certeza que deseja limpar correção? Essa ação não pode ser desfeita"
		When: Escolho a opção de não limpar
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: Vejo que a minha correção está salva com as questões 1, 2 e 3 marcadas como certas, mas nada para a questão 4

