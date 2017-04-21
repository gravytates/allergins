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

  it('processes user score and returns allergins') do
    visit('/')
    fill_in('score', :with => 1 )
    click_button('Show my allergies!')
    expect(page).to have_content("eggs")
  end

  it('processes user score and returns allergins') do
    visit('/')
    fill_in('score', :with => 22222 )
    click_button('Show my allergies!')
    expect(page).to have_content("cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs")
  end
end
