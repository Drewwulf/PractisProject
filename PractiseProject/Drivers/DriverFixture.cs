
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Edge;


namespace PractiseProject.Drivers
{
    public class DriverFixture
    {
        private readonly ScenarioContext scenarioContext;
        IWebDriver driver;
        public DriverFixture(ScenarioContext scenarioContext)
        {
            this.scenarioContext = scenarioContext;
            SetBrowser();
            driver.Manage().Window.Maximize();
            driver.Navigate().GoToUrl("https://dimdvirdevelop.netlify.app/");
        }
        public void SetBrowser()
        {
            switch (GetBrowser())
            {
                case "Chrome":
                    ChromeOptions chromeOptions = new ChromeOptions();
                    if (Incognito()) chromeOptions.AddArgument("--incognito");
                    driver = new ChromeDriver(chromeOptions);

                    break;
                case "Edge":

                    EdgeOptions edgeOptions = new EdgeOptions();
                    if (Incognito()) edgeOptions.AddArgument("inprivate");
                    driver = new EdgeDriver(edgeOptions);

                    break;


            }
        }
        public string GetBrowser()
        {
            var e = scenarioContext.ScenarioInfo.Title;

            if (e.Contains("Chrome"))
            {
                return "Chrome";
            }
            else
            {
                return "Edge";
            }


        }
        public bool Incognito()
        {
            var title = scenarioContext.ScenarioInfo.Title;
            if (title.Contains("inprivate"))
            {
                return true;
            }
            else return false;
        }
        public IWebDriver Driver() => driver;
    }
}
