# language: pt
# encoding: utf-8

Funcionalidade: RomanosParser converte algarismo romano em arábico

	Para testar o RomanosParser
	Como um desenvolvedor
	Eu quero converter um algarismo romano em arábico

	Esquema do Cenário: Nenhum valor fornecido
		
		Cenário: RomanosParser recebe vazio
			Dado nenhum valor
			Quando eu envio um "vazio"
			Então eu devo ver "Número romano não fornecido"

		Cenário: RomanosParser recebe nulo
			Dado nulo
			Quando eu envio um "nil"
			Então eu devo ver "Número romano não fornecido"

	Esquema do Cenário: Recebe valores simples

	Esquema do Cenário: Recebe valores que podem se repetir

	Esquema do Cenário: Recebe valores que não podem se repetir

	Esquema do Cenário: Recebe combinações que se somam

	Esquema do Cenário: 