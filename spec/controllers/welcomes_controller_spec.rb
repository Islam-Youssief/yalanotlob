require 'rails_helper'

RSpec.describe WelcomesController, type: :controller do

  let(:valid_attributes) {
    {':greeting'=>'Initial Greeting'}
  }

  let(:invalid_attributes) {
    {':greeting' => nil}
  }

  let(:valid_session) { {} }


  before do
    puts '========>'+'  '+ 'Run before of FactoryBot for @welcome'
    @authorize_user = FactoryBot.create(:authorize_user)
    @welcome = FactoryBot.create(:welcome)
    @welcome.save
  end


  describe "GET #index success #{200}" do
    it "returns a success response" do
      sign_in(@authorize_user)
      expect(response).to be_success

    end
  end

  describe "Sign_in GET #show" do
    it "returns a success response" do
      sign_in(@authorize_user)
      welcome = Welcome.create!(greeting: 'Greeting by FactoryBot')
      get :show, params: {id: welcome.to_param}, session: valid_session
      #expect(response).to be_success
      assert_response :success
      #assert_response :redirect #302 Sign_in

    end
  end

  describe "GET #new redirect to Sign_in #302" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      assert_response :redirect #302 Sign_in
    end
  end

  describe "POST #create" do
    context "create welcome redirect to sign_in" do
      it "it redirect to users/sign_in" do
      post :create, params: {welcome: { greeting: "Lorem ipsum" }}, session: valid_session
      expect(response).to redirect_to("/users/sign_in")
      end
    end
  
      it "login create welcome expect success" do
        sign_in(@authorize_user)
        welcome = Welcome.create!(greeting: 'Greeting by FactoryBot')
        #post :create, params: {welcome: { greeting: "Lorem ipsum" }}, session: valid_session
        expect(response).to be_success
      end        
    end


  describe "DELETE #destroy" do

    it "can not delete then redirects to users/sign_in" do
    delete :destroy, params: {id: 3333}
    expect(response).to redirect_to("/users/sign_in")
    end
  end

   describe "Login user can delete" do
    it "then returns to welcomes" do
      sign_in(@authorize_user)
      puts '========>'+'  '+ @welcome.to_param
      @welcome.reload
      delete :destroy, params: {id: @welcome.to_param}
      expect(response).to redirect_to(welcomes_url) 
      end
    end
  end

