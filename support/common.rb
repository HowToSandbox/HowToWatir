def launch_browser
	argument = ENV["BROWSER"] || "phantomjs"
	driver = argument.to_sym
	puts "Browser Driver: #{driver}"
	switches = [ '--ignore-ssl-errors=yes' ]
    @browser ||= Watir::Browser.new driver, :args => switches 
end