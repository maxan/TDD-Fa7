describe "classe Candidato" do
	it "retorna nome e partido" do
		# primeira maneira de fazer
		#candidato = double(:candidato) # mock esta sendo desencorajado
		#candidato.stub(:nome => "Luiz Augusto", :partido => "PRAONDEEH")

		# outra maneira de fazer
		candidato = double(:candidato)
		candidato.stub(:nome).and_return("Luiz Augusto")
		candidato.stub(:partido).and_return("PRAONDEEH")

		expect(candidato.nome).to eql("Luiz Augusto")
		expect(candidato.partido).to eql("PRAONDEEH")
	end
end