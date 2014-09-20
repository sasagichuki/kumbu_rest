# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :death_notice do
    title "MyString"
    date_added "2014-09-20 22:15:21"
    client_born "2014-09-20 22:15:21"
    client_died "2014-09-20 22:15:21"
    eulogy "MyText"
    burial_date "2014-09-20 22:15:21"
    meeting_date "2014-09-20 22:15:21"
    burial_location "MyString"
    meeting_location "MyString"
    client_picture "MyString"
    comments "MyText"
    user nil
  end
end
