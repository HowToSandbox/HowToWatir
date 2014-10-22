require "rubygems"
require "watir-webdriver"
require "minitest/autorun"
require "minitest/spec"
require "common"

class Specs < MiniTest::Spec
    before do
      launch_browser  # this lives in /support/common.rb
                      # This gives us the utility of being able to choose the browser we use
                      # BROWSER=safari rake spec:UseAllTheThings
    end

    after do
      @browser.close
    end


  describe "I want to show some Examples" do

    it "Assert the title of a page" do
      @browser.goto "www.google.com"
      assert @browser.title == "Google"
      puts "The website is #{@browser.title}"
    end

    it "set a field, use send send_keys, and check for text in a page" do
      puts "Searching for Cats!"
      @browser.goto "www.google.com"
      @browser.text_field(:name => "q").set "cat"
      @browser.text_field(:name => "q").send_keys :return
      puts "I typed cats into google and hit Return"
      Watir::Wait.until {@browser.text.include? 'Cat'}
      puts "There are Cats in the search results"
      puts "The title of the website changed to: #{@browser.title}"
      assert @browser.title == "cat - Google Search"
      puts "Woot! I can find Cats on the internet!"
      # At any point in this script that it breaks, the next puts will not output. 
      # Love your puts, for they help you debug
    end

    it "" do

    end

  end
end


