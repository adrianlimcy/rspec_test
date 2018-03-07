require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      # let(:params) {FactoryBot.attributes_for(:contact)}
      let(:valid_attributes) {{full_name: 'test', email: 'test@test.com', phone_number: '1223', address: 'test address'}}
      it "create new contact" do
        post :create, params: valid_attributes, as: :json
        # post :create, params: {full_name: 'test', email: 'test@test.com', phone_number: '1223', address: 'test address'}, as: :json
        expect(Contact.count).to eq(1)
      end
    end

    # context "with invalid attributes" do
    #   it "does not create a new contact" do
    #     post :create, params:  FactoryBot.attributes_for(:invalid_contact)
    #       expect(Contact.count).to eq(0)
    #     end
    #   end
  end

end
