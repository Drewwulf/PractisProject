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
        public string message;


       
        public MainController(DriverFixture fixture)
        {
            driver = fixture.Driver();
            
        }
        public void ClickButton(string nameButton)
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
            }
            catch
            {
                buttons.Add((optionName, compareType, compareData, "Fail"));

                Assert.Fail(message);
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
            driver.Close();
        }

        public void OpenPage()
        {
            driver.Navigate().Refresh();
        }

        public void CheckOutProductiomSection(DataTable dataTable)
        {
            try
            {
                var rows = dataTable.Rows;

                var elementDiv = driver.FindElements(By.ClassName("col"));
                for (int i = 0; i < rows.Count; i++)
                {
                    var res = rows[i].Values.ToList();
                    var elemenetText = elementDiv[i].FindElement(By.TagName("h5")).Text;
                    Assert.AreEqual(res[0], elementDiv[i].Text);
                    var img = elementDiv[i].FindElement(By.TagName("img")).GetAttribute("src");
                    Assert.IsTrue(img.Contains(res[1]));
                    expected.Add((elemenetText, img));
                    actual.Add((res[0], res[1]));
                }
            }
            catch
            {

            }

        }
        public void FinalAssert()
        {
            for (int i = 0; i < expected.Count; i++)
            {
                Assert.AreEqual(expected[i], actual[i]);

            }

        }
    }

}
