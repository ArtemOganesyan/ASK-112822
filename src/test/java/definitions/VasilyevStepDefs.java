package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.Helper;

import java.io.File;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class VasilyevStepDefs {
    private static String accessPath;
    private final VasilyevPageObject pageObject = new VasilyevPageObject();

    @Then("I wait for element {string} to be visible AV")
    public void iWaitForElementWithXpathToBeVisible(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath(pageObject.getValue(controlName))));
    }

    @Then("I wait for element {string} to be visible and have text {string} AV")
    public void iWaitForElementWithXpathToBeVisibleAndHaveText(String controlName, String varName) {
        iWaitForElementWithXpathToBeVisible(controlName);
        String actualText = getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getText();
        assertThat(actualText).isEqualTo(pageObject.getValue(varName));
    }

    @Given("I retrieve activation code for user with {string} from the application DB AV")
    public void iRetrieveActivationCodeFromTheDB(String email) throws SQLException {
        String accessToken = Helper.getAccessToken(email);
        accessPath = accessToken.replace(";", "/");
    }

    @Then("I open registration confirmation page AV")
    public void iOpenRegistrationConfirmationPage() {
        getDriver().get("http://ask-stage.portnov.com//#/activate/" + accessPath);
    }

    //PredefinedStepDefs

    @Given("I open url {string} AV")
    public void iOpenUrl(String varName) {
        getDriver().get(pageObject.getValue(varName));
    }

    @Then("I resize window to {int} and {int} AV")
    public void iResizeWindowToAnd(int width, int height) {
        Dimension dimension = new Dimension(width, height);
        getDriver().manage().window().setSize(dimension);
    }

    @Then("I wait for {int} sec AV")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000L);
    }

    @When("I maximize window AV")
    public void iMaximizeWindow() {
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        Dimension maxWindowSize = new Dimension((int) screenSize.getWidth(), (int) screenSize.getHeight());
        getDriver().manage().window().setPosition(new Point(0, 0));
        getDriver().manage().window().setSize(maxWindowSize);
    }

    @Then("element {string} should be present AV")
    public void elementWithXpathShouldBePresent(String controlName) {
        assertThat(getDriver().findElements(By.xpath(pageObject.getValue(controlName)))).hasSize(1);
    }

    @Then("element {string} should not be present AV")
    public void elementWithXpathShouldNotBePresent(String controlName) {
        assertThat(getDriver().findElements(By.xpath(pageObject.getValue(controlName)))).hasSize(0);
    }

    @Then("I wait for element {string} to be present AV")
    public void iWaitForElementWithXpathToBePresent(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(pageObject.getValue(controlName))));
    }

    @Then("I wait for element {string} to not be present AV")
    public void iWaitForElementWithXpathToNotBePresent(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.not(ExpectedConditions.presenceOfElementLocated(By.xpath(pageObject.getValue(controlName)))));
    }

    @Then("element {string} should be displayed AV")
    public void elementWithXpathShouldBeDisplayed(String controlName) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).isDisplayed()).isTrue();
    }

    @Then("element {string} should not be displayed AV")
    public void elementWithXpathShouldNotBeDisplayed(String controlName) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).isDisplayed()).isFalse();
    }

    @Then("element {string} should be enabled")
    public void elementWithXpathShouldBeEnabled(String controlName) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).isEnabled()).isTrue();
    }

    @Then("element {string} should be disabled AV")
    public void elementWithXpathShouldBeDisabled(String controlName) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).isEnabled()).isFalse();
    }

    @Then("element {string} should be selected AV")
    public void elementWithXpathShouldBeSelected(String controlName) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).isSelected()).isTrue();
    }

    @Then("element {string} should not be selected AV")
    public void elementWithXpathShouldNotBeSelected(String controlName) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).isSelected()).isFalse();
    }

    @When("I type {string} into element {string} AV")
    public void iTypeIntoElementWithXpath(String varName, String controlName) {
        getDriver().findElement(By.xpath(pageObject.getValue(controlName))).sendKeys(pageObject.getValue(varName));
    }

    @Then("I click on element {string} AV")
    public void iClickOnElementWithXpath(String controlName) {
        getDriver().findElement(By.xpath(pageObject.getValue(controlName))).click();
    }

    @Then("I click on element using JavaScript {string} AV")
    public void iClickOnElementUsingJavaScriptWithXpath(String controlName) {
        WebElement element = getDriver().findElement(By.xpath(pageObject.getValue(controlName)));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }

    @Then("I take screenshot AV")
    public void iTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/screenshot " + new Date() + ".png"));
    }

    @Then("element {string} should have text as {string} AV")
    public void elementWithXpathShouldHaveTextAs(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getText();
        assertThat(actualText).isEqualTo(pageObject.getValue(varName));
    }

    @Then("element {string} should not have text as {string} AV")
    public void elementWithXpathShouldNotHaveTextAs(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getText();
        assertThat(actualText).isNotEqualTo(pageObject.getValue(varName));
    }

    @Then("element {string} should contain text {string} AV")
    public void elementWithXpathShouldContainText(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getText();
        assertThat(actualText).containsIgnoringCase(pageObject.getValue(varName));
    }

    @Then("element {string} should not contain text {string} AV")
    public void elementWithXpathShouldNotContainText(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getText();
        assertThat(actualText).doesNotContain(pageObject.getValue(varName));
    }

    @Then("element {string} should have attribute {string} as {string} AV")
    public void elementWithXpathShouldHaveAttributeAs(String controlName, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getAttribute(attribute)).isEqualTo(attributeValue);
    }

    @Then("element {string} should not have attribute {string} as {string} AV")
    public void elementWithXpathShouldNotHaveAttributeAs(String controlName, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(pageObject.getValue(controlName))).getAttribute(attribute)).isNotEqualTo(attributeValue);
    }

    @Then("I switch to iframe {string} AV")
    public void iSwitchToIframeWithXpath(String controlName) {
        getDriver().switchTo().frame(getDriver().findElement(By.xpath(pageObject.getValue(controlName))));
    }

    @Then("I switch to default content AV")
    public void iSwitchToDefaultContent() {
        getDriver().switchTo().defaultContent();
    }

    @Then("I switch to new window AV")
    public void iSwitchToNewWindow() {
        Iterator<String> iterator = getDriver().getWindowHandles().iterator();
        String newWindow = iterator.next();
        while (iterator.hasNext()) {
            newWindow = iterator.next();
        }
        getDriver().switchTo().window(newWindow);
    }

    @Then("I switch to first window AV")
    public void iSwitchToFirstWindow() {
        getDriver().switchTo().window(getDriver().getWindowHandles().iterator().next());
    }

    @Then("I accept alert AV")
    public void iAcceptAlert() {
        getDriver().switchTo().alert().accept();
    }

    @Then("I dismiss alert AV")
    public void iDismissAlert() {
        getDriver().switchTo().alert().dismiss();
    }

    @When("I clear element {string} AV")
    public void iClearElementWithXpath(String varName) {
        getDriver().findElement(By.xpath(pageObject.getValue(varName))).clear();
    }

    @Then("I should see page title as {string} AV")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(pageObject.getValue(title));
    }

    @Then("I should see page title as not {string} AV")
    public void iShouldNotSeePageTitleAsNot(String title) {
        assertThat(getDriver().getTitle()).isNotEqualTo(pageObject.getValue(title));
    }

    @Then("I should see page title contains {string} AV")
    public void iShouldSeePageTitleContains(String title) {
        assertThat(getDriver().getTitle()).contains(pageObject.getValue(title));
    }

    @Then("I should see page title does not contain {string} AV")
    public void iShouldSeePageTitleDoesNotContain(String title) {
        assertThat(getDriver().getTitle()).doesNotContain(pageObject.getValue(title));
    }

    @Then("I scroll to the element {string} with offset {int} AV")
    public void iScrollToTheElementWithXpathWithOffset(String controlName, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(pageObject.getValue(controlName)));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @When("I mouse over element {string} AV")
    public void iMouseOverElementWithXpath(String controlName) {
        new Actions(getDriver()).moveToElement(getDriver().findElement(By.xpath(pageObject.getValue(controlName)))).perform();
    }

    @And("I verify user role is {string} AV")
    public void iVerifyUserRoleIs(String varName) {
        String xpath = "//header/div/p";
        String actualText = getDriver().findElement(By.xpath(pageObject.getValue(xpath))).getText();
        assertThat(actualText).isEqualTo(pageObject.getValue(varName));
    }

    @Then("I move slider {string} for {int} clicks to the {string} AV")
    public void iMoveSliderForClicksToThe(String controlName, int steps, String direction) {
        WebElement slider = getDriver().findElement(By.xpath(pageObject.getValue(controlName)));
        Keys dirKey = (direction.equals("left")) ? Keys.ARROW_LEFT : Keys.ARROW_RIGHT;
        for (int i = 0; i < steps; i++) {
            slider.sendKeys(dirKey);
        }
    }

    //Submissions - Automatically Graded test set steps definitions
    @Then("I log in as a teacher AV")
    public void iLogInAsATeacher() {
        getDriver().findElement(By.xpath(pageObject.getValue("Email field"))).sendKeys(pageObject.getValue("teacher email"));
        getDriver().findElement(By.xpath(pageObject.getValue("Password field"))).sendKeys(pageObject.getValue("teacher password"));
        getDriver().findElement(By.xpath(pageObject.getValue("Submit button"))).click();
    }

    @Then("I log in as a student AV")
    public void iLogInAsAStudentAV() {
        getDriver().findElement(By.xpath(pageObject.getValue("Email field"))).sendKeys(pageObject.getValue("student email"));
        getDriver().findElement(By.xpath(pageObject.getValue("Password field"))).sendKeys(pageObject.getValue("student password"));
        getDriver().findElement(By.xpath(pageObject.getValue("Submit button"))).click();
    }

    @Then("I wait for element {string} to be clickable AV")
    public void iWaitForElementToBeClickable(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.elementToBeClickable(By.xpath(pageObject.getValue(controlName))));
    }

    @Then("I delete all quizzes related to this test-set AV")
    public void iDeleteAllQuizzesRelatedToThisTestSet() throws InterruptedException {
        String quizPanelXpath = "//mat-panel-title[contains(text(),'SAG')][1]//ancestor::mat-expansion-panel";
        String delBtnXpath = "//mat-panel-title[contains(text(),'SAG')][1]//ancestor::mat-expansion-panel//button/span[contains(text(), 'Delete')]//ancestor::button";
        String modalDelBtnXpath = "//ac-modal-confirmation//button/span[text()='Delete']//ancestor::button";
        WebDriverWait wdWait = new WebDriverWait(getDriver(), 5, 200);

        while (getAmountOfQuizzes() > 0) {
            wdWait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(quizPanelXpath)));
            getDriver().findElement(By.xpath(quizPanelXpath)).click();
            wdWait.until(ExpectedConditions.elementToBeClickable(By.xpath(delBtnXpath)));
            getDriver().findElement(By.xpath(delBtnXpath)).click();
            wdWait.until(ExpectedConditions.elementToBeClickable(By.xpath(modalDelBtnXpath)));
            getDriver().findElement(By.xpath(modalDelBtnXpath)).click();
        }
    }

    private int getAmountOfQuizzes() {
        WebDriverWait wdWait = new WebDriverWait(getDriver(), 5, 200);
        wdWait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(pageObject.getValue("List of Quizzes title"))));
        return getDriver().findElements(By.xpath(pageObject.getValue("SAG*"))).size();
    }

    @Then("I log out AV")
    public void iLogOutAV() throws InterruptedException {
        getDriver().findElement(By.xpath(pageObject.getValue("Log Out button"))).click();
        Thread.sleep(1000L);
        getDriver().findElement(By.xpath(pageObject.getValue("Log Out button in modal"))).click();
        Thread.sleep(3 * 1000L);
    }

    @Then("I center to the element {string} and click AV")
    public void iScrollToTheElementAV(String controlName) {
        WebElement element = getDriver().findElement(By.xpath(pageObject.getValue(controlName)));
        Actions actions = new Actions(getDriver());
        actions.moveToElement(element).click().perform();
    }
}

