require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the triangle path", {:type => :feature}) do
  it("tests user input of sides of triangle") do
    visit('/')
    fill_in('SideA', :with => 2)
    fill_in('SideB', :with => 3)
    fill_in('SideC', :with => 4)
    click_button('Trianglize!')
    expect(page).to have_content('scalene')
  end
end
