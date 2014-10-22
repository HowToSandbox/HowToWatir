require 'require'
require 'common' #you get parse_test_data from this file

class Specs < MiniTest::Spec
    before do
      launch_browser  # this lives in /support/common.rb
                      # This gives us the utility of being able to choose the browser we use
                      # BROWSER=chrome rake spec:production   or   rake spec:production to just run it in phantomjs
      @browser.goto "www.YourWebsite.com"

    end

    after do
      @browser.close
    end



  describe "YourWebsite.com website - " do
      #this parses input.txt in /support/ and feeds those lines of data into this test case
    parse_test_data.each do |data|
      it data[:testCaseName] do 
        @browser.link(:id => "signin").when_present.click
        @browser.text_field(:css => "#email").when_present.to_subtype.set data[:email]
        @browser.text_field(:css => "#password").when_present..set data[:password]
        @browser.button(:css => "#signin-button").click
      end
    end  



  end
end