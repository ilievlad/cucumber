package features.step_definitions;

import cucumber.api.java8.En;
import cucumber.runtime.CucumberException;

public class MyStepdefs implements En {
    public MyStepdefs() {
        Given("^I have clicked on the Filter section$", () -> {
            System.out.println("Filter has been pressed");
        });

        And("^the Filter Status section is displayed$", () -> {
            System.out.println("Filter status section is displayed");
        });

        And("^the (.*) filter button is displayed and enabled$", (String status) -> {
            System.out.println("Status button displayed: " + status);
        });

        When("^click on the (.*) filter option$", (String status) -> {
            System.out.println("The status button " + status + " was clicked");
        });

        And("^the (.*) filter tag is displayed$", (String status) -> {
            System.out.println("The " + status + " filter tag is displayed");
        });

        Then("^a list of goals is displayed with that (.*)$", (String status) -> {
            System.out.println("a list of goals is displayed with " + status);
            if (status.contains("NEW")) {
                throw new CucumberException("Status " + status + " has failed");
            }
        });

        Given("^I am on the My Development Tracker page$", () -> {
            System.out.println("I am on the My Development Tracker page");
        });

        When("^I want to edit a goal$", () -> {
            System.out.println("I want to edit some goals");
        });

        And("^I have edit the title of a goal$", () -> {
            System.out.println("I have edited the title of some goals");
        });

        When("^I save the goal$", () -> {
            System.out.println("I save some of the goals");
        });

        And("^the update goal notification is displayed$", () -> {
            System.out.println("the update goals notification is displayed");
            throw new CucumberException("The simple scenario has failed because Vlad wanted so");
        });
    }
}
