@sample_feature
Feature: This is a sample feature
      
      Background:
            Given I open url "http://ask-stage.portnov.com"
            Then I should see page title as "Assessment Control @ Portnov"
            Then I type "teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
            Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
            Then I click on element with xpath "//button[@type='submit']"

      @sample_test1
      Scenario: Sample test scenario
            Given I wait for 2 sec