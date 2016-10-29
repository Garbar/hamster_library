require 'rails_helper'

RSpec.describe FamdomsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      famdom = create(:famdom)
      get :show, id: famdom.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      famdom = create(:famdom)
      get :edit, id: famdom.id
      expect(response).to have_http_status(:success)
    end
  end

end
