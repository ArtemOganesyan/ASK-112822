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