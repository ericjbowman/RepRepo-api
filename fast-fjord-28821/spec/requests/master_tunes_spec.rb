require 'rails_helper'

RSpec.describe "MasterTunes", type: :request do
  describe "GET /master_tunes" do
    it "works! (now write some real specs)" do
      get master_tunes_path
      expect(response).to have_http_status(200)
    end
  end
end
