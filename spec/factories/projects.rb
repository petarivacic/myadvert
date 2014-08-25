# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    verified false
    status false
    begins_at "2014-08-25 22:05:30"
    ends_at "2014-08-25 22:05:30"
    price 1.5
    user nil
  end
end
