# language: pt
# encoding: utf-8

Funcionalidade: Reserva de quarto

	Cenário: Reserva com sucesso
	    Dado um hotel com "10" quartos
	    E com "0" reservas
	    Quando um futuro hospede reservar "1" quarto
	    Então reservas será "1"
	    E o número dos quartos será "9"