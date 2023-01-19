package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.ZyuzikovControls;

import static support.TestContext.getDriver;

public class ZyuzikovStepdefs {
    @And("I create {int} question")
    public void iCreateQuestion(int numberOfQuestions) throws InterruptedException {
        getDriver().findElement(By.xpath(ZyuzikovControls.createFirstQuestion())).click();
        for (int i=1;i<=numberOfQuestions;i++) {
            new WebDriverWait(getDriver(), 10, 200)
                    .until(ExpectedConditions.presenceOfElementLocated(By.xpath(ZyuzikovControls.questionCardElement(i))));
            Thread.sleep(200);
            getDriver().findElement(By.xpath(ZyuzikovControls.textualForQuestion(i))).click();
            getDriver().findElement(By.xpath(ZyuzikovControls.textAreaForQuestion(i))).sendKeys("Textual " + i);
            if (i!=numberOfQuestions) {
                getDriver().findElement(By.xpath(ZyuzikovControls.addQuestionButton())).click();
            }
        }
    }
}
