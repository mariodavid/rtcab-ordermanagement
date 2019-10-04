# RTCAB - ordermanagement

In this repository you'll find an implementation of an ordermanagement system done with CUBA platform. 
It is a showcase application that shows the built-in features of the platform itself as well as how you can implement everyday requirements that might come up in your specific case.

The domain model of the application looks like this:

![Domain model](https://github.com/mariodavid/rtcab-ordermanagement/blob/master/img/domain-model.png)

The application will be developed with corresponding screencasts, that can be found on the YouTube playlist:

[CUBA platform ordermanagement](https://www.youtube.com/playlist?list=PLJ0nYE0NtQxbSV0Oocu6LL-RgLl04PUqb)

All videos in detail:
* [01 - develop an ordermanagement app with CUBA Platform](https://youtu.be/K8kIrEwnTJ4)
* [02 - ordermanagement - auto generate invoice and save to order](https://youtu.be/sg2CbGUQahw)
* [03 - ordermanagement - internationalization of the application (i18n)](https://youtu.be/wodRfEv1h-Y)
* [04 - ordermanagement - search data via full text search](https://youtu.be/OoZCoXwJfwU)
* [05 - ordermanagement - hide customer selection in order screen](https://youtu.be/OxUKyd_E58k)
* [06 - ordermanagement - role with subset of features](https://youtu.be/bBFhHkz0BCk)
* [07 - ordermanagement - automatic download of translation app component](https://youtu.be/YngfAJSZ52A)
* [08 - ordermanagement - storing tenant information with business objects](https://youtu.be/s3AFVtHOByU)

More detailed information on certain topics of the platform can be found here: [road-to-cuba-and-beyond.com](https://www.road-to-cuba-and-beyond.com)


## acceptance tests

This project uses acceptance test to describe the overall behavior of the system. The following test technologies are used:

* [Cucumber](https://cucumber.io/)
* [Selenium](https://www.seleniumhq.org/)
* [masquerade](https://github.com/cuba-platform/masquerade)

```
./gradlew testUi -Dselenide.browser=firefox -Dwebdriver.gecko.driver=/usr/local/bin/geckodriver 
```
