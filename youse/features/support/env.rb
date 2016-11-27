 require "capybara/cucumber"
 require "selenium-webdriver"
 require 'rspec/autorun'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
Capybara.default_max_wait_time = 50
Capybara.default_selector = :xpath

#Capybara.register_driver :selenium do |app|
  #Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end
