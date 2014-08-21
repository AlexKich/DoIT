require "spec_helper"

describe MoniksController do
  describe "routing" do

    it "routes to #index" do
      get("/moniks").should route_to("moniks#index")
    end

    it "routes to #new" do
      get("/moniks/new").should route_to("moniks#new")
    end

    it "routes to #show" do
      get("/moniks/1").should route_to("moniks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/moniks/1/edit").should route_to("moniks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/moniks").should route_to("moniks#create")
    end

    it "routes to #update" do
      put("/moniks/1").should route_to("moniks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/moniks/1").should route_to("moniks#destroy", :id => "1")
    end

  end
end
