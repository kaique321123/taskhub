require 'rails_helper'

RSpec.describe "Perfils", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/perfil/show"
      expect(response).to have_http_status(:success)
    end
  end

end
