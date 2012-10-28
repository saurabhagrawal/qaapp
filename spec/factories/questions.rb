# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    user_id 1
    title "MyString"
    decription "MyText"
    last_edit_time "2012-10-28 17:29:57"
    last_activity_time "2012-10-28 17:29:57"
  end
end
