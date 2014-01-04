require 'spec_helper'

describe "Static pages" do
    describe "Home Page" do
    	it "should have content 'Sample App'" do
    		visit '/static_pages/home'
    		expect(page).to have_content('Sample App')
    	end

        it "should have the right title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
        end
    end

    describe "Help page" do
    	it "should have the content 'Help'" do
    		visit '/static_pages/help'
    		expect(page).to have_content('Help')
    	end
        it "should have the right title 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
        end
    end
    describe "About page" do
    	it "should have content 'About Us'" do
    		visit '/static_pages/about'
    		expect(page).to have_content('About Us')
    	end
        it "should have the right title 'About'" do
            visit '/static_pages/about'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
        end
    end
    describe "Test page" do
        it "should have content 'Test" do
            visit '/static_pages/test'
            expect(page).to have_content('Test')
        end
        it "should have the right title 'Test'" do
            visit '/static_pages/test'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App | Test")
        end
    end

end