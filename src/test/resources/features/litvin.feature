# Milena feature file
@email_feature
Feature:My Registration- email feature

    @email_test1
    Scenario: Milena email test 64 characters/Negative
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "bsjsfdlkblsdbvlsdidlsibiuil123hh$bvfjlbvjslbvdsjlvbdjsbvdjjbdbjv@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I click on element with xpath "//input[@formcontrolname='group']"
      Then element with xpath "//*[text()='Should be a valid email address']" should be displayed
    @email_test2
    Scenario: Registration email/63 characters on the left/Positive
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "bsjsfdlkblsdbvlsdidlsibiuil123hhbvfjlbvjslbvdsjlvbdjsbvdjjbdbjv@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      And I type "12345" into element with xpath "//input[@formcontrolname='password']"
      And I type "12345" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//button[@type='submit']"
    @email_test3
    Scenario: Registration email/62 characters on the left/Positive
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "bsjfdlkblsdbvlsdidlsibiuil123hhbvfjlbvjslbvdsjlvbdjsbvdjjbdbjv@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      And I type "12345" into element with xpath "//input[@formcontrolname='password']"
      And I type "12345" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//button[@type='submit']"
    @email_test4
    Scenario: Registration email/white spaces/Negative
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "marina i@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      Then element with xpath "//*[text()='Should be a valid email address']" should be present
    @email_test5
    Scenario: Registration email/empty input/Negative
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I click on element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      Then element with xpath "//*[text()='This field is required']" should be displayed
    @email_test6
    Scenario: Registration email/129 characters/Negative
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "gskbksdbkdsbgdkbvdkvkdbvkbvv12345vbkdzvdzbvzdlbvbvbvbdsdbfisalf@dbdsljbjdfbjkdsbkbfdbh.dfvbd12345hhhvhvhvvhvhvhvdjgjgjtgsrhhtrdhh" into element with xpath "//input[@formcontrolname='email']"
      Then element with xpath "//*[text()='Should be a valid email address']" should be displayed
    @email_test7
    Scenario: Registration email/128 characters/Positive
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "gskbksdbkdsbgdkbvdkvkdbvkbvv12345vbkdzvdzbvzdlbvbvbvbdsdbfisalf@dbdsljbjdfbjkdsbkbfdb.dfvbd12345hhhvhvhvvhvhvhvdjgjgjtgsrhhtrdhh" into element with xpath "//input[@formcontrolname='email']"
      Then element with xpath "//*[text()='Should be a valid email address']" should not be present
    @email_test8
    Scenario: Registration email/127 characters/Positive
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "gskbksdbkdsbgdkvdkvkdbvkbvv12345vbkdzvdzbvzdlbvbvbvbdsdbfisalf@dbdsljbjdfbjkdsbkbfdb.dfvbd12345hhhvhvhvvhvhvhvdjgjgjtgsrhhtrdhh" into element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      And I type "12345" into element with xpath "//input[@formcontrolname='password']"
      And I type "12345" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for 3 sec
      Then I should see page title contains "//h4[contains(text(), 'You have been Registered')]"
    @email_test9
    Scenario: Registartion-Email Alphanumeric & Special characters (positive)
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "marinai$123@gmail.com"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      Then element with xpath "//*[text()='Should be a valid email address']" should not be present

    @email_test9
    Scenario: Registartion-Email Alphanumeric & Special characters (positive)
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//button[@class='mat-button mat-primary']"
      And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "marinai$123@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
      Then element with xpath "//*[text()='Should be a valid email address']" should not be present



