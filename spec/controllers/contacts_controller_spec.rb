require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  # FactoryBot.build :contact
  # let(:contact) { FactoryBot.create(:contact) }
  # let(:contact) {FactoryBot.create(:contact).attributes}
  # let(:attr) do
  #   FactoryBot.attributes_for(:contact)
  # end

  describe "POST #create" do
    context "with valid attributes" do
      it "create new contact" do
        # contact = FactoryBot.build :contact
        # attributes = FactoryBot.attributes_for(:contact)
        # post :create, params: attributes_for(:contact)
        # post :create, contact: attributes_for(:contact)
        # post :create, params: attributes_for(:contact)
        # contact.posts.create(attributes_for(contact))
        # contact=build(:contact) #<-- this works
        # attrs = attributes_for(:contact) *<-- this works
        # params = {full_name: 'test', email: 'test@test.com', phone_number: '1223', address: 'test address'}
        # post :create, params: params
        post :create, params:  FactoryBot.attributes_for(:contact)
        expect(Contact.count).to eq(1)
      end
    end

    context "with invalid attributes" do
      it "does not create a new contact" do
        post :create, params:  FactoryBot.attributes_for(:contact)
          expect(Contact.count).to eq(0)
        end
      end
  end

end
