require 'selenium-webdriver'
require 'rubygems'
wait = Selenium::WebDriver::Wait.new(:timeout => 8) # seconds
_userName = "desantis.chris@gmail.com"
_userPassword = "omitted"
_fullUserName = "Chris DeSantis"

# Login page verification

Given(/^We navigate to the Dropsource login page$/) do
  @driver.get "https://app.dropsource.com/login"
end

Then(/^We ensure the Dropsource login page has loaded$/) do
    element = wait.until { @driver.find_element(:name => "username") }
    expect(element.displayed?).to be true
end

# Credentials happy path

When(/^We enter a correct user email$/) do
  @driver.find_element(:name => "username").send_keys(_userName)
end

And(/^We enter a correct password$/) do
  @driver.find_element(:name, 'password').send_keys(_userPassword)
end

And(/^We click the Log in button$/) do
    element = wait.until { @driver.find_element(:class, 'loginButton') }
    element.click
end

Then(/^We ensure the Dropsource home page has loaded$/) do
    element = wait.until { @driver.find_element(:link_text, _fullUserName) }
    expect(element.displayed?).to be true
end

# New account

When(/^We click the Sign Up Here link$/) do
  @driver.find_element(:link_text, 'Sign Up Here').click
end

Then(/^We ensure the Sign Up page has loaded$/) do
  element = wait.until { @driver.find_element(:css => '#root > div > div.content > form > div:nth-child(7) > button > div') }
  expect(element.displayed?).to be true
end

And(/^We ensure the First Name field is visible$/) do
  element = wait.until { @driver.find_element(:xpath => '//*[@id="root"]/div/div[2]/form/div[2]/div[1]/div[2]/span/input') }
  expect(element.displayed?).to be true
end

And(/^We ensure the Last Name field is visible$/) do
  element = wait.until { @driver.find_element(:xpath => '//*[@id="root"]/div/div[2]/form/div[2]/div[2]/div[2]/span/input') }
  expect(element.displayed?).to be true
end

And(/^We ensure the email field is visible$/) do
  element = wait.until { @driver.find_element(:xpath => '//*[@id="root"]/div/div[2]/form/div[3]/div[2]/span/input') }
  expect(element.displayed?).to be true
end

And(/^We ensure the password field is visible$/) do
  element = wait.until { @driver.find_element(:xpath => '//*[@id="root"]/div/div[2]/form/div[4]/div[2]/span/input') }
  expect(element.displayed?).to be true
end

# Security

Given(/^We navigate to the Dropsource project homepage when not logged in$/) do
  @driver.get "https://app.dropsource.com/dashboard/projects"
end

# Forget password

When(/^We click the Forgot My Password link$/) do
  @driver.find_element(:link_text, 'Forgot Password?').click
end

Then(/^We ensure the 'Reset your Password' page has loaded$/) do
  element = wait.until { @driver.find_element(:class => 'forgotButton') }
  expect(element.displayed?).to be true
end
