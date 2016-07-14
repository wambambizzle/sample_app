require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title 'About Us'" do
      visit '/static_pages/about'
      # binding.pry
      expect(page).to have_title("#{base_title} | About Us")
      # page.should have_css('title', :text => 'Ruby on Rails Tutorial Sample App | About Us')
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_content("Contact")
    end

    it "should have the right title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

  describe "Home page" do
    it "should have the content 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_home_path
      visit '/static_pages/home'
      expect(page).to have_content('Home')
      # response.status.should be(200)
    end

    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end
end
