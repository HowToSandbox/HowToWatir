def launch_browser
	argument = ENV["BROWSER"] || "phantomjs"
	driver = argument.to_sym
	puts "Browser Driver: #{driver}"
	switches = [ '--ignore-ssl-errors=yes' ]
    @browser ||= Watir::Browser.new driver, :args => switches 
end



def parse_test_data
	  @file = './support/input.txt'
      @testData = []
      File.open(@file, "r") do |f|
	        f.each_line do |line|
	        value = line.split("|")
          output = {:testCaseName => value[0], 
                    :email => value[1], 
                    :password => value[2], 
                    :errorMessage => value[3]}
	        @testData << output


	        end
	    end    
	    @testData

end