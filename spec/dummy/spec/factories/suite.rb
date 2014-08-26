FactoryGirl.define do
  factory :user do
    sequence :id do |n|
      n
    end
    name "Victor Antoniazzi"
    age 20
    admin false
  end

  factory :adderess do
    sequence :id do |n|
      n
    end
    name "Rua uruguai 1403"
    user { instance_factory(:user) }
  end
end
