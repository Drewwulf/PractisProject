using AventStack.ExtentReports;
using AventStack.ExtentReports.Gherkin.Model;
using AventStack.ExtentReports.Reporter;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.Extensions;
using PractiseProject;
using PractiseProject.Drivers;
using System.Web;


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

    [AfterStep]
    public void AfterStep(DriverFixture driverFixture)
    {
       var table = scenarioContext.StepContext.StepInfo.Table;

        if (table != null)
        {
            var a = controller.buttons;
            controller.message = "";

            foreach (var button in a)
            {
                controller.message += $"{button.Item1} {button.Item2} has {button.Item3} | {button.Item4}<br/>";
                
            }
        }
        if (scenarioContext.TestError == null)
        {
            switch (ScenarioStepContext.Current.StepInfo.StepDefinitionType.ToString())
            {
                case "Given":
                    feature.CreateNode<Given>(scenarioContext.StepContext.StepInfo.Text).Pass(controller.message);
                    break;
                case "When":
                    feature.CreateNode<When>(scenarioContext.StepContext.StepInfo.Text).Pass(controller.message);
                    break;
                case "Then":
                    feature.CreateNode<Then>(scenarioContext.StepContext.StepInfo.Text).Pass(controller.message);
                    break;
            }
        }
        else
        {
            driver = driverFixture.Driver();
            ITakesScreenshot takesScreenshot = (ITakesScreenshot)driver;
            Screenshot screenshot = takesScreenshot.GetScreenshot();
            string screenshotPath = Path.Combine("Screenshots", $"{Guid.NewGuid()}.png");
            screenshot.SaveAsFile(screenshotPath);


            switch (ScenarioStepContext.Current.StepInfo.StepDefinitionType.ToString())
            {
                case "Given":
                    feature.CreateNode<Given>(scenarioContext.StepContext.StepInfo.Text).Fail(controller.message).AddScreenCaptureFromPath(screenshotPath);
                    break;
                case "When":
                   feature.CreateNode<When>(scenarioContext.StepContext.StepInfo.Text).Fail(controller.message).AddScreenCaptureFromPath(screenshotPath);
                    break;
                case "Then":
                    feature.CreateNode<Then>(scenarioContext.StepContext.StepInfo.Text).Fail(controller.message).AddScreenCaptureFromPath(screenshotPath);
                    break;
            }
        }








    }
}
