# Milena feature file
  @add_new_feature
  Feature: Log in
    @sample_test2
    Scenario: Log in as a Teacher
      Given I open url "http://ask-stage.portnov.com"
      Then I should see page title as "Assessment Control @ Portnov"
      Then I type "invoeg@rdupi.org" into element with xpath "//input[@formcontrolname='email']"
      Then I type "1234567890" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for 1 sec
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then I wait for 2 sec
    @email_test9
    Scenario: Registartion-Email Alphanumeric & Special characters (positive)
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "marinai$123@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      Then element with xpath "//*[text()='Should be a valid email address']" should not be present



