# encoding: utf-8

class Carta
	def initialize hash
		@hash_carta = hash
	end
end

# Atenção, pois as variáveis devem ser de instância!
Before do
	@primeira_mao = []
	@segunda_mao = []
end

Dado(/^uma mão com as seguintes cartas$/) do |cartas|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  cartas.hashes.each {|hash|
      @primeira_mao << Carta.new(hash)
  }
end

Dado(/^outra mão com as seguintes cartas$/) do |cartas|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  cartas.hashes.each {|hash|
    @segunda_mao << Carta.new(hash)
  }
end

Então(/^a primeira mão deve ganhar da segunda mão$/) do
  pending # express the regexp above with the code you wish you had
end