# encoding: utf-8
# language: pt

Dado(/^um filme$/) do
	@filme = Filme.create!
end

Quando(/^eu configuro o horario para "(.*?)" às "(.*?)"$/) do |data, hora|
	@filme.update_attribute(:horario_data, Date.parse(data))
	@filme.update_attribute(:horario_hora, hora)
end

Então(/^o horario deve ser "(.*?)"$/) do |horario|
	expect(@filme.horario).to eql horario
end