# spec/requests/home_spec.rb (CORRIGIDO)

require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /" do # Você pode opcionalmente mudar a descrição aqui também
    it "returns http success" do
      get "/"  # <-- CORREÇÃO
      expect(response).to have_http_status(:success)
    end
  end
end