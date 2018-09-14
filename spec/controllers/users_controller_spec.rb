require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    it "renders the signup page" do
      get :new, {}
      
      expect(response).to render_template('new')
      expect(response).to have_http_status(200)
    end
  end
  
  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of username and password" do
        post :create, params: { user: {username: 'La'} }
        expect(response).to render_template('new')
        expect(flash[:errors]).to be_present
      end
    end
  end
end
