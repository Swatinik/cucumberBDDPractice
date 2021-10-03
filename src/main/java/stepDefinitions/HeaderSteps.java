package stepDefinitions;

import functionLibrary.CommonFunctions;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

public class HeaderSteps extends CommonFunctions {

    @Given("I'm on the homepage {string}#")
    public void i_m_on_the_homepage(String url) {

        driver.get(url);
    }

    @When("I click on My account Link")
    public void i_click_on_my_account_link() {
        waitForTime(2);
        driver.findElement(By.linkText("My Account")).click();

    }

    @Then("I should get redirected appropriately with title {string}")
    public void i_should_get_redirected_appropriately_with_title(String expectedTitle) {
        String actualTitle = driver.getTitle();
        Assert.assertTrue(actualTitle.contains(expectedTitle));
    }

    @When("I click on Help Link")
    public void i_click_on_help_link() {
        waitForTime(3);
        driver.findElement(By.id("helpsite")).click();
    }

    @When("I click on Store locator Link")
    public void i_click_on_store_locator_link() {
        waitForTime(3);
        driver.findElement(By.linkText("Store Locator")).click();
    }

    public void i_click_on_search_Link(){

    }


}


