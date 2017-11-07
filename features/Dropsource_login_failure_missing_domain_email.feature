Feature: Dropsource Missing Email Domain Login Test

	Users should see an error message when using an email without
	a domain on the Dropsource login page

Scenario:
  Given We navigate to the Dropsource login page
  Then We ensure the Dropsource login page has loaded

  When We enter a user name with no email domain
  And We enter a correct password
  And We click the Log in button
  Then We ensure an error message is displayed for an invalid email
