Below you will find what I use in this project and how I use it. I tried to do the explanations in order according to the file structure in Intellij.

Base Page: I initialized the page so I don't keep typing the web driver. Tests can be run in chrome and firefox. With the pagemanager initialized method in the base page, we get rid of initializing the pages one by one. At the bottom, we do the closing process with the tear down method.

Config reader: I created it to read the inputs in the values

OptionsManager: Here I set the way the pages work.

Page Manager: I made it for initializing the pages.

Config reader, option manager and pagemanager, I created all of these to help the base page. For example, calling url from config reader method in line 43 in the base page.

Login Page and Home Page: On this page, I used the operations I did in the login section. I also got help from Helpermethod. Here I used the try catch method in case of an error due to the method. If there is an error, try catch will handle it. I also added chain method from helpermethot to increase the usability of the code.

Constants: I connect here from the base page and get the path. I specify here how long it should wait. When I change it from here, it changes everywhere.

HelperMethods: In line 31, I initialized it first so that I can use the methods in order by doing "return this". I used them in pages package.

Javascriptutil: Javascriptutil is used as helper methods.

Waiting: Here I use the wait method instead of writing the thread as sleep.

Testtoolexception: I created this to use in try catch. If the executing method gives an error, it will find it through this class. Error codes is a class connected to the test tool exception. It is used for log file.

Hook: Implementing the initialized method in the base page. Taking screen shots before shutting down. And it closes with a tear down.

TestRunner: I used test runner to execute the cucumber tests and manage their execution flow.

Stepdefinitions: I wrote my test cases in the following 3 SD files and ran them in cucumber.

GenericSD
HomePageSD
LoginPageSD
Testutil: I have written two methods here for reporting.

Configuration file: This is where we set which browser the test will run on, which url the test will log in to.

Loginpage.feature: Here I wrote my test cases. I also used "scenario outline" which is a nice feature in cucumber. By using this I can do my tests using different users. We can test the same test many times with different users.

Cartoperations.feature: Here I used the data map belonging to cucumber and I used it to give different values over the same test. The difference from Scenario outline is that it runs the test only once.

HTML Report: After the test runs, go to intellij and open Target package at the bottom and then right click on the cucumber report and click "copy Path/Reference" and select "absolute path". And then open it in Firefox.

Cucumber report: After the test is finished, scroll down to the bottom of the terminal section, there is a link called cucumber report, if you click directly on it, the report will open.



#### Software  Tester Assignment: Hi! I'm Murat! I am a QA Automation Test Engineer👋 ####

#### Setting up the project requirements: ####
``` bash
1-) Install dependencies by opening the project and installing the dependencies. (Maven will handle this for you.)
2-) To run this project, go to the feature file and click the 'Run' Icon button.
3-) Due to multiple thread issues with the web driver configuration, parallel test execution is not available for now.
4-) Please use this option until the issue with the driver thread is resolved.
5-) You may also alter your setup settings, such as browser options, url, flash and draw elements, and page titles, through the configuration.properties file. 
6-) https://github.com/makcal1/Cloudwise-B.V./blob/main/src/test/resources/configuration/configuration.properties
7-) Clone the project: git clone https://github.com/makcal1/Cloudwise-B.V.
```

#### Go to the project directory: ####
``` bash
1-) cd my-project
2-) Please use Intelij's Gherking Plugins to execute tests from feature files.
3-) (Settings->Plugins) -> Gherking, Cucumber for Java 
4-) Verify that you have Java, Maven, and Google Chrome installed.
5-) Launch the project by clickingon the green icon which is in the feature files.
6-) Ideally Usage IDE: Intelij: https://www.jetbrains.com/idea/_ 
```
#### Java Environment Variables For Windows: ####
``` bash
1-) Download or save the JDK version for Windows 
2-) Right-click the Computer icon on your desktop and select Properties.
3-) Click Advanced system settings.
4-) Click Environment variables.
5-) Under User variables, click New.
6-) Enter JAVA_HOME as the variable name.
7-) Enter the path to the JDK as the variable value (Ideally Usage IDE: Intelij https://www.jetbrains.com/idea/_ 
```

#### Java Environment Variables For Mac: ####
``` bash
1-) Open terminal window. ...
2-) Type command: $ vim ~/.bash_profile and Hit Enter. ...
3-) Type command: $ export JAVA_HOME=$(/usr/libexec/java_home) and press Escape key for Save changes. ...
4-) Type command: :(colon)wq, It will Save and close .
```

#### Maven Environment Variables For Windows: ####
``` bash
1-) Right click on my computer.
2-) Properties.
3-) Advanced System Setting.
4-) Environment Variable.
5-) User variable and added Maven_Home with value C:\apache-maven-3.5. ...
6-) Add it to path variable with: %Maven_Home%\bin.
7-) Open cmd and ask for mvn -version in desktop.
```

#### Maven Environment Variables For Mac: ###
``` bash
https://www.journaldev.com/2348/install-maven-mac-os
```

### Reports: ###
``` bash
Cucumber test report will be available after the test execution. The report can be seeen by using the link that is mentioned at the bottom of the 'Run' Section.
```

### Feedback: 🙂 ###
``` bash
- If you have any feedback, please reach out to me --> muratdlgr@gmail.com 
```



