Quando('acesso a página inicial') do
  visit root_path
end

Então('devo ver o título {string}') do |titulo|
  expect(page).to have_content(titulo)
end

E('devo ver {string}') do |texto|
  expect(page).to have_content(texto)
end