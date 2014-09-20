require 'rails_helper'

RSpec.describe "DeathNotices", :type => :request do
  describe "GET /death_notices" do
    it "works! (now write some real specs)" do
      get death_notices_path
      expect(response).to have_http_status(200)
    end
  end
end
