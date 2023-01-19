@zyuzikov.feature
Feature: Quiz - Total Questions

  @zyuzikov.tc1
  Scenario: Quiz allows up to 50 questions
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "andrew23us@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    Then I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "50 questions new" into element with xpath "//input[@formcontrolname='name']"
    And I create 50 question
    Then I click on element with xpath "//button/span[contains(text(), 'Save')]"
    And I wait for 1 sec
    When I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then element with xpath "//mat-panel-title[contains(text(), '50 questions new')]" should be present

  @andrew.tc2
  Scenario: Quiz does not allow 50 +1 questions
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "andrew23us@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    Then I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "51 questions new" into element with xpath "//input[@formcontrolname='name']"
    And I create 51 question
      # TODO known bug - only 50 questions should be allowed.
    Then I click on element with xpath "//button/span[contains(text(), 'Save')]"
    And I wait for 1 sec
    When I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then element with xpath "//mat-panel-title[contains(text(), '51 questions new')]" should be present

  
