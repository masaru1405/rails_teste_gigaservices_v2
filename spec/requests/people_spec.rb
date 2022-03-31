require 'rails_helper'

RSpec.describe "People", type: :request do
  describe "GET /" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET /persons/busca" do
    context "when access the search page" do
      before(:each) { get persons_busca_path }

      it "return status code 200" do
        expect(response).to have_http_status(200)
      end

      it "have sub-title" do
        expect(response.body).to include('Preencha os campos abaixo para realizar uma busca')
      end
    end
  end
end
