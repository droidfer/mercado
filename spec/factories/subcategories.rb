FactoryBot.define do
  factory :subcategory do
    name { "subcat1" }
    description { "subcategory 1" }
    category
  end
end
