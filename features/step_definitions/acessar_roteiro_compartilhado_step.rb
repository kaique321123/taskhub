Dado('que sou um participante da viagem') do
    @participante = FactoryBot.create(:participante)
    login_as(@participante, scope: :user)
end

Dado('que sou um visitante') do
  @participante = FactoryBot.create(:participante)
end

Quando('eu acessar o link do documento') do
  visit documento_path(@documento)
end

E('o documento compartilhado existe') do
  @documento = FactoryBot.create(:documento)
end

Quando('eu visito a página de perfil') do
  visit perfil_path(@participante)
end

Quando('eu clico no botão {string}') do |button_name|
  expect(current_path).to eq(perfil_path(@participante))
  click_button(button_name)
  visit documento_path(@documento)
end

Então('eu devo ser redirecionado ao documento compartilhado') do
  expect(current_path).to eq(documento_path(@documento))
  expect(page).to have_content('Paris - França')
end