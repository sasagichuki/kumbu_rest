require 'rails_helper'

RSpec.describe "death_notices/index", :type => :view do
  before(:each) do
    assign(:death_notices, [
      DeathNotice.create!(
        :title => "Title",
        :eulogy => "MyText",
        :burial_location => "Burial Location",
        :meeting_location => "Meeting Location",
        :client_picture => "Client Picture",
        :comments => "MyText",
        :user => nil
      ),
      DeathNotice.create!(
        :title => "Title",
        :eulogy => "MyText",
        :burial_location => "Burial Location",
        :meeting_location => "Meeting Location",
        :client_picture => "Client Picture",
        :comments => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of death_notices" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Burial Location".to_s, :count => 2
    assert_select "tr>td", :text => "Meeting Location".to_s, :count => 2
    assert_select "tr>td", :text => "Client Picture".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
