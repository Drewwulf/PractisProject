using System;
using NUnit.Framework;
using Reqnroll;

namespace PractiseProject.StepDefinitions
{

    [Binding]
    public class NavigationCheckStepDefinitions
    {
        private readonly MainController controller;
        
        public NavigationCheckStepDefinitions(MainController controller)
        {
            this.controller = controller;
        }
        [Given("Choose button (.*) in navigation")]
        public void GivenChooseMainButtonInNavigation(string nameButton)
        {
            controller.ClickButton(nameButton);
        }

        [When("Check all components in navigation")]
        public void WhenCheckAllComponentsInNavigation(DataTable dataTable)
        {
            controller.CheckNavigationPanel(dataTable);
        }


        [Then("close browser")]
        public void ThenCloseBrowser()
        {

            controller.CloseBrowser();
        }

        [Given("open page")]
        public void GivenOpenPage()
        {
            controller.OpenPage();
        }

        [When("check ourProductionSection")]
        public void WhenCheckOurProductionSection(DataTable dataTable)
        {
            controller.CheckOutProductiomSection(dataTable);
        }

        [Then("compare data")]
        public void ThenCompareData()
        {
            controller.FinalAssert();
        }

    }

}
