package definitions;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

public class VasilyevPageObject {
    private final Map<String, String> vars;

    VasilyevPageObject() {
        vars = new TreeMap<>();
        initVars();
    }

    public String getValue(String varName) {
        return vars.getOrDefault(varName, varName);
    }

    private void initVars() {
        //Variables declaration
        vars.put("ask-stage", "http://ask-stage.portnov.com");
        vars.put("teacher email", "mberdan@astyx.fun");
        vars.put("teacher password", "123qwe");
        vars.put("student email", "browniegator@burung.store");
        vars.put("student password", "123qwe");
        vars.put("text with 1000 characters", "Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis, sem. Phasellus rhoncus. Aenean id metus id velit ullamcorper pulvinar. Vestibulum fermentum tortor id mi. Pellentesque ipsum. Nulla non arcu lacinia neque faucibus fringilla. Nulla non lectus sed nisl molestie malesuada. Proin in tellus sit amet nibh dignissim sagittis. Vivamus luctus egestas leo. Maecenas sollicitudin. Nullam rhoncus aliquam metus. Etiam egestas wisi a erat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam erat volutpat. Nunc auctor. Mauris pretium quam et urna. Fusce nibh. Duis risus. Curabitur sagittis hendrerit ante. Aliquam erat volutpat. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Duis condimentum augue id magna semper rutrum. Nullam justo enim, consectetuer.");
        vars.put("text with 1001 characters", "Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis, sem. Phasellus rhoncus. Aenean id metus id velit ullamcorper pulvinar. Vestibulum fermentum tortor id mi. Pellentesque ipsum. Nulla non arcu lacinia neque faucibus fringilla. Nulla non lectus sed nisl molestie malesuada. Proin in tellus sit amet nibh dignissim sagittis. Vivamus luctus egestas leo. Maecenas sollicitudin. Nullam rhoncus aliquam metus. Etiam egestas wisi a erat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam erat volutpat. Nunc auctor. Mauris pretium quam et urna. Fusce nibh. Duis risus. Curabitur sagittis hendrerit ante. Aliquam erat volutpat. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Duis condimentum augue id magna semper rutrum. Nullam justo enim, consectetuer.1");
        vars.put("alphanumerical+characters dataset", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 !#$%&'()*+,-./:;<=>?@[]^_`{|}~");
        //Controls declaration
        vars.put("Email field", "//input[@formcontrolname='email']");
        vars.put("Password field", "//input[@formcontrolname='password']");
        vars.put("Submit button", "//button[@type='submit']");
        vars.put("James Sullivan teacher name", "//h3[contains(text(),'James Sullivan')]");
        vars.put("Lee Burridge student name", "//h3[contains(text(),'Lee Burridge')]");
        vars.put("Quizzes link", "//a[@href='/#/quizzes']");
        vars.put("List of Quizzes title", "//h4[contains(text(),'List of Quizzes')]");
        vars.put("Create New Quiz link", "//button/span[contains(text(), 'Create New Quiz')]");
        vars.put("Title Of The Quiz field", "//input[@formcontrolname='name']");
        vars.put("Add Question button", "//mat-icon[contains(text(),'add_circle')]//ancestor::button");
        vars.put("Multiple-Choice radio-button", "//mat-panel-title[contains(text(), 'Q1')]//ancestor::mat-expansion-panel//mat-radio-button[3]");
        vars.put("Question field", "//textarea[@formcontrolname='question']");
        vars.put("Option 1* field", "//textarea[@placeholder='Option 1*']");
        vars.put("Option 2* field", "//textarea[@placeholder='Option 2*']");
        vars.put("Option 1* checkbox", "//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox");
        vars.put("Option 2* checkbox", "//textarea[@placeholder='Option 2*']/../../../../..//mat-checkbox");
        vars.put("Save button", "//span[contains(text(), 'Save')]/..//self::button");
        vars.put("Quiz is not completed popup", "//simple-snack-bar[contains(text(), 'Quiz is not completed. Check highlighted with')]");
        vars.put("This field is required error", "//mat-error[contains(text(), 'This field is required')]");
        vars.put("Allowed only 1000 characters error", "//mat-error[contains(text(), 'Allowed only 1000 characters in this field')]");
        vars.put("MCQT2 quiz", "//mat-panel-title[contains(text(), 'MCQT2')]");
        vars.put("MCQT3 quiz", "//mat-panel-title[contains(text(), 'MCQT3')]");
        vars.put("MCQT5 quiz", "//mat-panel-title[contains(text(), 'MCQT5')]");
        vars.put("MCQT6 quiz", "//mat-panel-title[contains(text(), 'MCQT6')]");
        //Submissions - Automatically Graded
        vars.put("Single-Choice radio-button", "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[2]");
        vars.put("Option 1* radio-button", "//textarea[@placeholder='Option 1*']/../../../../..//mat-radio-button");
        vars.put("Question 2 - Single-choice radio-button", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-radio-button[2]");
        vars.put("Question 2 - Question field", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']");
        vars.put("Question 2 - Option 2* field", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']");
        vars.put("Question 2 - Option 1* field", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 1*']");
        vars.put("Question 2 - Option 1* radio-button", "//mat-panel-title[contains(text(),'Q2')]//ancestor::mat-expansion-panel//textarea[@placeholder='Option 1*']//ancestor::mat-radio-group//mat-radio-button");
        vars.put("Question 2 - Option 2* radio-button", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']/../../../../..//mat-radio-button");
        vars.put("Question 2 - points slider", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-slider");
        vars.put("quiz Passing Rate slider", "//h3[contains(text(),'Passing Rate')]/..//mat-slider");
        vars.put("Assignments link", "//a[@href='/#/assignments']");
        vars.put("List of Assignments title", "//h4[contains(text(),'List of Assignments')]");
        vars.put("Give Assignment title", "//h4[contains(text(),'Give Assignment')]");
        vars.put("Create New Assignment button", "//a[@href='/#/assign-quiz']");
        vars.put("Group Filter", "//mat-select[@formcontrolname='groupFilter']");
        vars.put("Select Quiz To Assign", "//mat-select[@formcontrolname='quizId']");
        vars.put("aab group", "//mat-option/span[text()='aab']/..//self::mat-option");
        vars.put("element of group list", "//mat-option/span[text()='aab']");
        vars.put("SAG1 quiz", "//mat-option/span[contains(text(), 'SAG1')]/..//self::mat-option");
        vars.put("element of quizzes list", "//mat-option/span[contains(text(), 'SAG1')]");
        vars.put("SAG*", "//mat-panel-title[contains(text(),'SAG')]");
        vars.put("student checkbox", "//mat-pseudo-checkbox");
        vars.put("Give Assignment button", "//span[text()='Give Assignment']//ancestor::button");
        vars.put("Log Out button", "//h5[contains(text(),'Log Out')]//ancestor::mat-list-item");
        vars.put("Log Out button in modal", "//ac-modal-confirmation//span[contains(text(),'Log Out')]//ancestor::button");
        vars.put("My Assignments link", "//h5[contains(text(),'My Assignments')]//ancestor::a");
        vars.put("My Assignments list title", "//h4[contains(text(),'My Assignments')]");
        vars.put("SAG1 Go To Assessment button", "//td[contains(text(),'SAG1')]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("quiz SAG1 title", "//h4[contains(text(),'SAG1')]");

        vars.put("Question 1/2 option a", "//h5[text()='Question 1 / 2']//ancestor::mat-card//div[contains(text(), 'a')]//ancestor::label//input");
        vars.put("Question 2/2 option s", "//h5[text()='Question 2 / 2']//ancestor::mat-card//div[contains(text(), 's')]//ancestor::label//input");
        vars.put("Submit My Answers", "//span[text()='Submit My Answers']//ancestor::button");
        vars.put("modal Ok button", "//span[text()='Submit My Answers']//ancestor::button");
        vars.put("My Grades link", "//h5[contains(text(),'My Grades')]//ancestor::a");
        vars.put("My grades list title", "//h4[contains(text(),'My Grades')]");

        vars.put("Status value", "//table//td[text()='SAG1']//ancestor::table//td[@class='result']//span");
        vars.put("Graded at value", "//table//td[text()='SAG1']//ancestor::table//td[2]");
//        vars.keySet().stream().map(key -> key + " : " + vars.get(key)).forEach(System.out::println);
    }
}