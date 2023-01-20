@Submissions-AutomaticallyGraded.feature
Feature: Submissions - Automatically Graded

  Background:
    Given I open url "ask-stage" AV
    Then I resize window to 1920 and 1080 AV
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
    Then I wait for 1 sec AV
    Then I wait for element "Question 2 - Single-choice radio-button" to be visible AV
    Then I click on element "Question 2 - Single-choice radio-button" AV
    Then I wait for element "Question 2 - Question field" to be present AV
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
    Then I click on element using JavaScript "SAG1 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG1 Go To Assessment button" to be clickable AV
    Then I click on element "SAG1 Go To Assessment button" AV
    Then I wait for element "quiz SAG1 title" to be present AV
    Then I wait for element "Question 1/2 option a" to be clickable AV
    Then I click on element using JavaScript "Question 1/2 option a" AV
    Then I wait for element "Question 2/2 option s" to be clickable AV
    Then I click on element using JavaScript "Question 2/2 option s" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG1 Graded at" should have text as "Automatic" AV
    Then element "SAG1 Status" should have text as "PASSED" AV

  @test2
  Scenario: If user grabs not enough score in Quiz without textual question, auto-grade system grades: Failed
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG2" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Single-Choice radio-button" to be present AV
    Then I click on element "Single-Choice radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
    Then I type "a" into element "Option 1* field" AV
    Then I click on element "Option 1* radio-button" AV
    Then I type "s" into element "Option 2* field" AV
    Then I click on element "Add Question button" AV
    Then I wait for 1 sec AV
    Then I wait for element "Question 2 - Single-choice radio-button" to be visible AV
    Then I click on element "Question 2 - Single-choice radio-button" AV
    Then I wait for element "Question 2 - Question field" to be present AV
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
    Then I click on element using JavaScript "SAG2 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG2 Go To Assessment button" to be clickable AV
    Then I click on element "SAG2 Go To Assessment button" AV
    Then I wait for element "quiz SAG2 title" to be present AV
    Then I wait for element "Question 1/2 option s" to be clickable AV
    Then I click on element using JavaScript "Question 1/2 option s" AV
    Then I wait for element "Question 2/2 option a" to be clickable AV
    Then I click on element using JavaScript "Question 2/2 option a" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG2 Graded at" should have text as "Automatic" AV
    Then element "SAG2 Status" should have text as "FAILED" AV

  @test3
  Scenario: Auto-grade system analyzes Quiz automatically if there is no textual question: Passed
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG3" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Single-Choice radio-button" to be present AV
    Then I click on element "Single-Choice radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
    Then I type "a" into element "Option 1* field" AV
    Then I click on element "Option 1* radio-button" AV
    Then I type "s" into element "Option 2* field" AV
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
    Then I click on element using JavaScript "SAG3 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG3 Go To Assessment button" to be clickable AV
    Then I click on element "SAG3 Go To Assessment button" AV
    Then I wait for element "quiz SAG3 title" to be present AV
    Then I wait for element "Question 1/1 option a" to be clickable AV
    Then I click on element using JavaScript "Question 1/1 option a" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG3 Graded at" should have text as "Automatic" AV
    Then element "SAG3 Status" should have text as "PASSED" AV

  @test4
  Scenario: Auto-grade system analyzes Quiz automatically if there is no textual question: Failed
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG4" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Single-Choice radio-button" to be present AV
    Then I click on element "Single-Choice radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
    Then I type "a" into element "Option 1* field" AV
    Then I click on element "Option 1* radio-button" AV
    Then I type "s" into element "Option 2* field" AV
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
    Then I click on element using JavaScript "SAG4 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG4 Go To Assessment button" to be clickable AV
    Then I click on element "SAG4 Go To Assessment button" AV
    Then I wait for element "quiz SAG4 title" to be present AV
    Then I wait for element "Question 1/1 option s" to be clickable AV
    Then I click on element using JavaScript "Question 1/1 option s" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG4 Graded at" should have text as "Automatic" AV
    Then element "SAG4 Status" should have text as "FAILED" AV

  @test5
  Scenario: Auto-grade system grades automatically Quiz with textual question: Pending Review
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG5" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Textual radio-button" to be present AV
    Then I click on element "Textual radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
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
    Then I click on element using JavaScript "SAG5 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG5 Go To Assessment button" to be clickable AV
    Then I click on element "SAG5 Go To Assessment button" AV
    Then I wait for element "quiz SAG5 title" to be present AV
    Then I wait for element "textual answer field" to be clickable AV
    Then I type "a" into element "textual answer field" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG5 Graded at" should have text as "Automatic" AV
    Then element "SAG5 Status" should have text as "PENDING" AV

  @test6
  Scenario: If Quiz has textual question with Showstopper, auto-grade system grades: Pending Review
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG6" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Textual radio-button" to be present AV
    Then I click on element "Textual radio-button" AV
    Then I wait for element "Question field" to be present AV
    #TODO: Mistake was here: TimeoutException: Expected condition failed: waiting for element to be clickable
    Then I wait for element "Question field" to be clickable AV
    Then I type "a" into element "Question field" AV
    Then I click on element "Show-Stopper checkbox" AV
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
    Then I click on element using JavaScript "SAG6 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG6 Go To Assessment button" to be clickable AV
    Then I click on element "SAG6 Go To Assessment button" AV
    Then I wait for element "quiz SAG6 title" to be present AV
    Then I wait for element "textual answer field" to be clickable AV
    Then I type "a" into element "textual answer field" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG6 Graded at" should have text as "Automatic" AV
    Then element "SAG6 Status" should have text as "PENDING" AV

  @test7
  Scenario: If user failed on Single-Choice question with Showstopper, but Quiz contains textual question,
            auto-grade system grades: Failed
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG7" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Single-Choice radio-button" to be present AV
    Then I click on element "Single-Choice radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
    Then I type "a" into element "Option 1* field" AV
    Then I click on element "Option 1* radio-button" AV
    Then I type "s" into element "Option 2* field" AV
    Then I click on element "Show-Stopper checkbox" AV
    Then I click on element "Add Question button" AV
    Then I wait for 1 sec AV
    Then I wait for element "Question 2 - Textual radio-button" to be visible AV
    Then I click on element "Question 2 - Textual radio-button" AV
    Then I wait for element "Question 2 - Question field" to be present AV
    Then I type "d" into element "Question 2 - Question field" AV
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
    Then I click on element using JavaScript "SAG7 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG7 Go To Assessment button" to be clickable AV
    Then I click on element "SAG7 Go To Assessment button" AV
    Then I wait for element "quiz SAG7 title" to be present AV
    Then I wait for element "Question 1/2 option s" to be clickable AV
    Then I click on element using JavaScript "Question 1/2 option s" AV
    Then I wait for element "Question 2/2 textual answer field" to be clickable AV
    Then I type "d" into element "Question 2/2 textual answer field" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG7 Graded at" should have text as "Automatic" AV
    Then element "SAG7 Status" should have text as "FAILED" AV

  @test8
  Scenario: If user failed on Showstopper question auto-grade system grades: Failed
    Then I click on element "Create New Quiz link" AV
    Then I wait for element "Title Of The Quiz field" to be present AV
    Then I type "SAG8" into element "Title Of The Quiz field" AV
    Then I click on element "Add Question button" AV
    Then I wait for element "Single-Choice radio-button" to be present AV
    Then I click on element "Single-Choice radio-button" AV
    Then I wait for element "Question field" to be present AV
    Then I type "a" into element "Question field" AV
    Then I type "a" into element "Option 1* field" AV
    Then I click on element "Option 1* radio-button" AV
    Then I type "s" into element "Option 2* field" AV
    Then I click on element "Show-Stopper checkbox" AV
    Then I click on element "Add Question button" AV
    Then I wait for 1 sec AV
    Then I wait for element "Question 2 - Single-choice radio-button" to be visible AV
    Then I click on element "Question 2 - Single-choice radio-button" AV
    Then I wait for element "Question 2 - Question field" to be present AV
    Then I type "a" into element "Question 2 - Question field" AV
    Then I type "a" into element "Question 2 - Option 1* field" AV
    Then I click on element "Question 2 - Option 1* radio-button" AV
    Then I type "s" into element "Question 2 - Option 2* field" AV
    Then I move slider "quiz Passing Rate slider" for 25 clicks to the "left" AV
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
    Then I click on element using JavaScript "SAG8 quiz" AV
    Then I click on element "student checkbox" AV
    Then I wait for element "Give Assignment button" to be clickable AV
    Then I click on element "Give Assignment button" AV
    Then I wait for element "List of Assignments title" to be present AV
    Then I log out AV
    #student
    Then I log in as a student AV
    Then I wait for element "Lee Burridge student name" to be present AV
    Then I click on element "My Assignments link" AV
    Then I wait for element "My Assignments list title" to be present AV
    Then I wait for element "SAG8 Go To Assessment button" to be clickable AV
    Then I click on element "SAG8 Go To Assessment button" AV
    Then I wait for element "quiz SAG8 title" to be present AV
    Then I wait for element "Question 1/2 option s" to be clickable AV
    Then I click on element using JavaScript "Question 1/2 option s" AV
    Then I wait for element "Question 2/2 option a" to be clickable AV
    Then I click on element using JavaScript "Question 2/2 option a" AV
    Then I wait for element "Submit My Answers" to be clickable AV
    Then I click on element "Submit My Answers" AV
    Then I wait for element "modal Success! title" to be visible AV
    Then I wait for element "modal Ok button" to be clickable AV
    Then I center to the element "modal Ok button" and click AV
    Then I wait for 2 sec AV
    Then I click on element using JavaScript "My Grades link" AV
    Then I wait for element "My Grades list title" to be present AV
    Then element "SAG8 Graded at" should have text as "Automatic" AV
    Then element "SAG8 Status" should have text as "FAILED" AV
#    Then I wait for 2 sec AV
    Then I click on element using JavaScript "SAG8 Details button" AV
    Then element "test result block" should contain text "ASSESSMENT FAILED" AV
    Then element "test result block underline" should contain text "failed show-stopper" AV


  @test9
  Scenario: Clean up
    Then I delete all quizzes related to this test-set AV
    Then I click on element "Assignments link" AV
    Then I delete all assignments related to this test-set AV