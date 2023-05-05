FactoryBot.define do
  factory :product do
    name { "MyString" }
    code { "MyString" }
    brand { "MyString" }
    manufacturer { "MyString" }
    description { "MyText" }
    subcategory { nil }
    datasheet { nil }
  end
end
