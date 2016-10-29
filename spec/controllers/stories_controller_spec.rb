require 'rails_helper'

RSpec.describe StoriesController, type: :controller do
  include Devise::TestHelpers
  before(:each) do
    @user = create(:user)
    sign_in @user
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      story = create(:story)
      get :edit,  params: { id: story.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      story = create(:story)
      get :show,  params: { id: story.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
