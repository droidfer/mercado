FactoryBot.define do
  factory :offer do
    tender { nil }
    status { 1 }
    price { "9.99" }
    presented_at { "2023-06-05 17:10:52" }
  end
end
