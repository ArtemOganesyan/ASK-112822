@MultipleChoiceQuestion-Text_feature
Feature: Multiple-Choice Question - Text

  Background:
    Given I open url "ask-stage" AV
    Then I should see page title as "Assessment Control @ Portnov" AV
    Then I type "teacher email" into element "Email field" AV
    Then I type "teacher password" into element "Password field" AV
    Then I click on element "Submit button" AV
    Then I wait for element "James Sullivan teacher name" to be present AV
    Then I click on element "Quizzes link" AV
    Then I wait for element "List of Quizzes title" to be present AV
    Then I click on element "Create New Quiz link" AV

  @test1
  Scenario: Question field can NOT be empty.
    Then I wait for element "Title Of The Quiz field" to be present AV
    And I type "MCQT1" into element "Title Of The Quiz field" AV
    And I click on element "Add Question button" AV
    And I click on element "Multiple-Choice radio-button" AV
    And I type "Question option 1" into element "Option 1* field" AV
    And I click on element "Option 1* checkbox" AV
    And I type "Question option 2" into element "Option 2* field" AV
    And I click on element "Option 2* checkbox" AV
    And I click on element "Save button" AV
    Then I wait for element "Quiz is not completed popup" to be present AV
    Then element "Quiz is not completed popup" should be present AV
    Then element "This field is required error" should be present AV

  @test2
  Scenario: Question field can contain minimum 1 character.
    Then I wait for element "Title Of The Quiz field" to be present AV
    And I type "MCQT2" into element "Title Of The Quiz field" AV
    And I click on element "Add Question button" AV
    And I click on element "Multiple-Choice radio-button" AV
    And I type "a" into element "Question field" AV
    And I type "q" into element "Option 1* field" AV
    And I click on element "Option 1* checkbox" AV
    And I type "w" into element "Option 2* field" AV
    And I click on element "Option 2* checkbox" AV
    And I click on element "Save button" AV
    Then I wait for element "List of Quizzes title" to be present AV
    Then element "MCQT2 quiz" should be present AV

  @test3
  Scenario: Question field can contain 1000 characters.
    Then I wait for element "Title Of The Quiz field" to be present AV
    And I type "MCQT3" into element "Title Of The Quiz field" AV
    And I click on element "Add Question button" AV
    And I click on element "Multiple-Choice radio-button" AV
    And I type "text with 1000 characters" into element "Question field" AV
    And I type "q" into element "Option 1* field" AV
    And I click on element "Option 1* checkbox" AV
    And I type "w" into element "Option 2* field" AV
    And I click on element "Option 2* checkbox" AV
    And I click on element "Save button" AV
    Then I wait for element "List of Quizzes title" to be present AV
    Then element "MCQT3 quiz" should be present AV

  @test4
  Scenario: Question field can NOT contain more than 1000 characters.
    Then I wait for element "Title Of The Quiz field" to be present AV
    And I type "MCQT4" into element "Title Of The Quiz field" AV
    And I click on element "Add Question button" AV
    And I click on element "Multiple-Choice radio-button" AV
    And I type "text with 1001 characters" into element "Question field" AV
    And I type "Question option 1" into element "Option 1* field" AV
    And I click on element "Option 1* checkbox" AV
    And I type "Question option 2" into element "Option 2* field" AV
    And I click on element "Option 2* checkbox" AV
    And I click on element "Save button" AV
    Then I wait for element "Quiz is not completed popup" to be present AV
    Then element "Quiz is not completed popup" should be present AV
    Then element "Allowed only 1000 characters error" should be present AV

  @test5
  Scenario: Question field can contain alphabetical, numerical and special characters.
    Then I wait for element "Title Of The Quiz field" to be present AV
    And I type "MCQT5" into element "Title Of The Quiz field" AV
    And I click on element "Add Question button" AV
    And I click on element "Multiple-Choice radio-button" AV
    And I type "alphanumerical+characters dataset" into element "Question field" AV
    And I type "q" into element "Option 1* field" AV
    And I click on element "Option 1* checkbox" AV
    And I type "w" into element "Option 2* field" AV
    And I click on element "Option 2* checkbox" AV
    And I click on element "Save button" AV
    Then I wait for element "List of Quizzes title" to be present AV
    Then element "MCQT5 quiz" should be present AV

  @test6
  Scenario: Question field can contain alphabetical, numerical and special characters - (") character.
    Then I wait for element "Title Of The Quiz field" to be present AV
    And I type "MCQT6" into element "Title Of The Quiz field" AV
    And I click on element "Add Question button" AV
    And I click on element "Multiple-Choice radio-button" AV
    And I type '"' into element "Question field" AV
    And I type "q" into element "Option 1* field" AV
    And I click on element "Option 1* checkbox" AV
    And I type "w" into element "Option 2* field" AV
    And I click on element "Option 2* checkbox" AV
    And I click on element "Save button" AV
    Then I wait for element "List of Quizzes title" to be present AV
    Then element "MCQT6 quiz" should be present AV