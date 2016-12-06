require 'rails_helper'

RSpec.feature 'Creating Article' do
  scenario "a user create a new article" do
    visit "/" # visit URL '/' (called root URL)

    click_link "New Article" # click to new article button

    # New article form
    fill_in "Title", with: "Creating first article"
    fill_in "Body", with: "Creating first article body"
    click_button "Create Article"

    # after save article page
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end
end