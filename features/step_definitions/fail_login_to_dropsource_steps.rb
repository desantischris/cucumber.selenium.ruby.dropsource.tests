require 'selenium-webdriver'
require 'rubygems'
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds

# Sad paths

When(/^We enter an incorrect user email$/) do
  @driver.find_element(:name => "username").send_keys("wrongEmail@test.com")
end

When(/^We enter a non-existent user email$/) do
  @driver.find_element(:name => "username").send_keys("wrongEmail@test.com")
end

When(/^We enter a user name with no email domain$/) do
    @driver.find_element(:name => "username").send_keys("wrongEmail")
end

When(/^We enter a blank user email$/) do
  puts "No user email entered"
end

And(/^We enter an incorrect password$/) do
  @driver.find_element(:name, 'password').send_keys("ThisIsNotRight123!!")
end

And(/^We enter a blank password$/) do
  puts "No password entered"
end

Then(/^We ensure an error message is displayed for an invalid email$/) do
  element = wait.until { @driver.find_element(:css => "#root > div > div.content > form > div:nth-child(2) > div.container-input > span > div > div.box") }
  elementText = element.text
  puts elementText
  expect(elementText).to eq("This is not a valid email")
end

Then(/^We ensure an error message is displayed for a blank email$/) do
  element = wait.until { @driver.find_element(:css => "#root > div > div.content > form > div:nth-child(2) > div.container-input > span > div > div.box") }
  elementText = element.text
  puts elementText
  expect(elementText).to eq("You left the email field blank")
end

Then(/^We ensure an error message is displayed for a non-existent email$/) do
  element = wait.until { @driver.find_element(:css => "#root > div > div.content > form > div:nth-child(2) > div.container-input > span > div > div.box") }
  elementText = element.text
  puts elementText
  expect(elementText).to eq("This email doesn't exist in our records")
end

Then(/^We ensure an error message is displayed for an incorrect password$/) do
  element = wait.until { @driver.find_element(:css => "#root > div > div.content > form > div:nth-child(3) > div.container-input > span > div > div.box") }
  elementText = element.text
  puts elementText
  expect(elementText).to eq("This password doesn't match the above email")
end

Then(/^We ensure an error message is displayed for a blank password$/) do
  element = wait.until { @driver.find_element(:css => "#root > div > div.content > form > div:nth-child(3) > div.container-input > span > div > div.box") }
  elementText = element.text
  puts elementText
  expect(elementText).to eq("You left the password field blank.")
end
