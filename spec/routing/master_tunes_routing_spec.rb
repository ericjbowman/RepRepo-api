require "rails_helper"

RSpec.describe MasterTunesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/master_tunes").to route_to("master_tunes#index")
    end


    it "routes to #show" do
      expect(:get => "/master_tunes/1").to route_to("master_tunes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/master_tunes").to route_to("master_tunes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/master_tunes/1").to route_to("master_tunes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/master_tunes/1").to route_to("master_tunes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/master_tunes/1").to route_to("master_tunes#destroy", :id => "1")
    end

  end
end
