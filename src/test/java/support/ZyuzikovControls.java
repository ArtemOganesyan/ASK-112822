package support;

public class ZyuzikovControls {
    public static String createFirstQuestion() {
        return "//div[@class='controls ng-star-inserted']/button";
    }
    public static String textualForQuestion(int questionNumber) {
        return "//mat-panel-title[contains(text(), 'Q"+questionNumber+"')]/../../..//mat-radio-button[1]";
    }
    public static String textAreaForQuestion(int questionNumber) {
        return "//mat-panel-title[contains(text(), 'Q"+questionNumber+"')]/../../..//textarea[@formcontrolname='question']";
    }
    public static String addQuestionButton() {
        return "//div/button[@type='button']/span/mat-icon/../..";
    }
    public static String questionCardElement(int questionNumber) {
        return "//mat-panel-title[contains(text(), 'Q"+questionNumber+"')]";
    }
    public static String createdAtText(int questionNumber) {
        return "//mat-panel-title[contains(text(), 'Q"+questionNumber+"')]/../../..//mat-radio-button[1]";
    }
}
