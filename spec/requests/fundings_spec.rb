require 'rails_helper'

RSpec.describe "Fundings", :type => :request do
  describe "GET /fundings" do
    it "works! (now write some real specs)" do
      get fundings_path
      expect(response).to have_http_status(200)
    end
  end
end
