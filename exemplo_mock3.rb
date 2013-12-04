class Inscricao
	def initialize (candicato)
		@candicato = candicato
	end

	def gerar
		"Inscricao de #{@candicato.nome}"
	end
end

describe Inscricao do
	context "#gerar" do
		it "utiliza o nome do candidato no cabecalho" do

		candidato = double("candidato")
		candidato.stub(:nome).and_return("Luiz")

		inscricao = Inscricao.new(candidato)
		expect(inscricao.gerar).to eql "Inscricao de Luiz"

		end
	end
end