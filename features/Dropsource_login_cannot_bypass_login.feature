Feature: Dropsource Login Bypass Test

	Users should not be able to access the Dropsource homepage without logging in first

Scenario:
  Given We navigate to the Dropsource project homepage when not logged in
  Then We ensure the Dropsource login page has loaded
