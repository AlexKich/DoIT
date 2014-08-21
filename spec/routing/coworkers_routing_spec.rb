require "spec_helper"

describe CoworkersController do
  describe "routing" do

    it "routes to #index" do
      get("/coworkers").should route_to("coworkers#index")
    end

    it "routes to #new" do
      get("/coworkers/new").should route_to("coworkers#new")
    end

    it "routes to #show" do
      get("/coworkers/1").should route_to("coworkers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coworkers/1/edit").should route_to("coworkers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coworkers").should route_to("coworkers#create")
    end

    it "routes to #update" do
      put("/coworkers/1").should route_to("coworkers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coworkers/1").should route_to("coworkers#destroy", :id => "1")
    end

  end
end
