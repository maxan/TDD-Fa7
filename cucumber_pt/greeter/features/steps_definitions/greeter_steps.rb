# encoding: utf-8

class CucumberGreeter
	def greet
		"Olá Cucumber"
	end
end

Dado(/^um greeter$/) do
  #pending # express the regexp above with the code you wish you had
  @greeter = CucumberGreeter.new
end

Quando(/^Eu envio uma mensagem greet$/) do
  #pending # express the regexp above with the code you wish you had
  @message = @greeter.greet
end

Então(/^Eu devo ver "(.*?)"$/) do |greeting|
  #pending # express the regexp above with the code you wish you had
  @message.should == greeting
end