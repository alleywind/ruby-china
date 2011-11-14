FactoryGirl.define do
  factory :user do
    sequence(:login){|n| "login#{n}" }
    sequence(:email){|n| "email#{n}@ruby-chine.org" }
    password 'password'
    password_confirmation 'password'
  end

  factory :admin, :parent => :user do
    email 'admin@admin.com'
  end
end
