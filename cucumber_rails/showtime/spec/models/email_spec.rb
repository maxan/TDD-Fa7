require 'spec_helper'

describe Email do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context "validações:" do

  	it "para é obrigatório" do
  		email = Email.create
  		expect(email).to have(1).error_on(:para)
  	end

  	it "para é válido com e-mail válido"

  	it "para é inválido com e-mail inválido"

  	it "mensagem é obrigatória"

  end

end
