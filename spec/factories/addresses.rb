FactoryBot.define do
  factory :address do
    street { "MyString" }
    number { "MyString" }
    complement { "MyString" }
    neighborhood { "MyString" }
    city { "MyString" }
    state { "MyString" }
    country { "MyString" }
    zip_code { "MyString" }
    user { nil }
  end
end
