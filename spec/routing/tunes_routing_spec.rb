require "rails_helper"

RSpec.describe TunesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tunes").to route_to("tunes#index")
    end


    it "routes to #show" do
      expect(:get => "/tunes/1").to route_to("tunes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tunes").to route_to("tunes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tunes/1").to route_to("tunes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tunes/1").to route_to("tunes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tunes/1").to route_to("tunes#destroy", :id => "1")
    end

  end
end
