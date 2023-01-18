 @group_code_feature
  Feature: Registration Group Code Field
    @gcf_test1
    Scenario: Group Code Field Allowable Characters: Alphanumeric and Special Characters (Positive)
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//a[@href='#/registration']"
      And I type "Test" into element with xpath "//input[@formcontrolname='firstName']"
      And I type "Test" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "Test@test.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "A123!" into element with xpath "//input[@formcontrolname='group']"
      And I type "123456" into element with xpath "//input[@formcontrolname='password']"
      And I type "123456" into element with xpath "//input[@formcontrolname='confirmPassword']"
      And I click on element with xpath "//button[@type='submit']"
      And I wait for 2 sec
      Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be displayed

    @gcf_test2
    Scenario: Group Code Field Required, Cannot be Empty
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//a[@href='#/registration']"
      And I type "Test" into element with xpath "//input[@formcontrolname='firstName']"
      And I type "Test" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "Test@test.com" into element with xpath "//input[@formcontrolname='email']"
      And I click on element with xpath "//input[@formcontrolname='group']"
      And I type "123456" into element with xpath "//input[@formcontrolname='password']"
      And I type "123456" into element with xpath "//input[@formcontrolname='confirmPassword']"
      And I click on element with xpath "//button[@type='submit']"
      And I wait for 2 sec
      Then element with xpath "//mat-error[contains(text(),'This field is required')]" should be displayed