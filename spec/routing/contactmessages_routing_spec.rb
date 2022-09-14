require "rails_helper"

RSpec.describe ContactmessagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/contactmessages").to route_to("contactmessages#index")
    end

    it "routes to #show" do
      expect(get: "/contactmessages/1").to route_to("contactmessages#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/contactmessages").to route_to("contactmessages#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/contactmessages/1").to route_to("contactmessages#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/contactmessages/1").to route_to("contactmessages#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/contactmessages/1").to route_to("contactmessages#destroy", id: "1")
    end
  end
end
