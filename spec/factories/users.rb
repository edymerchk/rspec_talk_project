# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    password 'changeme'
    password_confirmation 'changeme'
    # confirmed_at Time.now # required if the Devise Confirmable module is used
  end
end
