using NUnit.Framework;
using NUnit.Framework.Interfaces;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using PractiseProject.Drivers;
using SeleniumExtras.WaitHelpers;
using System.Linq.Expressions;
using System.Xml.Linq;


namespace PractiseProject
{
    public class MainController
    {
        IWebDriver driver;
        WebDriverWait wait;
        List<(string, string)> expected = new List<(string, string)>();
        List<(string, string, string)> expectedProduct = new List<(string, string,string)>();

        List<(string, string)> actual = new List<(string, string)>();
        public List<(string, string, string, string)> buttons = new List<(string, string, string, string)>();
        public List<string> message = new List<string>();

        public ScenarioContext scenarioContext;
        string productNumber;

        public MainController(DriverFixture fixture, ScenarioContext scenarioContext)
        {
            this.scenarioContext = scenarioContext;
            driver = fixture.Driver();
            wait = fixture.Wait();  

        }
        public void ClickButton(string nameButton)
        {
            IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
            IWebElement element;
          /*  var g = wait.Until(ExpectedConditions.ElementIsVisible(By.TagName("a")));
            g.Click();*/
            try
            {
                var navbarList = driver.FindElement(By.Id("navbarNav"));
                switch (nameButton)
                {
                    case "HomeButton":

                        navbarList.FindElements(By.TagName("a")).First(x => x.Text == "Головна").Click();

                        break;
                    case "AboutUsButton":

                        navbarList.FindElements(By.TagName("a")).First(x => x.Text == "Про нас").Click();
                        break;
                    case "CatalogeButton":

                        navbarList.FindElements(By.TagName("a")).First(x => x.Text == "Каталог наших робіт").Click();
                        break;
                    case "Contacts":

                        navbarList.FindElements(By.TagName("a")).First(x => x.Text == "Контакти").Click();
                        break;
                    case "Production1":

                        element = driver.FindElements(By.TagName("h5")).First(x => x.Text == "Системи огорож");
                        Thread.Sleep(1000);
                        js.ExecuteScript("arguments[0].scrollIntoView(true);", element);
                        Thread.Sleep(1000);

                        js.ExecuteScript("window.scrollBy(0, -200);");
                        Thread.Sleep(1000);

                        element.Click();
                        break;
                    case "Production2":

                        element = driver.FindElements(By.TagName("h5")).First(x => x.Text == "Покрівельні системи");
                        Thread.Sleep(1000);
                        js.ExecuteScript("arguments[0].scrollIntoView(true);", element);
                        Thread.Sleep(1000);
                        js.ExecuteScript("window.scrollBy(0, -200);");
                        Thread.Sleep(1000);

                        element.Click();
                        break;
                    case "Production3":

                        element = driver.FindElements(By.TagName("h5")).First(x => x.Text == "Металевий сайдинг на фасад");
                        Thread.Sleep(1000);
                        js.ExecuteScript("arguments[0].scrollIntoView(true);", element);
                        Thread.Sleep(1000);
                        js.ExecuteScript("window.scrollBy(0, -200);");
                        Thread.Sleep(1000);

                        element.Click();
                        break;
                    case "Production5":

                        element = driver.FindElements(By.TagName("h5")).First(x => x.Text == "Комплектуючі до покрівельних систем");
                        Thread.Sleep(1000);
                        js.ExecuteScript("arguments[0].scrollIntoView(true);", element);
                        Thread.Sleep(1000);
                        js.ExecuteScript("window.scrollBy(0, -200);");
                        Thread.Sleep(1000);

                        element.Click();
                        break;

                }
            }
            catch
            {
                message.Add($"{nameButton} doesn't clicked | Fail");

            }
        }

        public void CheckNavigationPanel(DataTable table)
        {

            var row = table.Rows;
            foreach (var item in row)
            {
                var res = item.Values.ToList();

                ElementCheck(res[0], res[2], res[3], res[4], res[5], res[6], res[7]);
            }

            JsonStorage.SaveToJson("Test passed: " + scenarioContext.ScenarioInfo.Title, "each element in navigation was founded");


        }


        private void ElementCheck(string optionName, string valueName, string valueType, string elementType, string compareType, string isDisplayed, string compareData)
        {
            try
            {

                string imgSrc;

                var element = driver.FindElements(By.TagName(valueType)).First(x => x.GetAttribute(elementType).Contains(valueName));
                switch (compareType)

                {
                    case "textContent":
                        imgSrc = element.Text.Trim();
                        break;
                    default:
                        imgSrc = element.GetAttribute(compareType);
                        break;
                }

                Assert.AreEqual(imgSrc, compareData);
                IsElementDisplayed(isDisplayed.Split(","), element.Displayed);


            }
            catch
            {
                buttons.Add((optionName, compareType, compareData, "Fail"));
                message.Add(($"{optionName}'s {compareType} isn't {compareData} | Fail<br/>"));
                JsonStorage.SaveToJson("Test failed: " + scenarioContext.ScenarioInfo.Title, optionName + "!=" + compareData);

                Assert.Fail();
            }
        }



        public void IsElementDisplayed(string[] displayCheck, bool btnDisplayed)
        {
            if (displayCheck[0] == "true")
            {
                if (displayCheck[1] == "true")
                {
                    Assert.IsTrue(btnDisplayed);

                }
            }
        }

