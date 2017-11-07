# cucumber.selenium.ruby.dropsource.tests

Automated Login tests for the Dropsource product. Written in ruby. Tests run using the Selenium framework. Tool used is cucumber

Login Scenarios Covered

1. User can successfully login and verify their content and logout
2. User cannot log in with an incorrect credential combinations
3. User cannot log in with an empty credential combinations
4. User can navigate to the Forgot password page
5. User can navigate to the Sign up page

Note: for security purposes, the login password has been omitted

Quick Setup (Mac OS)

$> brew install ruby
$> gem install bundler
$> sudo gem install selenium-webdriver -v 3.2.1
$> gem install cucumber
$> gem install rspec

Can use this tutorial as a guide
http://www.agiletrailblazers.com/blog/the-5-step-guide-for-selenium-cucumber-and-gherkin

To run:

1. Clone repo
2. Open a terminal window
3. In the top level directory, type cucumber
4. For specific features, type cucumber features/<feature_name>
