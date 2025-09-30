Feature: Envio bem-sucedido de roteiro corrigido 
	Scenario: Correção bem sucedida de Roteiros
		Given: Estou logado como professor
		And: Estou na página de correção do roteiro "Gerência de Configuração" do aluno "Carlos Lima"
		And: Marquei que as questões 1, 2, 3 e 4 foram respondidas corretamente
		And: Vejo a opção de enviar a correção
		When: Eu envio a correção
		Then: Ainda estou na página de correção do roteiro "Gerência de Configurações" do aluno "Carlos Lima"
		And: Vejo que ele está indicado como "Já enviado"
