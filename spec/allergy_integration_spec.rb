require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the allergy path', {:type => :feature}) do
  it('processes user score and returns allergins') do
    visit('/')
    fill_in('score', :with => 100 )
    click_button('Show my allergies!')
    expect(page).to have_content("pollen, chocolate, shellfish")
  end
end
