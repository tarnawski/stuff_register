require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe FundingsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Funding. As you add validations to Funding, be sure to
  # adjust the attributes here as well.
    let(:user) { build(:user) }  
 before do
    sign_in user
    controller.stub(:user_signed_in?).and_return(true)
    controller.stub(:current_user).and_return(user)
    controller.stub(:authenticate_user!).and_return(user)
    controller.current_user.stub(admin?: true)
  end

  let(:valid_attributes) do
    {
      name: 'UE',
    }
  end

  let(:invalid_attributes)  do
    {
      name: '',
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FundingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fundings as @fundings" do
      funding = Funding.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:fundings)).to eq([funding])
    end
  end

  describe "GET show" do
    it "assigns the requested funding as @funding" do
      funding = Funding.create! valid_attributes
      get :show, {:id => funding.to_param}, valid_session
      expect(assigns(:funding)).to eq(funding)
    end
  end

  describe "GET new" do
    it "assigns a new funding as @funding" do
      get :new, {}, valid_session
      expect(assigns(:funding)).to be_a_new(Funding)
    end
  end

  describe "GET edit" do
    it "assigns the requested funding as @funding" do
      funding = Funding.create! valid_attributes
      get :edit, {:id => funding.to_param}, valid_session
      expect(assigns(:funding)).to eq(funding)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Funding" do
        expect {
          post :create, {:funding => valid_attributes}, valid_session
        }.to change(Funding, :count).by(1)
      end

      it "assigns a newly created funding as @funding" do
        post :create, {:funding => valid_attributes}, valid_session
        expect(assigns(:funding)).to be_a(Funding)
        expect(assigns(:funding)).to be_persisted
      end

      it "redirects to the created funding" do
        post :create, {:funding => valid_attributes}, valid_session
        expect(response).to redirect_to(Funding.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved funding as @funding" do
        post :create, {:funding => invalid_attributes}, valid_session
        expect(assigns(:funding)).to be_a_new(Funding)
      end

      it "re-renders the 'new' template" do
        post :create, {:funding => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
    
      it "assigns the requested funding as @funding" do
        funding = Funding.create! valid_attributes
        put :update, {:id => funding.to_param, :funding => valid_attributes}, valid_session
        expect(assigns(:funding)).to eq(funding)
      end

      it "redirects to the funding" do
        funding = Funding.create! valid_attributes
        put :update, {:id => funding.to_param, :funding => valid_attributes}, valid_session
        expect(response).to redirect_to(funding)
      end
    end

    describe "with invalid params" do
      it "assigns the funding as @funding" do
        funding = Funding.create! valid_attributes
        put :update, {:id => funding.to_param, :funding => invalid_attributes}, valid_session
        expect(assigns(:funding)).to eq(funding)
      end

      it "re-renders the 'edit' template" do
        funding = Funding.create! valid_attributes
        put :update, {:id => funding.to_param, :funding => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested funding" do
      funding = Funding.create! valid_attributes
      expect {
        delete :destroy, {:id => funding.to_param}, valid_session
      }.to change(Funding, :count).by(-1)
    end

    it "redirects to the fundings list" do
      funding = Funding.create! valid_attributes
      delete :destroy, {:id => funding.to_param}, valid_session
      expect(response).to redirect_to(fundings_url)
    end
  end

end
