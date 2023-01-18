@nazmutdinova_feature
  Feature: my first test

    Scenario: To change Teacher's name with alphanumeric and spec. characters
      Given I open url "http://ask-stage.portnov.com"
      Then I wait for 1 sec
      Then I type "spfbeaver@gasss.net" into element with xpath "//input[@formcontrolname='email']"
      Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for 1 sec
      Then I click on element with xpath "//h5[contains(text(), 'Settings')]"
      Then I wait for element with xpath "//div[@class='horizontal-group']" to be present
      Then I wait for 1 sec
      Then I click on element with xpath "//button/span[contains(text(), 'Change Your Name')]"
      Then I wait for 1 sec
      Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
      Then I wait for 1 sec
      Then I clear element with xpath "//input[@formcontrolname='name']"
      Then I type "Regina123@" into element with xpath "//input[@formcontrolname='name']"
      Then I wait for 1 sec
      Then I click on element with xpath "//div[@class='mat-dialog-actions']/button/span[contains(text(),'Change')]"


