FactoryBot.define do
  factory :link do
    title { 'valentinochido' }
    url { 'yeah' }
    content { 'blahyeah' }
  end

  factory :user do
    email { 'q@gmail.com' }
    password { 'asdfrewq' }
    confirmed_at { DateTime.now }
  end

  factory :comment do
    body { 'Lorem ipsum dolor sit amet.' }
  end
end
