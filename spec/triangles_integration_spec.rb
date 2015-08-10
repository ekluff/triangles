require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the triangle path", {:type => :feature}) do
  it("tests user input of sides of triangle") do
    visit('/')
    fill_in('A', :with => '2')
    fill_in('B', :with => '3')
    fill_in('C', :with => '4')
    click_button('Trianglize!')
    expect(page).to have_content('scalene')
  end
end
