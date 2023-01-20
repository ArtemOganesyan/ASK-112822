# Milena feature file
@email_feature
Feature:My first email feature
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
    And I click on element with xpath "//input[@formcontrolname='group']"
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
    And I type "gskbkbkdsbgdkvdkvkdbvkghlsfghlisdhglishgislhglisdhglsihgslidghhbvv12345vbkdzvdzbvzdlbvbvbvbdsdbfisalf@dbdsljbjdfbjkdsbkbfdb.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='group']"
    And I type "12345" into element with xpath "//input[@formcontrolname='password']"
    And I type "12345" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    And I switch to new window
    Then element with xpath "//h4[contains(text(), 'You have been Registered')]" should be present


  @email_test9
  Scenario: Registartion-Email Alphanumeric & Special characters (positive)
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//button[@class='mat-button mat-primary']"
    And I type "Sveta" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Ivanova" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "marinai$123@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I click on element with xpath "//input[@formcontrolname='group']"
    Then element with xpath "//*[text()='Should be a valid email address']" should be present
  @test1
  Scenario: Create 14/15/16 option quiz
    Given I open url "http://ask-stage.portnov.com"
    Then I type "invoeg@rdupi.org" into element with xpath "//input[@formcontrolname='email']"
    Then I type "1234567890" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    Then I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "New test quiz" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//div[@class='controls ng-star-inserted']/button"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]"
    And I type "My first question" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 1*']"
    And I type "Option 1" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 1*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 2*']"
    And I type "Option 2" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 2*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 3" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 3*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 4" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 4*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 5" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 5*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 6" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 6*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 7" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 7*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 8" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 8*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 9" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 9*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 10" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 10*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 11" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 11*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 12" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 12*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 13" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 13*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 14" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 14*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 15" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 15*']"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//button[@class='mat-raised-button mat-accent']"
    And I type "Option 16" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 16*']"
    And I click on element with xpath "//button/span[contains(text(), 'Save')]"
    And I wait for 4 sec
    And I switch to new window






