Feature: Dropsource Non-existent Email Login Test

	Users should see an error message when using a non-existent
	email on the Dropsource login page

Scenario:
  Given We navigate to the Dropsource login page
  Then We ensure the Dropsource login page has loaded

  When We enter a non-existent user email
  And We enter a correct password
  And We click the Log in button
  Then We ensure an error message is displayed for a non-existent email
