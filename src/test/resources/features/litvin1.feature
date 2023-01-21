@options-feature
  Feature: Multiple-choice-quiz-options
    @options-test1
    Scenario: Create 14/15/16 option quiz
      Given I open url "http://ask-stage.portnov.com"
      And I resize window to 1024 and 768
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
      And I wait for 1 sec
      And I take screenshot
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
