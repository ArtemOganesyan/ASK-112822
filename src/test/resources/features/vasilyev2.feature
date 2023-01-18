@Submissions-AutomaticallyGraded.feature
Feature: Submissions - Automatically Graded

  Background:
    Given I open url "ask-stage" AV
    Then I log in as a teacher AV
    Then I wait for element "James Sullivan teacher name" to be present AV
    Then I click on element "Quizzes link" AV
    Then I wait for element "List of Quizzes title" to be present AV


  @test1
  Scenario: If user grabs enough score in Quiz without textual question, auto-grade system grades: Passed
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG1" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Single-Choice radio-button" to be present AV
    Then I click on element "Single-Choice radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
    Then I type "a" into element "Option 1* field" AV
    Then I click on element "Option 1* radio-button" AV
    Then I type "s" into element "Option 2* field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Question 2 - Single-choice radio-button" to be visible AV
    Then I click on element "Question 2 - Single-choice radio-button" AV
    Then I wait for element "Question 2 - Question field" to be present AV
#    Then I click on element "Question 2 - Question field" AV
    Then I type "a" into element "Question 2 - Question field" AV
    Then I type "a" into element "Question 2 - Option 1* field" AV
    Then I click on element "Question 2 - Option 1* radio-button" AV
    Then I type "s" into element "Question 2 - Option 2* field" AV
    Then I move slider "Question 2 - points slider" for 3 clicks to the "left" AV
    Then I move slider "quiz Passing Rate slider" for 3 clicks to the "left" AV
    Then I click on element "Save button" AV
    Then I wait for element "List of Quizzes title" to be present AV
    Then I wait for element "Assignments link" to be clickable AV
    Then I click on element "Assignments link" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I click on element "Create New Assignment button" AV
    Then I wait for element "Give Assignment title" to be present AV
    Then I click on element "Group Filter" AV
    Then I wait for element "element of group list" to be present AV
    Then I click on element using JavaScript "aab group" AV
    Then I click on element "Select Quiz To Assign" AV
    Then I wait for element "element of quizzes list" to be present AV
    #choose quiz
    Then I click on element using JavaScript "SAG1 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I click on element "SAG1 Go To Assessment button" AV
    Then I wait for element "quiz SAG1 title" to be present AV
    Then I click on element "Question 1/2 option a" AV
    Then I click on element "Question 2/2 option s" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I click on element "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "Automatic" should have text as "Status value" AV
    Then element "PASSED" should have text as "Status value" AV
    Then I wait for 10 sec AV


  @test2
  Scenario: Clean up
    Then I delete all quizzes related to this test-set AV

#  @test3
#  Scenario:

#  @test4
#  Scenario:

#  @test5
#  Scenario:

#  @test6
#  Scenario:

#  @test7
#  Scenario:

#  @test8
#  Scenario: