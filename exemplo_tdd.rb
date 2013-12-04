class Conta
	attr_accessor :saldo

	def initialize
		@saldo = 0
	end
end

c = Conta.new

if(c.saldo == 0)
	puts "Saldo iniciado com zero"
else
	puts "Conta error: saldo nao inicializado com zero"
end
