require "rails_helper"
RSpec.feature "Visit root path" do
  VCR.use_cassette('conjur_health') do
    scenario "A user visits the root page" do
      visit "/"

      expect(page).to have_content("Application Cluster Status")
      expect(page.current_path).to eq(root_path)
    end
  end
end
