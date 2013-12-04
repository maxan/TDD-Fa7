class Ligador
	def saldar
		"Ola"
	end
end


describe Ligador do
	it "quando receber a mensagem saudar entao deve responder 'Ola'" do
		l = Ligador.new
		expect(l.saldar).to eql "Ola"
	end
end