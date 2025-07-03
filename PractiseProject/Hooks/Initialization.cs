using AventStack.ExtentReports;
using AventStack.ExtentReports.Gherkin.Model;
using AventStack.ExtentReports.Reporter;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.Extensions;
using PractiseProject;
using PractiseProject.Drivers;
using System.Numerics;
using System.Web;
using static System.Runtime.InteropServices.JavaScript.JSType;


[Binding]
public sealed class TestHooks
{
    IWebDriver driver;
    private static ExtentReports extent;
    private static ExtentTest test;
    ExtentTest feature;

    private readonly MainController controller;
    private readonly ScenarioContext scenarioContext;

    public TestHooks(MainController controller, ScenarioContext scenarioContext)
    {
        this.controller = controller;
        this.scenarioContext = scenarioContext;

    }
    [BeforeTestRun]
    public static void BeforeTestRun()
    {
        var reporter = new ExtentSparkReporter("MyReport.html");
        extent = new ExtentReports();
        extent.AttachReporter(reporter);
    }

    [AfterTestRun]
    public static void AfterTestRun()
    {
        extent.Flush();
    }

    [BeforeScenario]
    public void BeforeScenario(ScenarioContext scenarioContext)
    {
        test = extent.CreateTest<Feature>(scenarioContext.ScenarioInfo.Title);
        feature = test.CreateNode<Scenario>(scenarioContext.ScenarioInfo.Title).Pass();

    }
    [AfterScenario]
    public void AfterScenario(ScenarioContext scenarioContext)
    {
        if (scenarioContext.TestError == null)
        {
            // Можна також додати в репорт:
            feature.CreateNode<Scenario>( scenarioContext.ScenarioInfo.Title).Pass("scenario complete without error");
        }


    }
    [AfterStep]
    public void AfterStep(DriverFixture driverFixture)
    {
        if (scenarioContext.TestError != null)
        {
            string fullMessage = string.Join("\n", controller.message);

            driver = driverFixture.Driver();
            ITakesScreenshot takesScreenshot = (ITakesScreenshot)driver;
            Screenshot screenshot = takesScreenshot.GetScreenshot();
            string screenshotPath = Path.Combine("Screenshots", $"{Guid.NewGuid()}.png");
            screenshot.SaveAsFile(screenshotPath);

            switch (ScenarioStepContext.Current.StepInfo.StepDefinitionType.ToString())
            {
                case "Given":
                    feature.CreateNode<Given>(scenarioContext.StepContext.StepInfo.Text)
                        .Fail(fullMessage)
                        .AddScreenCaptureFromPath(screenshotPath);
                    break;
                case "When":
                    feature.CreateNode<When>(scenarioContext.StepContext.StepInfo.Text)
                        .Fail(fullMessage)
                        .AddScreenCaptureFromPath(screenshotPath);
                    break;
                case "Then":
                    feature.CreateNode<Then>(scenarioContext.StepContext.StepInfo.Text)
                        .Fail(fullMessage)
                        .AddScreenCaptureFromPath(screenshotPath);
                    break;
            }
        }

        controller.message.Clear();
    }
}
