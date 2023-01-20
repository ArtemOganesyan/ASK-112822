package definitions;

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
        vars.put("Textual radio-button", "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[1]");
        vars.put("Show-Stopper checkbox", "//span[contains(text(),'Show-Stopper')]//ancestor::mat-checkbox");
        vars.put("Option 1* radio-button", "//textarea[@placeholder='Option 1*']/../../../../..//mat-radio-button");
        vars.put("Question 2 - Single-choice radio-button", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-radio-button[2]");
        vars.put("Question 2 - Textual radio-button", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-radio-button[1]");
        vars.put("Question 2 - Question field", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']");
        vars.put("Question 2 - Option 2* field", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']");
        vars.put("Question 2 - Option 1* field", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 1*']");
        vars.put("Question 2 - Option 1* radio-button", "//mat-panel-title[contains(text(),'Q2')]//ancestor::mat-expansion-panel//textarea[@placeholder='Option 1*']//ancestor::mat-radio-group//mat-radio-button");
        vars.put("Question 2 - Option 2* radio-button", "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']/../../../../..//mat-radio-button");
        vars.put("Question 2 - points slider", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-slider");
        vars.put("textual answer field","//textarea[@formcontrolname='textAnswer']");
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
        vars.put("SAG2 quiz", "//mat-option/span[contains(text(), 'SAG2')]/..//self::mat-option");
        vars.put("SAG3 quiz", "//mat-option/span[contains(text(), 'SAG3')]/..//self::mat-option");
        vars.put("SAG4 quiz", "//mat-option/span[contains(text(), 'SAG4')]/..//self::mat-option");
        vars.put("SAG5 quiz", "//mat-option/span[contains(text(), 'SAG5')]/..//self::mat-option");
        vars.put("SAG6 quiz", "//mat-option/span[contains(text(), 'SAG6')]/..//self::mat-option");
        vars.put("SAG7 quiz", "//mat-option/span[contains(text(), 'SAG7')]/..//self::mat-option");
        vars.put("SAG8 quiz", "//mat-option/span[contains(text(), 'SAG8')]/..//self::mat-option");
        vars.put("element of quizzes list", "//mat-option/span[contains(text(), 'SAG')]");
        vars.put("SAG*", "//mat-panel-title[contains(text(),'SAG')]");
        vars.put("student checkbox", "//mat-pseudo-checkbox");
        vars.put("Give Assignment button", "//span[text()='Give Assignment']//ancestor::button");
        vars.put("Log Out button", "//h5[contains(text(),'Log Out')]//ancestor::mat-list-item");
        vars.put("Log Out button in modal", "//ac-modal-confirmation//span[contains(text(),'Log Out')]//ancestor::button");
        vars.put("My Assignments link", "//h5[contains(text(),'My Assignments')]//ancestor::a");
        vars.put("My Assignments list title", "//h4[contains(text(),'My Assignments')]");
        vars.put("SAG1 Go To Assessment button", "//td[contains(text(),'SAG1')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG2 Go To Assessment button", "//td[contains(text(),'SAG2')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG3 Go To Assessment button", "//td[contains(text(),'SAG3')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG4 Go To Assessment button", "//td[contains(text(),'SAG4')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG5 Go To Assessment button", "//td[contains(text(),'SAG5')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG6 Go To Assessment button", "//td[contains(text(),'SAG6')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG7 Go To Assessment button", "//td[contains(text(),'SAG7')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("SAG8 Go To Assessment button", "//td[contains(text(),'SAG8')][1]//ancestor::tr//span[contains(text(),'Go To Assessment')]//ancestor::button");
        vars.put("quiz SAG1 title", "//h4[contains(text(),'SAG1')]");
        vars.put("quiz SAG2 title", "//h4[contains(text(),'SAG2')]");
        vars.put("quiz SAG3 title", "//h4[contains(text(),'SAG3')]");
        vars.put("quiz SAG4 title", "//h4[contains(text(),'SAG4')]");
        vars.put("quiz SAG5 title", "//h4[contains(text(),'SAG5')]");
        vars.put("quiz SAG6 title", "//h4[contains(text(),'SAG6')]");
        vars.put("quiz SAG7 title", "//h4[contains(text(),'SAG7')]");
        vars.put("quiz SAG8 title", "//h4[contains(text(),'SAG8')]");
        vars.put("Question 1/1 option a", "//h5[text()='Question 1 / 1']//ancestor::mat-card//div[contains(text(), 'a')]//ancestor::label//input");
        vars.put("Question 1/1 option s", "//h5[text()='Question 1 / 1']//ancestor::mat-card//div[contains(text(), 's')]//ancestor::label//input");
        vars.put("Question 1/2 option a", "//h5[text()='Question 1 / 2']//ancestor::mat-card//div[contains(text(), 'a')]//ancestor::label//input");
        vars.put("Question 1/2 option s", "//h5[text()='Question 1 / 2']//ancestor::mat-card//div[contains(text(), 's')]//ancestor::label//input");
        vars.put("Question 2/2 option a", "//h5[text()='Question 2 / 2']//ancestor::mat-card//div[contains(text(), 'a')]//ancestor::label//input");
        vars.put("Question 2/2 option s", "//h5[text()='Question 2 / 2']//ancestor::mat-card//div[contains(text(), 's')]//ancestor::label//input");
        vars.put("Question 2/2 textual answer field","//h5[text()='Question 2 / 2']//ancestor::mat-card//textarea[@formcontrolname='textAnswer']");
        vars.put("Submit My Answers", "//span[text()='Submit My Answers']//ancestor::button");
        vars.put("modal Success! title", "//ac-modal-notification //h1[text()='Success!']");
        vars.put("modal Ok button", "//ac-modal-notification//span[contains(text(),'Ok')]//ancestor::button");
        vars.put("My Grades link", "//h5[contains(text(),'My Grades')]//ancestor::a");
        vars.put("My Grades list title", "//h4[contains(text(),'My Grades')]");
        vars.put("SAG1 Status", "//table//td[text()='SAG1']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG2 Status", "//table//td[text()='SAG2']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG3 Status", "//table//td[text()='SAG3']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG4 Status", "//table//td[text()='SAG4']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG5 Status", "//table//td[text()='SAG5']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG6 Status", "//table//td[text()='SAG6']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG7 Status", "//table//td[text()='SAG7']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG8 Status", "//table//td[text()='SAG8']//ancestor::tr//td[@class='result']//span");
        vars.put("SAG1 Graded at", "//table//td[text()='SAG1']//ancestor::tr//td[2]");
        vars.put("SAG2 Graded at", "//table//td[text()='SAG2']//ancestor::tr//td[2]");
        vars.put("SAG3 Graded at", "//table//td[text()='SAG3']//ancestor::tr//td[2]");
        vars.put("SAG4 Graded at", "//table//td[text()='SAG4']//ancestor::tr//td[2]");
        vars.put("SAG5 Graded at", "//table//td[text()='SAG5']//ancestor::tr//td[2]");
        vars.put("SAG6 Graded at", "//table//td[text()='SAG6']//ancestor::tr//td[2]");
        vars.put("SAG7 Graded at", "//table//td[text()='SAG7']//ancestor::tr//td[2]");
        vars.put("SAG8 Graded at", "//table//td[text()='SAG8']//ancestor::tr//td[2]");
        vars.put("SAG8 Details button", "//table//td[text()='SAG8']//ancestor::tr/td/a/button");
        vars.put("test result block", "//div[@class='result']/div[1]");
        vars.put("test result block underline", "//div[@class='result']/div[2]");
//      vars.keySet().stream().map(key -> key + " : " + vars.get(key)).forEach(System.out::println);
    }
}