package definitions;

import java.util.HashMap;
import java.util.Map;

public class VasilyevPageObject {
    static Map<String, String> vars;
    public static String getValue(String varName) {
        return vars.getOrDefault(varName, varName);
    }

    static {
        vars = new HashMap<>();
        //Variables declaration
        vars.put("ask-stage", "http://ask-stage.portnov.com");
        vars.put("teacher email", "mberdan@astyx.fun");
        vars.put("teacher password", "123qwe");
        vars.put("text with 1000 characters", "Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis, sem. Phasellus rhoncus. Aenean id metus id velit ullamcorper pulvinar. Vestibulum fermentum tortor id mi. Pellentesque ipsum. Nulla non arcu lacinia neque faucibus fringilla. Nulla non lectus sed nisl molestie malesuada. Proin in tellus sit amet nibh dignissim sagittis. Vivamus luctus egestas leo. Maecenas sollicitudin. Nullam rhoncus aliquam metus. Etiam egestas wisi a erat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam erat volutpat. Nunc auctor. Mauris pretium quam et urna. Fusce nibh. Duis risus. Curabitur sagittis hendrerit ante. Aliquam erat volutpat. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Duis condimentum augue id magna semper rutrum. Nullam justo enim, consectetuer.");
        vars.put("text with 1001 characters", "Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis, sem. Phasellus rhoncus. Aenean id metus id velit ullamcorper pulvinar. Vestibulum fermentum tortor id mi. Pellentesque ipsum. Nulla non arcu lacinia neque faucibus fringilla. Nulla non lectus sed nisl molestie malesuada. Proin in tellus sit amet nibh dignissim sagittis. Vivamus luctus egestas leo. Maecenas sollicitudin. Nullam rhoncus aliquam metus. Etiam egestas wisi a erat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam erat volutpat. Nunc auctor. Mauris pretium quam et urna. Fusce nibh. Duis risus. Curabitur sagittis hendrerit ante. Aliquam erat volutpat. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Duis condimentum augue id magna semper rutrum. Nullam justo enim, consectetuer.1");
        vars.put("alphanumerical+characters dataset", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 !#$%&'()*+,-./:;<=>?@[]^_`{|}~");
        //Controls declaration
        vars.put("Email field", "//input[@formcontrolname='email']");
        vars.put("Password field", "//input[@formcontrolname='password']");
        vars.put("Submit button", "//button[@type='submit']");
        vars.put("James Sallivan teacher name", "//h3[contains(text(),'James Sallivan')]");
        vars.put("Quizzes link", "//a[@href='/#/quizzes']");
        vars.put("List of Quizzes title", "//h4[contains(text(),'List of Quizzes')]");
        vars.put("Create New Quiz link", "//button/span[contains(text(), 'Create New Quiz')]");
        vars.put("Title Of The Quiz field", "//input[@formcontrolname='name']");
        vars.put("Add Question button", "//mat-icon[contains(text(),'add_circle')]/../../..//button");
        vars.put("Multiple-Choice radio-button", "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]");
        vars.put("Question field", "//textarea[@formcontrolname='question']");
        vars.put("Option 1* field", "//textarea[@placeholder='Option 1*']");
        vars.put("Option 2* field", "//textarea[@placeholder='Option 2*']");
        vars.put("Option 1* checkbox", "//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox");
        vars.put("Option 2* checkbox", "//textarea[@placeholder='Option 2*']/../../../../..//mat-checkbox");
        vars.put("Save button", "//button/span[contains(text(), 'Save')]");
        vars.put("Quiz is not completed popup", "//simple-snack-bar[contains(text(), 'Quiz is not completed. Check highlighted with')]");
        vars.put("This field is required error", "//mat-error[contains(text(), 'This field is required')]");
        vars.put("Allowed only 1000 characters error", "//mat-error[contains(text(), 'Allowed only 1000 characters in this field')]");
        vars.put("MCQT2 quiz", "//mat-panel-title[contains(text(), 'MCQT2')]");
        vars.put("MCQT3 quiz", "//mat-panel-title[contains(text(), 'MCQT3')]");
        vars.put("MCQT5 quiz", "//mat-panel-title[contains(text(), 'MCQT5')]");
        vars.put("MCQT6 quiz", "//mat-panel-title[contains(text(), 'MCQT6')]");
        //Submissions - Automatically Graded
        vars.put("Single-Choice radio-button", "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[2]/label");
        vars.put("Option 1* radio-button", "//textarea[@placeholder='Option 1*']/../../../../..//mat-radio-button");
        vars.put("Question 2 - Single-choice radio-button", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-radio-button[2]/label");
        vars.put("Q2 - points slider", "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-slider");
    }
}
