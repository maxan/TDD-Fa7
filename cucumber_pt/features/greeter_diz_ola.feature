# language: pt

Funcionalidade: greeter diz olá

	Para testar Cucumber
	Como um desenvolvedor
	Eu quero um greeter dizendo olá

	Cenário: greeter diz olá
		Dado um greeter
		Quando Eu envio uma mensagem greet
		Então Eu devo ver "Olá Cucumber"