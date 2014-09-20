require 'rails_helper'

RSpec.describe "death_notices/edit", :type => :view do
  before(:each) do
    @death_notice = assign(:death_notice, DeathNotice.create!(
      :title => "MyString",
      :eulogy => "MyText",
      :burial_location => "MyString",
      :meeting_location => "MyString",
      :client_picture => "MyString",
      :comments => "MyText",
      :user => nil
    ))
  end

  it "renders the edit death_notice form" do
    render

    assert_select "form[action=?][method=?]", death_notice_path(@death_notice), "post" do

      assert_select "input#death_notice_title[name=?]", "death_notice[title]"

      assert_select "textarea#death_notice_eulogy[name=?]", "death_notice[eulogy]"

      assert_select "input#death_notice_burial_location[name=?]", "death_notice[burial_location]"

      assert_select "input#death_notice_meeting_location[name=?]", "death_notice[meeting_location]"

      assert_select "input#death_notice_client_picture[name=?]", "death_notice[client_picture]"

      assert_select "textarea#death_notice_comments[name=?]", "death_notice[comments]"

      assert_select "input#death_notice_user_id[name=?]", "death_notice[user_id]"
    end
  end
end
