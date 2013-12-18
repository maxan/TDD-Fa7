# encoding: utf-8
# language: pt

Funcionalidade: Descrições
	
	Como um frequentador de cinema
	Eu quero ver horarios precisos e concisos
	Para que eu possa encontrar filmes que se encaixem no meu horario

	Cenário: Exibir minutos para horarios que não terminam em 00
		Dado um filme
		Quando eu configuro o horario para "2012-10-10" às "2:15pm"
		Então o horario deve ser "October 10, 2012 2:15pm"