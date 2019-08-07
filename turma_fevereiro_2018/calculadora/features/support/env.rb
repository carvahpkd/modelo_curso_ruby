require 'rspec'
require 'yaml'
require 'pry'
 require 'capybara/cucumber'


 if ENV['chrome']
   Capybara.default_driver = :chrome
   Capybara.register_driver :chrome do |app|
     Capybara::Selenium::Driver.new(app, browser: :chrome)
   end
 elsif ENV['firefox']
   Capybara.default_driver = :firefox
   Capybara.register_driver :firefox do |app|
     Capybara::Selenium::Driver.new(app, browser: :firefox)
   end
 elsif ENV['ie']
   Capybara.default_driver = :ie
   Capybara.register_driver :ie do |app|
     Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
   end
 else
   Capybara.default_driver = :selenium
 end
 