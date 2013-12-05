# Este teste deve falhar no intuito de verificar a passagem do parâmetro no contrutor

class Inscricao
	def initialize (candicato)
		
	end

	def gerar
		"Inscricao de Luiz"
	end
end

describe Inscricao do
	context "#gerar" do
		it "utiliza o nome do candidato no cabecalho" do

		candidato = double("candidato")
		candidato.should_receive(:nome).and_return("Luiz")

		inscricao = Inscricao.new(candidato)
		expect(inscricao.gerar).to eql "Inscricao de Luiz"

		end
	end
end