require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("returns the number of times a word appears in a user provided string", {:type => :feature}) do
  it("processes the user entry and returns correct number of instances of given word") do
    visit('/')
    fill_in("sentence", :with => "happy happy chap")
    fill_in("word", :with => "happy")
    click_button('Submit String')
    expect(page).to have_content("2")
  end
end
