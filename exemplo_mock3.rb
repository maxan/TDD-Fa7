# encoding: utf-8

# Concluir este teste.

class Inscricao
	def initialize (candicato, logger = nil)
		@candicato = candicato
		@logger = logger
	end

	def gerar
		@logger.log("Inscrição de #{@candicato.nome}") unless @logger.nil?
		"Inscrição de #{@candicato.nome}"
	end
end

describe Inscricao do
	context "#gerar" do
		it "utiliza o nome do candidato no cabecalho é" do

		candidato = double("candidato")
		candidato.stub(:nome).and_return("Luiz")

		inscricao = Inscricao.new(candidato)
		expect(inscricao.gerar).to eql "Inscrição de Luiz"

		end
		
		it "cria um log quando o gerar é chamado" do
			candidato = stub("candicato")
			candidato.stub(:nome).and_return("Luiz")

			logger = double("logger")
			inscricao = Inscricao.new(candidato, logger)

			logger.should_receive(:log).with("Inscrição de Luiz")
		
			inscricao.gerar
		end
	end
end