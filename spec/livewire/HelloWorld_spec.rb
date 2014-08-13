require "rubygems"
require "watir-webdriver"
require "minitest/autorun"
require "minitest/spec"

class Specs < MiniTest::Spec
    before do
      @browser ||= Watir::Browser.new :phantomjs
    end

    after do
      @browser.close
    end


  describe "I want to go to Google" do

    it "Should open the google webpage" do
      @browser.goto "www.google.com"
      assert @browser.title == "Google"
      puts "The website is #{@browser.title}"
    end

  end
end