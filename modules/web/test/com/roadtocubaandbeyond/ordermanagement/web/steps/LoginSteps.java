package com.roadtocubaandbeyond.ordermanagement.web.steps;

import com.roadtocubaandbeyond.ordermanagement.web.service.UserService;
import com.roadtocubaandbeyond.ordermanagement.web.screens.LoginWindow;
import com.haulmont.cuba.security.entity.User;
import com.haulmont.masquerade.Connectors;
import com.haulmont.masquerade.components.AppMenu;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;


import java.util.List;

import static com.codeborne.selenide.Selenide.open;
import static com.haulmont.masquerade.Components._$;
import static org.junit.Assert.assertTrue;

public class LoginSteps {
    @Given("^there is a user \"([^\"]*)\" in the system$")
    public void thereIsAUserInTheSystem(String username) throws Throwable {
        UserService userService = Connectors.restApi(UserService.class);

        List<User> allUsers = userService.all().execute().body();
        assertTrue(allUsers.stream().anyMatch(user -> user.getLogin().equals(username)));
    }

    @When("^I log in as the user \"([^\"]*)\" with password \"([^\"]*)\"$")
    public void iLogInAsTheUserWithPassword(String username, String password) throws Throwable {
        open("http://localhost:8080/app");

        LoginWindow loginWindow = _$(LoginWindow.class);
        loginWindow.getLoginField().setValue(username);
        loginWindow.getPasswordField().setValue(password);

        _$(LoginWindow.class).getLoginButton().click();

    }

    @Then("^I am logged in and can navigate through the application$")
    public void iAmLoggedInAndCanNavigateThroughTheApplication() throws Throwable {

        _$(AppMenu.class).openItem("administration", "sec$User.browse");
    }
}
