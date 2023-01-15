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
import java.util.Date;
import java.util.Iterator;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class VasilyevStepDefs {
    private static String accessToken;

    private String getVar(String varName) {
        return VasilyevPageObject.getValue(varName);
    }

    @Then("I wait for element {string} to be visible AV")
    public void iWaitForElementWithXpathToBeVisible(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.visibilityOfElementLocated(By.xpath(getVar(controlName))));
    }

    @Then("I wait for element {string} to be visible and have text {string} AV")
    public void iWaitForElementWithXpathToBeVisibleAndHaveText(String controlName, String varName) {
        iWaitForElementWithXpathToBeVisible(controlName);
        String actualText = getDriver().findElement(By.xpath(getVar(controlName))).getText();
        assertThat(actualText).isEqualTo(getVar(varName));
    }

    @Given("I retrieve activation code for user with {string} from the application DB AV")
    public void iRetrieveActivationCodeFromTheDB(String email) throws SQLException {
        accessToken = Helper.getAccessToken(email);
    }

    @Then("I open registration confirmation page AV")
    public void iOpenRegistrationConfirmationPage() {
        getDriver().get("http://ask-stage.portnov.com//#/activate/" + accessToken);
    }

    //PredefinedStepDefs

    @Given("I open url {string} AV")
    public void iOpenUrl(String varName) {
        getDriver().get(getVar(varName));
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
        assertThat(getDriver().findElements(By.xpath(getVar(controlName)))).hasSize(1);
    }

    @Then("element {string} should not be present AV")
    public void elementWithXpathShouldNotBePresent(String controlName) {
        assertThat(getDriver().findElements(By.xpath(getVar(controlName)))).hasSize(0);
    }

    @Then("I wait for element {string} to be present AV")
    public void iWaitForElementWithXpathToBePresent(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(getVar(controlName))));
    }

    @Then("I wait for element {string} to not be present AV")
    public void iWaitForElementWithXpathToNotBePresent(String controlName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.not(ExpectedConditions.presenceOfElementLocated(By.xpath(getVar(controlName)))));
    }

    //TODO
    @Then("element {string} should be displayed AV")
    public void elementWithXpathShouldBeDisplayed(String controlName) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).isDisplayed()).isTrue();
    }

    @Then("element {string} should not be displayed AV")
    public void elementWithXpathShouldNotBeDisplayed(String controlName) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).isDisplayed()).isFalse();
    }

    @Then("element {string} should be enabled")
    public void elementWithXpathShouldBeEnabled(String controlName) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).isEnabled()).isTrue();
    }

    @Then("element {string} should be disabled AV")
    public void elementWithXpathShouldBeDisabled(String controlName) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).isEnabled()).isFalse();
    }

    @Then("element {string} should be selected AV")
    public void elementWithXpathShouldBeSelected(String controlName) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).isSelected()).isTrue();
    }

    @Then("element {string} should not be selected AV")
    public void elementWithXpathShouldNotBeSelected(String controlName) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).isSelected()).isFalse();
    }

    @When("I type {string} into element {string} AV")
    public void iTypeIntoElementWithXpath(String varName, String controlName) {
        getDriver().findElement(By.xpath(getVar(controlName))).sendKeys(getVar(varName));
    }

    @Then("I click on element {string} AV")
    public void iClickOnElementWithXpath(String controlName) {
        getDriver().findElement(By.xpath(getVar(controlName))).click();
    }

    @Then("I click on element using JavaScript {string} AV")
    public void iClickOnElementUsingJavaScriptWithXpath(String controlName) {
        WebElement element = getDriver().findElement(By.xpath(getVar(controlName)));
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
        String actualText = getDriver().findElement(By.xpath(getVar(controlName))).getText();
        assertThat(actualText).isEqualTo(getVar(varName));
    }

    @Then("element {string} should not have text as {string} AV")
    public void elementWithXpathShouldNotHaveTextAs(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(getVar(controlName))).getText();
        assertThat(actualText).isNotEqualTo(getVar(varName));
    }

    @Then("element {string} should contain text {string} AV")
    public void elementWithXpathShouldContainText(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(getVar(controlName))).getText();
        assertThat(actualText).containsIgnoringCase(getVar(varName));
    }

    @Then("element {string} should not contain text {string} AV")
    public void elementWithXpathShouldNotContainText(String controlName, String varName) {
        String actualText = getDriver().findElement(By.xpath(getVar(controlName))).getText();
        assertThat(actualText).doesNotContain(getVar(varName));
    }

    @Then("element {string} should have attribute {string} as {string} AV")
    public void elementWithXpathShouldHaveAttributeAs(String controlName, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).getAttribute(attribute))
                .isEqualTo(attributeValue);
    }

    @Then("element {string} should not have attribute {string} as {string} AV")
    public void elementWithXpathShouldNotHaveAttributeAs(String controlName, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(getVar(controlName))).getAttribute(attribute))
                .isNotEqualTo(attributeValue);
    }

    @Then("I switch to iframe {string} AV")
    public void iSwitchToIframeWithXpath(String controlName) {
        getDriver().switchTo().frame(getDriver().findElement(By.xpath(getVar(controlName))));
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
        getDriver().findElement(By.xpath(getVar(varName))).clear();
    }

    @Then("I should see page title as {string} AV")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(getVar(title));
    }

    @Then("I should see page title as not {string} AV")
    public void iShouldNotSeePageTitleAsNot(String title) {
        assertThat(getDriver().getTitle()).isNotEqualTo(getVar(title));
    }

    @Then("I should see page title contains {string} AV")
    public void iShouldSeePageTitleContains(String title) {
        assertThat(getDriver().getTitle()).contains(getVar(title));
    }

    @Then("I should see page title does not contain {string} AV")
    public void iShouldSeePageTitleDoesNotContain(String title) {
        assertThat(getDriver().getTitle()).doesNotContain(getVar(title));
    }

    @Then("I scroll to the element {string} with offset {int} AV")
    public void iScrollToTheElementWithXpathWithOffset(String controlName, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(getVar(controlName)));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @When("I mouse over element {string} AV")
    public void iMouseOverElementWithXpath(String controlName) {
        new Actions(getDriver()).moveToElement(getDriver().findElement(By.xpath(getVar(controlName)))).perform();
    }

    @And("I verify user role is {string} AV")
    public void iVerifyUserRoleIs(String varName) {
        String xpath = "//header/div/p";
        String actualText = getDriver().findElement(By.xpath(getVar(xpath))).getText();
        assertThat(actualText).isEqualTo(getVar(varName));
    }

    @Then("I move slider {string} for {int} clicks to the {string} AV")
    public void iMoveSliderForClicksToThe(String controlName, int steps, String direction) {
        WebElement slider = getDriver().findElement(By.xpath(getVar(controlName)));
        Keys dirKey = (direction.equals("left")) ? Keys.ARROW_LEFT : Keys.ARROW_RIGHT;
        for (int i = 0; i < steps; i++) {
            slider.sendKeys(dirKey);
        }
    }

    //Submissions - Automatically Graded test set steps definitions
    @Then("I login as a teacher AV")
    public void iSignInAsATeacher() {
        getDriver().findElement(By.xpath(getVar("Email field")))
                .sendKeys(getVar("teacher email"));
        getDriver().findElement(By.xpath(getVar("Password field")))
                .sendKeys(getVar("teacher password"));
        getDriver().findElement(By.xpath(getVar("Submit button"))).click();
    }
}
