require "rails_helper"

RSpec.describe CalssesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/calsses").to route_to("calsses#index")
    end

    it "routes to #new" do
      expect(:get => "/calsses/new").to route_to("calsses#new")
    end

    it "routes to #show" do
      expect(:get => "/calsses/1").to route_to("calsses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/calsses/1/edit").to route_to("calsses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/calsses").to route_to("calsses#create")
    end

    it "routes to #update" do
      expect(:put => "/calsses/1").to route_to("calsses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/calsses/1").to route_to("calsses#destroy", :id => "1")
    end

  end
end
