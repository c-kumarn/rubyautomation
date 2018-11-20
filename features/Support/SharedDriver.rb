require 'rubygems'
require 'rspec'
require 'watir-webdriver'

#include Selenium
#Creating Remote WebDriver
chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)), "features/project1/drivers/chromedriver.exe")
browser = Watir::Browser.new :chrome, driver_path: chromedriver_path

 Before do
   @browser = browser
 end