require 'rails_helper'

RSpec.describe "death_notices/show", :type => :view do
  before(:each) do
    @death_notice = assign(:death_notice, DeathNotice.create!(
      :title => "Title",
      :eulogy => "MyText",
      :burial_location => "Burial Location",
      :meeting_location => "Meeting Location",
      :client_picture => "Client Picture",
      :comments => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Burial Location/)
    expect(rendered).to match(/Meeting Location/)
    expect(rendered).to match(/Client Picture/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
