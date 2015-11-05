require 'rails_helper'

RSpec.describe "Calsses", :type => :request do
  describe "GET /calsses" do
    it "works! (now write some real specs)" do
      get calsses_path
      expect(response).to have_http_status(200)
    end
  end
end
