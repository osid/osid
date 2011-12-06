require "spec_helper"

describe WeaknessesController do
  describe "routing" do

    it "routes to #index" do
      get("/weaknesses").should route_to("weaknesses#index")
    end

    it "routes to #new" do
      get("/weaknesses/new").should route_to("weaknesses#new")
    end

    it "routes to #show" do
      get("/weaknesses/1").should route_to("weaknesses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weaknesses/1/edit").should route_to("weaknesses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weaknesses").should route_to("weaknesses#create")
    end

    it "routes to #update" do
      put("/weaknesses/1").should route_to("weaknesses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weaknesses/1").should route_to("weaknesses#destroy", :id => "1")
    end

  end
end
