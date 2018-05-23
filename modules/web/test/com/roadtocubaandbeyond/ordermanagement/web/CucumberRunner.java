package com.roadtocubaandbeyond.ordermanagement.web;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:features",
        glue = "com.roadtocubaandbeyond.ordermanagement.web.steps",
        plugin = {"pretty"},
        tags = {"not @Ignore"}
)
public class CucumberRunner {

}