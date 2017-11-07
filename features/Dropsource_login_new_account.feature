Feature: Dropsource New Account Test

	Users should be able to navigate to the 'Sign Up' page

Scenario:
  Given We navigate to the Dropsource login page
  Then We ensure the Dropsource login page has loaded

  When We click the Sign Up Here link
  Then We ensure the Sign Up page has loaded
  And We ensure the First Name field is visible
  And We ensure the Last Name field is visible
  And We ensure the email field is visible
  And We ensure the password field is visible
