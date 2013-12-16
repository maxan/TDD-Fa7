Dado(/^que o usuário "(.*?)" existe$/) do |nome|
  #pending # express the regexp above with the code you wish you had
end

Dado(/^que eu informei o login "(.*?)"$/) do |nome|
  #pending # express the regexp above with the code you wish you had
end

Dado(/^que "(.*?)" está logado$/) do |nome|
  #pending # express the regexp above with the code you wish you had
  # Atenção para as aspas duplas, pois nos passos (steps) anteriores existem as aspas duplas!
  step "que o usuário \"#{nome}\" existe"
  step "que eu informei o login \"#{nome}\""
end