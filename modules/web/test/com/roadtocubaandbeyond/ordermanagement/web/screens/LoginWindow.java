package com.roadtocubaandbeyond.ordermanagement.web.screens;

import com.haulmont.masquerade.Wire;
import com.haulmont.masquerade.base.Composite;
import com.haulmont.masquerade.components.*;

/**
 * This class is the abstraction of the Login Window screen and defines all components to be displayed
 */
public class LoginWindow extends Composite<LoginWindow> {


    @Wire
    private TextField loginField;
    @Wire
    private PasswordField passwordField;
    @Wire
    private CheckBox rememberMeCheckBox;
    @Wire
    private Button loginButton;
    @Wire
    private LookupField localesSelect;
    @Wire
    private Label welcomeLabel;

    public TextField getLoginField() {
        return loginField;
    }

    public void setLoginField(TextField loginField) {
        this.loginField = loginField;
    }

    public PasswordField getPasswordField() {
        return passwordField;
    }

    public void setPasswordField(PasswordField passwordField) {
        this.passwordField = passwordField;
    }

    public CheckBox getRememberMeCheckBox() {
        return rememberMeCheckBox;
    }

    public void setRememberMeCheckBox(CheckBox rememberMeCheckBox) {
        this.rememberMeCheckBox = rememberMeCheckBox;
    }

    public Button getLoginButton() {
        return loginButton;
    }

    public void setLoginButton(Button loginButton) {
        this.loginButton = loginButton;
    }

    public LookupField getLocalesSelect() {
        return localesSelect;
    }

    public void setLocalesSelect(LookupField localesSelect) {
        this.localesSelect = localesSelect;
    }

    public Label getWelcomeLabel() {
        return welcomeLabel;
    }

    public void setWelcomeLabel(Label welcomeLabel) {
        this.welcomeLabel = welcomeLabel;
    }

}
