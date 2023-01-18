@feature_for_teacher/password
Feature: My tests for teacher's password


  @test_1
  Scenario: Teacher password:alphanumeric and special characters.
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "veronikakhmelyuk@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "1234ab" into element with xpath "//input[@type='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(), 'Settings')]"
    Then I wait for element with xpath "//div[@class='horizontal-group']" to be present
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then I type "1234ab" into element with xpath "//input[@formcontrolname='password']"
    Then I type "4321ba$" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "4321ba$" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']/button/span[contains(text(),'Change')]"
