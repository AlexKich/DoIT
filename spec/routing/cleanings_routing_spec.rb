require "spec_helper"

describe CleaningsController do
  describe "routing" do

    it "routes to #index" do
      get("/cleanings").should route_to("cleanings#index")
    end

    it "routes to #new" do
      get("/cleanings/new").should route_to("cleanings#new")
    end

    it "routes to #show" do
      get("/cleanings/1").should route_to("cleanings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cleanings/1/edit").should route_to("cleanings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cleanings").should route_to("cleanings#create")
    end

    it "routes to #update" do
      put("/cleanings/1").should route_to("cleanings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cleanings/1").should route_to("cleanings#destroy", :id => "1")
    end

  end
end
