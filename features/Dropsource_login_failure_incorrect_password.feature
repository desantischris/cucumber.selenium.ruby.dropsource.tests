Feature: Dropsource Incorrect Password Login Test

	Users should see an error message when using an incorrect
	password on the Dropsource login page

Scenario:
  Given We navigate to the Dropsource login page
  Then We ensure the Dropsource login page has loaded

  When We enter a correct user email
  And We enter an incorrect password
  And We click the Log in button
  Then We ensure an error message is displayed for an incorrect password
