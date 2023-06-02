FactoryBot.define do
  factory :employee do
    name { "MyString" }
    title { "MyString" }
    landline { "MyString" }
    mobile { "MyString" }
    email { "MyString" }
    department { nil }
    company { nil }
  end
end
