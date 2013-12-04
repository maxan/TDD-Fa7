class Pilha
	attr_accessor :lista

	def initialize
		@lista = []
	end

	def push item
		@lista << item
	end

	def peek
		@lista.last
	end

	def pop
		@lista.pop
	end
end

describe Pilha do
	before(:each) do
		@pilha = Pilha.new
	end

	context "#peek" do
		it "retorna o elemento do topo" do 
			@pilha.push 92
			@pilha.push 35

			expect(@pilha.peek).to be 35
		end

		it "nao remove o elemento" do
			@pilha.push 12

			expect(@pilha.peek).to eql 12
		end
	end
	context "#push" do
		it "insere um elemento no topo da pilha" do
			@pilha.push 24
			@pilha.push 478

			expect(@pilha.lista.length).to be 2
		end
	end

	context "#pop" do
		it "remove o elemento do topo" do
			@pilha.push 2
			@pilha.push 9
			@pilha.push 5
			@pilha.pop

			expect(@pilha.lista.length).to be 2
		end

		it "retorna o elemento do topo" do
			@pilha.push 67
			@pilha.push 122
			
			expect(@pilha.pop).to be 122
		end
	end
end


#pending("pendencia qualquer") do
#	expect([]).to be_empty
#end
#expect(1).not_be > 2
#expect(true).not_to be false
#expect(true).to be true
#expect(true).not_to be_false
#expect(true).to be_an(Object)
#expect(true).not_to be_an(Pessoa)
#expect("alo turma").match(/alo/) # expressao regular