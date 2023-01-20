@victoriaNew_feature
Feature: Student account - Settings Full Name

  @test1
  Scenario: Settings - Change Full Name (Positive test)
    Given I open my url "http://ask-stage.portnov.com"
    Then I see page title as "Assessment Control @ Portnov"
    Then I type "victoria.duboiskaya@gmail.com" into field with xpath "//input[@formcontrolname='email']"
    Then I type "qwerty" into field with xpath "//input[@formcontrolname='password']"
    Then I click button with xpath "//button[@type='submit']"
    Then I wait for 2 seconds
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" should be displayed
    Then I click button with xpath "//h5[contains(text(), 'Settings')]"
    Then I wait for element with xpath "//h4[contains(text(),'Settings')]" should be displayed
    Then I wait for 3 seconds
    Then I click button with xpath "//span[contains(text(),'Name')]"
    Then I wait for 2 seconds
    Then I clear content in field with xpath "//input[@placeholder='New name']"
    Then I wait for 1 seconds
    Then I type "Ivan Ivanov" into field with xpath "//input[@placeholder='New name']"
#      TODO: Know bug: ASK1128-469 needs to be changed after fix
#      Then button with xpath "//button[@type='button'][2]" should be enabled
    Then I click button with xpath "//button[@type='button'][2]"
    Then I wait for 1 seconds









      
      



