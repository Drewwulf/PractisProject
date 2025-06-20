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

                switch (res[1].ToString())
                {
                    case "buttonCheck":
                        ButtonCheck(res[0], res[2], res[3], res[4], res[5], res[6]);
                        break;
                    case "iconCheck":
                        IconCheck(res[0], res[2], res[3], res[4], res[5], res[6], res[7]);
                        break;
                    case "pictureCheck":
                        PictureCheck(res[2], res[3], res[4], res[5], res[6], res[7]);
                        break;
                    case "textCheck":
                        TextCheck(res[2], res[3], res[4], res[5], res[6]);
                        break;

                }
            }


        }

        private void TextCheck(string valueName, string valueType, string elementType, string isDisplayed, string text)
        {
            var element = driver.FindElements(By.TagName(valueType)).First(x => x.GetAttribute(elementType).Contains(valueName));
            var et = element.Text;
            Assert.AreEqual(element.Text, text);
            IsElementDisplayed(isDisplayed.Split(","), element.Displayed);
        }

        private void PictureCheck(string valueName, string valueType, string elementType, string isDisplayed, string text, string link)
        {
            var img = driver.FindElements(By.TagName(valueType)).First(x => x.GetAttribute("alt") == valueName);
            var imgSrc = img.GetAttribute("src");
            Assert.IsTrue(imgSrc.Contains(link));
            IsElementDisplayed(isDisplayed.Split(","), img.Displayed);

        }

        private void IconCheck(string optionName, string valueName, string valueType, string elementType, string isDisplayed, string text, string link)
        {
            try
            {
                var icon = driver.FindElement(By.Id(valueName));
                Assert.AreEqual(icon.GetAttribute("href"), link);
                IsElementDisplayed(isDisplayed.Split(","), icon.Displayed);
                message = $"Button's {optionName} {elementType} is {valueName} ";
            }
            catch
            {
                message = $"Button failed";
                Assert.Fail(message);
            }
        }

        private void ButtonCheck(string optionName, string valueName, string valueType, string elementType, string isDisplayed, string text)
        {

            try
            {
                var btn = driver.FindElements(By.TagName(valueType)).First(x => x.GetAttribute(elementType).Contains(valueName));
                var href = btn.GetAttribute(elementType);
                var displayCheck = isDisplayed.Split(",");
                Assert.IsTrue(href.Contains(valueName));
                IsElementDisplayed(displayCheck, btn.Displayed);
                message = $"Button's {optionName} {elementType} is {valueName} " ;
                buttons.Add((optionName, elementType, valueName, "Pass"));

            }
            catch {
                message = $"Button failed";
                buttons.Add((optionName, elementType, valueName,"Fail"));
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
