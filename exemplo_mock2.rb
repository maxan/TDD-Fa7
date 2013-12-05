describe "classe Funcionario" do
	it "retorna nome do funcionario" do
		funcionario = double(:funcionario)
		funcionario.stub(:nome => "Anderson Silva", :matricula => 1234, :cargo => "Dev")

		expect(funcionario.nome).to eql("Anderson Silva")
		expect(funcionario.matricula).to eql(1234)
	end
end