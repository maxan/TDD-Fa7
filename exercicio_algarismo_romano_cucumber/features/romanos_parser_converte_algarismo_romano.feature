# language: pt
# encoding: utf-8

Funcionalidade: RomanosParser converte algarismo romano em arábico

	Para testar o RomanosParser
	Como um desenvolvedor
	Eu quero converter um algarismo romano em arábico

	Contexto: Nenhum valor fornecido
		
		Cenário: RomanosParser recebe vazio
			Dado nenhum valor
			Quando Eu envio um "vazio"
			Então Eu devo ver "número arábico"

		Cenário: RomanosParser recebe nulo
			Dado nulo
			Quando Eu envio um "nil"
			Então Eu devo ver "número arábico"

	Contexto: Algarismo romano inexistente

	Contexto: Algarismo romano existente