        public void CloseBrowser()
        {
            try
            {
                driver.Close();
                JsonStorage.SaveToJson("Test passed: " + scenarioContext.ScenarioInfo.Title, "scenario complete without error");

            }
            catch
            {
                message.Add("Browser doesn't closed | Fail");
                JsonStorage.SaveToJson("Test failed: " + scenarioContext.ScenarioInfo.Title, "browser didnt close");
                Assert.Fail();
            }
        }

        public void OpenPage()
        {
            driver.Navigate().Refresh();
        }

        public void CheckOutProductiomSection(DataTable dataTable)
        {

            var rows = dataTable.Rows;

            var elementDiv = driver.FindElements(By.ClassName("col"));
            int j = 0;
            IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
            js.ExecuteScript("window.scrollTo(0, document.body.scrollHeight);");

            Thread.Sleep(10000);
            
            try
            {


                for (int i = 0; i < rows.Count; i++)
                {
                    j = i;
                    IsElementDisplayed(dataTable.Rows[i][3].Split(","), elementDiv[i].Displayed);
                    if (dataTable.Rows[i][4].Split(",")[0] == "true")
                    {
                        IsElementDisplayed(dataTable.Rows[i][4].Split(","), elementDiv[i].FindElement(By.TagName("p")).Displayed);
                    }
                    var res = rows[i].Values.ToList();
                    var elemenetText = elementDiv[i].FindElement(By.TagName(res[0])).Text;
                    var img = elementDiv[i].FindElement(By.TagName("img")).GetAttribute("src");

                    expected.Add((elemenetText, img));
                    actual.Add((res[1], res[2]));

                }

            }
            catch
            {
                var elemenetText = elementDiv[j].FindElement(By.TagName("h5")).Text;
                var img = elementDiv[j].FindElement(By.TagName("img")).GetAttribute("src");
                message.Add(($"The {elemenetText} wasn't founded, the {img} wasn't founded | PASS<br/>"));
                JsonStorage.SaveToJson("Test failed: " + scenarioContext.ScenarioInfo.Title, "element"+ elemenetText+ "with id " + img + " wasn't found ");
                Assert.Fail();
                


            }

        }
        public void FinalAssert()
        {
            int j = 0;
            string expectedText = "" ;
            string expectedImage = "";
            string actualText = "";
            string actualImage = "";

            message.Clear();

            try
            {
                for (int i = 0; i < expected.Count; i++)
                {
                    j = i;
                    Assert.AreEqual(expected[i], actual[i]);
                    expectedText = expected[i].Item1;
                     expectedImage = expected[i].Item2;
                    expectedText = actual[i].Item1;
                    expectedText = actual[i].Item2;

                }

             

            }
            catch
            {
                    expectedText = expected[j].Item1;
                expectedImage = expected[j].Item2;
                actualText = actual[j].Item1;
                actualImage  = actual[j].Item2;
                JsonStorage.SaveToJson("Test failed scenario name: " + scenarioContext.ScenarioInfo.Title, expectedText + "!= " +actualText +" or " + expectedImage+"  != " +actualImage);

               
                message.Add($" The actual text on  page {actualText} doesn't equal expected text {expectedText} or the actual image's src {actualImage} doesn't equal the expected {expectedImage} | Fail<br/>");
                Assert.Fail();
               
            }

        }



        public void CheckPropetiesOfProduct(DataTable dataTable)
        {
            var head = dataTable.Header.ToList();
            var rows = dataTable.Rows.ToList();
            string actualElementData = "";
            string excepetedElementData ="";
            Thread.Sleep(1000);
            try
            {
                foreach(var row in rows)
                {
                    excepetedElementData = row[1];
                    switch (head[1])
                    {
                        case "textContent":
                           actualElementData = driver.FindElement(By.Id(row[0])).Text;

                            break;
                        default:
                            actualElementData = driver.FindElement(By.Id(row[0])).GetAttribute(head[1]);

                            break;

                    }
                    expectedProduct.Add((excepetedElementData, actualElementData, row[0]));


                }

            }
            catch
            {
                JsonStorage.SaveToJson("Test failed: " + scenarioContext.ScenarioInfo.Title, "element with id " + excepetedElementData+ " wasn't found " );
                Assert.Fail();
            }
        }
        public void FinalAssertForProduct()
        {
            string item1 = "";
            string item2 = "";
            string item3 = "";
            try
            {
                foreach(var item in expectedProduct)
                {

                    item1 = item.Item1;
                    item2 = item.Item2;
                    item3 = item.Item3;
                    Assert.AreEqual(item.Item1, item.Item2);
                    message.Add($"   {item.Item1} = {item.Item2} | Pass</br>");
                }

            }
            catch
            {
                message.Add($" actual data: {item1} dont equal expected data: {item2} | Fail</br>");
                JsonStorage.SaveToJson(" Test failed scenario name: " + scenarioContext.ScenarioInfo.Title+" "+productNumber +" "+ item3, "actual data: " + item1+ " dont equal expected data: " + item2);
                Assert.Fail();
               

            }
            expected.Clear();
        }

        internal void GoBack()
        {
            driver.Navigate().Back();
        }

        public void SelectProduct(int p0)
        {
            productNumber = "product" + p0;
            IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
            var products = driver.FindElements(By.ClassName("product-card"));
            var product = products[p0 - 1].FindElement(By.TagName("a"));
            Thread.Sleep(1000);
            js.ExecuteScript("arguments[0].scrollIntoView(true);", product);
            Thread.Sleep(1000);
            js.ExecuteScript("window.scrollBy(0, -100);");
            Thread.Sleep(1000);

            product.Click();


        }

    }


}
