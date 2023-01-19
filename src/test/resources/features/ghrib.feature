@Nader_feature
Feature: Student - Settings - Password

  Background:
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "nadergharib88@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//a[@href='/#/settings']" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//a[@href='/#/settings']"
# hello


  @StudentChangePassword
  Scenario: Alphanumeric & Special characters (Positive)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Change']"
    And element with xpath "//h3[text()='NADER GHRIB']" should be present

  Scenario: Minimum (5) characters (Positive)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "1234a" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "1234a" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Change']"
    And element with xpath "//h3[text()='NADER GHRIB']" should be present

  Scenario: (4) characters (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "1234" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "1234" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And element with xpath "//mat-error[contains(text(), 'short')]" should contain text "Too Short"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled

  Scenario: Maximum (32) characters (Positive)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "123456789a123456789b123456789c12" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "123456789a123456789b123456789c12" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Change']"
    And element with xpath "//h3[text()='NADER GHRIB']" should be present

  Scenario: (33) characters (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "123456789a123456789b123456789c123" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I click on element with xpath "//input[@formcontrolname='confirmPassword']"
    And element with xpath "(//mat-error[@role='alert'])[1]" should be present
    And element with xpath "(//mat-error[@role='alert'])[1]" should contain text "Too long"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled

  Scenario: White spaces are not allowed (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "1234 abc" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I click on element with xpath "//input[@formcontrolname='confirmPassword']"
    And element with xpath "//mat-error[contains(text(), 'Whitespaces')]" should be present
    And element with xpath "//mat-error[contains(text(), 'Whitespaces')]" should have text as "Whitespaces are not allowed"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled

  Scenario: Empty password field (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I click on element with xpath "//input[@formcontrolname='newPassword']"
    Then I wait for 1 sec
    And element with xpath "//mat-error[contains(text(), 'required')]" should be present
    And element with xpath "//mat-error[contains(text(), 'required')]" should have text as "This field is required"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled

  Scenario: Empty New password field (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "1234a" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Change']"
    And element with xpath "//mat-error[contains(text(), 'Entered')]" should be present
    And element with xpath "//mat-error[contains(text(), 'Entered')]" should have text as "Entered passwords should match"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled

  Scenario: Empty Confirm password field (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "1234a" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I click on element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Change']"
    And element with xpath "//mat-error[contains(text(), 'required')]" should be present
    And element with xpath "//mat-error[contains(text(), 'required')]" should have text as "This field is required"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled


  Scenario: Confirm Password not matching New Password (Negative)
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "123456" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Change']"
    And element with xpath "//mat-error[contains(text(), 'Entered')]" should be present
    And element with xpath "//mat-error[contains(text(), 'Entered')]" should contain text "Entered passwords should match"
    And element with xpath "(//button[@class='mat-raised-button mat-primary'])[3]" should be disabled


  Scenario: Verify "Cancel" button and UI behavior
    Given I open url "http://ask-stage.portnov.com/#/settings"
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "1234a" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "1234a" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[text()='Cancel']"
    And element with xpath "//h3[text()='NADER GHRIB']" should be present
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then I wait for 2 sec
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I wait for 1 sec
    Then I type "1234a" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I wait for 1 sec
    Then I type "1234a" into element with xpath "//input[@formcontrolname='confirmPassword']"
