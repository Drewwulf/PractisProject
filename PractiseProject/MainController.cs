using NUnit.Framework;
using OpenQA.Selenium;
using PractiseProject.Drivers;


namespace PractiseProject
{
    public class MainController
    {
        IWebDriver driver;
        List<(string, string)> expected = new List<(string, string)>();
        List<(string, string)> actual = new List<(string, string)>();
        public List<(string, string,string,string)> buttons = new List<(string, string, string,string)>();
        public List<string> message = new List<string>();


       
        public MainController(DriverFixture fixture)
        {
            driver = fixture.Driver();
            
        }
        public void ClickButton(string nameButton)
        {
            IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
            IWebElement element;

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
                        break ;
                    case "Production2":

                         element = driver.FindElements(By.TagName("h5")).First(x => x.Text == "Покрівельні системи");
                        Thread.Sleep(1000);
                        js.ExecuteScript("arguments[0].scrollIntoView(true);", element);
                        Thread.Sleep(1000);
                        js.ExecuteScript("window.scrollBy(0, -200);");
                        Thread.Sleep(1000);

                        element.Click();
                        break;


                }
                message.Add($"{ nameButton} clicked | Pass");
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


        }

        
        private void ElementCheck(string optionName, string valueName, string valueType, string elementType, string compareType, string isDisplayed, string compareData)
        {
            try
            {

                string imgSrc;
                
                var element = driver.FindElements(By.TagName(valueType)).First(x => x.GetAttribute(elementType).Contains(valueName));
                if (compareType == "textContent")
                {
                    imgSrc = element.Text.Trim();
                }
                else
                {
                     imgSrc = element.GetAttribute(compareType);
                }
              
                Assert.AreEqual(imgSrc, compareData);
                IsElementDisplayed(isDisplayed.Split(","), element.Displayed);
                buttons.Add((optionName, compareType, compareData, "Pass"));

                message.Add(($"{ optionName}'s { compareType} is { compareData} | Pass<br/>"));

            }
            catch
            {
                buttons.Add((optionName, compareType, compareData, "Fail"));
                message.Add(($"{optionName}'s {compareType} isn't {compareData} | Fail<br/>"));
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
                
                message.Add("Browser closed sucsesful | Pass");
            }
            catch
            {
                message.Add("Browser doesn't closed | Fail");

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
                    var res = rows[i].Values.ToList();
                    var elemenetText = elementDiv[i].FindElement(By.TagName(res[0])).Text;
                    var img = elementDiv[i].FindElement(By.TagName("img")).GetAttribute("src");
                   
                    expected.Add((elemenetText, img));
                    actual.Add((res[1], res[2]));
                    message.Add(($"The {elemenetText} was founded, the {img} was founded | PASS<br/>"));
                }
            }
            catch
            {
                var elemenetText = elementDiv[j].FindElement(By.TagName("h5")).Text;
                var img = elementDiv[j].FindElement(By.TagName("img")).GetAttribute("src");
                message.Add(($"The {elemenetText} wasn't founded, the {img} wasn't founded | PASS<br/>"));
                Assert.Fail();


            }

        }
        public void FinalAssert()
        {
            int j = 0;
           
            string actualSting ;
            message.Clear();

            try {
                for (int i = 0; i < expected.Count; i++)
                {
                    j= i;
                    Assert.AreEqual(expected[i], actual[i]);
                   var expectedText = expected[i].Item1;
                    var expectedImage = expected[i].Item2;
                    var actualText = actual[i].Item1;
                    var actualImage = actual[i].Item2;

                    message.Add($" The actual text on  page {actualText} equal expected text {expectedText}, the actual image's src {actualImage} equal the expected {expectedImage} | Pass<br/>");
                }
                

            }
            catch {
                var expectedText = expected[j].Item1;
                var expectedImage = expected[j].Item2;
                var actualText = actual[j].Item1;
                var actualImage = actual[j].Item2;
                message.Add($" The actual text on  page {actualText} doesn't equal expected text {expectedText} or the actual image's src {actualImage} doesn't equal the expected {expectedImage} | Fail<br/>");
                Assert.Fail();
            }

        }
    }

}
