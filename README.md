HowToWatir
==========

This repo will show you how to do the major things you might want to do in watir/webdriver. 

### We will be using the following toolstack:
 	rake
 	minitest/spec
 	watir/webdriver
	phantom/js
	
#### Install you Development Environment

* Install Homebrew

	>ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
	
* Update Homebrew
	
	>brew update

	>brew doctor #Follow all the instructions

* Install RVM:

	>\curl -sSL https://get.rvm.io | bash -s stable --ruby
	
* Install Ruby under RVM

	>rvm install 2.1.2
	
	>rvm --default use 2.1.2           # This makes 2.1.2 Default
	
* Install Bundler:

	>gem install bundler
	
* Pull your source code of choice. (whatever you happen to be working on):

	>git clone `<repo url>`
	
* Install the Gems

	cd into the repository you just pulled
	
	>bundle
	

#### Install Browser Drivers
The next major task you need to do in order to do browser testing is install browser drivers. OSX supports the four of the five major drivers. Firefox is supported out of the box with not special twiddling to get it to work. All the rest of them you have to install the drivers to be able to use them. 


###### PhantomJS
This is probably your single most powerful driver. This is the one that will make your tests super fast, and allow you to run your tests headless in Continious Integration. If you only install one driver, install this one.
This driver must be located in your path. Download the driver, and put it in your path.
	Download the driver from http://phantomjs.org/
	
	>echo $PATH
	
	Decide where you want to put the driver, somewhere in your path. /usr/local/bin is a nice option. Or you can put it whereever you like and add that dir to your path. Dealers choice.





 
