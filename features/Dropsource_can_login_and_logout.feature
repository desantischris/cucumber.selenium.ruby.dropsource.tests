Feature: Dropsource Successful Login & Logout Test

	Users should be able to log in and log out of Dropsource

Scenario:
  Given We navigate to the Dropsource login page
  Then We ensure the Dropsource login page has loaded

  When We enter a correct user email
  And We enter a correct password
  And We click the Log in button
  Then We ensure the Dropsource home page has loaded
