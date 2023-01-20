/** Created By Moni Ghosh **/

package definitions;

import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class MoniTestsForHomePage {
    @Given("Test Teacher Home page links - Moni")
    public void testTeacherLoginFunctionality() throws InterruptedException  {
        getDriver().get("http://ask-stage.portnov.com");
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.loginEmailField())).sendKeys("monighoshTeacher1@gmail.com");
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.loginPasswordField())).sendKeys("password1");
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.loginSubmitButton())).click();
        new WebDriverWait(getDriver(), 10, 4000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeTeacherText())));
        //Thread.sleep(3000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherText())).isDisplayed()).isTrue();

    }
//    @Then("user with {string} and {string} login")
//    public void userWithAndLogin(String email, String password) {
//        getDriver().get("http://ask-stage.portnov.com");
//        login(email, password);
//        // assert
//    }
//
//    private void login(String email, String password) {
//        getDriver().findElement(By.xpath(HomePageLinksElements.loginEmailField())).sendKeys(email);
//        getDriver().findElement(By.xpath(HomePageLinksElements.loginPasswordField())).sendKeys(password);
//        getDriver().findElement(By.xpath(HomePageLinksElements.loginSubmitButton())).click();
//    }

    @Given("Test Student Home page links - Moni")
    public void testStudentLoginFunctionality() throws InterruptedException  {
        getDriver().get("http://ask-stage.portnov.com");
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.loginEmailField())).sendKeys("monighoshStudent1@gmail.com");
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.loginPasswordField())).sendKeys("password1");
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.loginSubmitButton())).click();
        new WebDriverWait(getDriver(), 10, 4000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeStudentText())));
        //Thread.sleep(3000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeStudentText())).isDisplayed()).isTrue();

    }

    @Given("Test Teacher Submission Navigation - Moni")
    public void testTeacherSubmissionNavigation() throws InterruptedException, Exception {
        new WebDriverWait(getDriver(), 10, 3000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeTeacherSubmissionLink())));
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherSubmissionLink())).click();
        Thread.sleep(1000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherSubmissionText())).isDisplayed()).isTrue();
        new PredefinedStepDefs().iTakeScreenshot();

    }

    @Given("Test Teacher Assignments Navigation - Moni")
    public void testTeacherAssignmentsNavigation() throws InterruptedException, Exception {
        new WebDriverWait(getDriver(), 10, 3000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeTeacherAssignmentsLink())));
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherAssignmentsLink())).click();
        Thread.sleep(1000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherAssignmentsText())).isDisplayed()).isTrue();
        new PredefinedStepDefs().iTakeScreenshot();

    }

    @Given("Test Teacher Users Management Navigation - Moni")
    public void testTeacherUsersManagementNavigation() throws InterruptedException, Exception {
        new WebDriverWait(getDriver(), 10, 3000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeTeacherUsersManagementLink())));
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherUsersManagementLink())).click();
        Thread.sleep(1000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeTeacherUsersManagementText())).isDisplayed()).isTrue();
        new PredefinedStepDefs().iTakeScreenshot();

    }


    @Given("Test Student My Assignments Navigation - Moni")
    public void testStudentMyAssignmentsNavigation() throws InterruptedException, Exception {
        new WebDriverWait(getDriver(), 10, 3000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeStudentMyAssignmentsLink())));
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeStudentMyAssignmentsLink())).click();
        Thread.sleep(1000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeStudentMyAssignmentsText())).isDisplayed()).isTrue();
        new PredefinedStepDefs().iTakeScreenshot();

    }

    @Given("Test Student My Grades Navigation - Moni")
    public void testStudentMyGradesNavigation() throws InterruptedException, Exception {
        new WebDriverWait(getDriver(), 10, 3000).until(ExpectedConditions.presenceOfElementLocated(By.xpath(MoniHomePageLinksElements.homeStudentMyGradesLink())));
        getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeStudentMyGradesLink())).click();
        Thread.sleep(1000);
        assertThat(getDriver().findElement(By.xpath(MoniHomePageLinksElements.homeStudentMyGradesText())).isDisplayed()).isTrue();
        new PredefinedStepDefs().iTakeScreenshot();

    }


}
