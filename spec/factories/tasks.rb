FactoryBot.define do
  factory :task do
    name { "MyString" }
    tender { nil }
    status { 1 }
    publish_at { "2023-06-07 17:27:41" }
    finish_at { "2023-06-07 17:27:41" }
  end
end
