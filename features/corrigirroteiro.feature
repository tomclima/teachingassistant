Feature: Envio bem-sucedido de roteiro corrigido 
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


