class Fila
	attr_accessor :lista

	def initialize
		@lista = []
	end

	def push item
		@lista << item
	end

	def peek
		@lista.first
	end

	def pop
		@lista.delete_at (@lista.length - 1)
	end
end

describe Fila do
	context "#push" do
		it "coloca o elemento no final a fila" do
			fila = Fila.new
			fila.push 3

			expect(fila.lista.length).to be 1
		end
	end

	context "#peek" do
		it "retorna o elemento na primeira posicao da fila" do
			fila = Fila.new
			fila.push 3
			fila.push 4

			expect(fila.peek).to be 3
		end

		it "nao remove o elemento" do
			fila = Fila.new
			fila.push 2
			fila.push 3
			fila.push 4
			fila.peek
			
			expect(fila.lista.length).to be 3
		end
	end

	context "#pop" do
		it "remove o ultimo elemento do topo" do
			fila = Fila.new
			fila.push 2
			fila.push 4
			fila.push 6
			fila.pop

			expect(fila.lista.length).to be 2
		end

		it "retorna o elemento do topo" do
			fila = Fila.new
			fila = Fila.new
			fila.push 5
			fila.push 8
			fila.push 9
			
			expect(fila.pop).to be 9
		end
	end
end