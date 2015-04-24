require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('return proper change with least coins', {:type => :feature}) do
  it('processes the user entry and returns proper change') do
    visit('/')
    fill_in('string', :with => 'happy')
  # fill_in('word', :with => 'happy')
    click_button('Send')
    expect(page).to have_content(1)
  end
end
