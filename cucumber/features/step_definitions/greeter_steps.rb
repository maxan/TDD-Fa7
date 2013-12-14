class CucumberGreeter
	def greet
		"Hello Cucumber"
	end
end

Given(/^a greeter$/) do
  #pending # express the regexp above with the code you wish you had
  @greeter = CucumberGreeter.new
end

When(/^I send it the greet message$/) do
  #pending # express the regexp above with the code you wish you had
  @message = @greeter.greet
end

Then(/^I should see "(.*?)"$/) do |greeting|
  #pending # express the regexp above with the code you wish you had
  @message.should == greeting
end