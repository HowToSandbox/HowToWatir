HowToWatir
==========

This repo will show you how to do the major things you might want to do in watir/webdriver. 

### We will be using the following toolstack:
 	rake
 	minitest/spec
 	watir/webdriver
	phantom/js
	
#### Install you Development Environment

https://github.com/RubySandbox/HowToSetUpYourDevelopmentEnvironment
	

#### Install Browser Drivers
The next major task you need to do in order to do browser testing is install browser drivers. OSX supports the four of the five major drivers. Firefox is supported out of the box with not special twiddling to get it to work. All the rest of them you have to install the drivers to be able to use them. 


###### PhantomJS Driver
This is probably your single most powerful driver. This is the one that will make your tests super fast, and allow you to run your tests headless in Continious Integration. If you only install one driver, install this one.

Decide where you want to put the driver, somewhere in your path. /usr/local/bin is a nice option. Or you can put it whereever you like and add that dir to your path. Dealers choice.

	Download the driver from http://phantomjs.org/
	
	>echo $PATH

###### Chrome Driver
The driver for Chrome is also needs to be in your path. Do the same things s you did for PhantomJS. Download from https://code.google.com/p/selenium/wiki/ChromeDriver

Make sure you only have ONE copy of this, in one place in your path, and it's the most current version. If you have an old version somewhere, it will stomp all over a more recent version, and cause no end of confusion. So if your getting funny behavior, go hunting for old drivers. (yeh, I've had this problem. grr.)

###### Safari Driver
Safari is super useful because safari is the browser that 'if it works on safari, it'll work on anything'. Safari is kind of a canary in a coalmine, and will surface a lot of issues that will show up across many browsers. It also has very nice debugging tools. However, it's an epic pain in the ankle to install the driver for. 

You need to build an extention, and you need a signing certificate from apple.

1. Create or log in to your Apple developer account and sign up for Safari Extensions program (it's free)

2. GoTo:https://developer.apple.com/account/safari/certificate/certificateLanding.action

3. follow all the instuctions to create a signing certificate

4. Download and install the certificate

5. checkout the safari extension code 
	* svn co http://selenium.googlecode.com/svn/trunk selenium

6. Build it
	* cd selenium
	* ./go safari

7. Launch Safari and open the extention Builder (in the develop menu)

8. Install your new extension	
	* $SELENIUM_CHECKOUT_LOCATION/build/javascript/safari-driver/SafariDriver.safariextension

9. Post a nastygram to Apple for making this so difficult

10.Go have a beer for all your hard work.

#### You should be ready now
At this point you should be ready to run watir/webdriver code and use all the major browser drivers. If you run into any issues, please open an issue, and I will endevor to fix the setup instructions.





 
