require "rails_helper"
RSpec.feature "Visit root path" do
  scenario "A user visits the root page" do
    visit "/"

    expect(page).to have_content("Health Status Board")
    expect(page.current_path).to eq(root_path)
  end


end