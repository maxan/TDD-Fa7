# encoding: utf-8

Quando(/^eu seleciono "(.*?)" como conta de origem$/) do |conta_origem|
  #pending # express the regexp above with the code you wish you had
end

Quando(/^eu seleciono "(.*?)" como conta de destino$/) do |conta_destino|
  #pending # express the regexp above with the code you wish you had
end

Quando(/^eu informo que a quantidade é "(.*?)"$/) do |quantidade|
  #pending # express the regexp above with the code you wish you had
end

Quando(/^solicito executar$/) do
  #pending # express the regexp above with the code you wish you had
end

Quando(/^eu transfiro "(.*?)" da "(.*?)" para a "(.*?)"$/) do |quantidade, conta_origem, conta_destino|
  #pending # express the regexp above with the code you wish you had
  step "eu seleciono \"#{conta_origem}\" como conta de origem"
  step "eu seleciono \"#{conta_destino}\" como conta de destino"
  step "eu informo que a quantidade é \"#{quantidade}\""
  step "solicito executar"
end