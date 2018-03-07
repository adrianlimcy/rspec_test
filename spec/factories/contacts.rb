FactoryBot.define do
  factory :contact do
    full_name     { Faker::Name.name }
    email         { Faker::Internet.email }
    phone_number  { Faker::PhoneNumber.phone_number }
    address       { Faker::Address.street_address }
    # fullname 'test'
    # email 'email@email.com'
    # phone_number '12345'
    # address 'test address'
  end
end
