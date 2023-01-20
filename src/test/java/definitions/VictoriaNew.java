package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class VictoriaNew {
    @Given("I open my url {string}")
    public void iOpenMyUrl(String url) {
        getDriver().get(url);
    }

    @Then("I see page title as {string}")
    public void iSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("I type {string} into field with xpath {string}")
    public void iTypeIntoFieldWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("I click button with xpath {string}")
    public void iClickButtonWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("I wait for {int} seconds")
    public void iWaitForSeconds(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("I wait for element with xpath {string} should be displayed")
    public void iWaitForElementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("I clear content in field with xpath {string}")
    public void iClearContentInFieldWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).clear();
    }

    @Then("button with xpath {string} should be enabled")
    public void buttonWithXpathShouldBeEnabled(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isEnabled()).isTrue();
    }

    @Then("element with xpath {string} should have text {string}")
    public void elementWithXpathShouldHaveTextAs(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).isEqualTo(text);
    }

}
