# language: pt
# encoding: utf-8

Funcionalidade: Transferir Dinheiro

	Cenário: Transferir dinheiro

		Quando eu seleciono "conta corrente" como conta de origem
		E eu seleciono "poupanca" como conta de destino
		E eu informo que a quantidade é "20"
		E solicito executar

	Cenário: Transferir dinheiro resumido

		Quando eu transfiro "20" da "conta corrente" para a "poupanca"