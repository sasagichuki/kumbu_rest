require "rails_helper"

RSpec.describe DeathNoticesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/death_notices").to route_to("death_notices#index")
    end

    it "routes to #new" do
      expect(:get => "/death_notices/new").to route_to("death_notices#new")
    end

    it "routes to #show" do
      expect(:get => "/death_notices/1").to route_to("death_notices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/death_notices/1/edit").to route_to("death_notices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/death_notices").to route_to("death_notices#create")
    end

    it "routes to #update" do
      expect(:put => "/death_notices/1").to route_to("death_notices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/death_notices/1").to route_to("death_notices#destroy", :id => "1")
    end

  end
end
