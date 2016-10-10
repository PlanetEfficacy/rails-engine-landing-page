require 'rails_helper'

RSpec.feature "visitor vists site" do
  scenario "sees a link for every API endpoint" do
    visit "/"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Rails Engine")
    expect(page).to have_css("a", count: 25)
  end
end
