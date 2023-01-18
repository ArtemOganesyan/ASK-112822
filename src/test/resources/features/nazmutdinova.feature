# my feature

@Test1

Scenario: To change Teacher's name with alphanumeric and spec. characters
Given I open url "http://ask-stage.portnov.com"
Then I wait for 1 sec
Then I type "spfbeaver@gasss.net" into element with xpath "//input[@formcontrolname='email']"
Then I type "123456" into element with xpath "//input[@formcontrolname='password']"
Then I click on element with xpath "//button[@type='submit']"
Then I wait for element with xpath "//h5[contains(text(), 'Settings')]" to be present
Then I click on element with xpath "//h5[contains(text(), 'Settings')]"
And I wait for 3 sec




