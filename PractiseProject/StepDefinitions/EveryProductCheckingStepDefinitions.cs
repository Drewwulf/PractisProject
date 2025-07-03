using System;
using Reqnroll;

namespace PractiseProject.StepDefinitions
{
    [Binding]
    public class EveryProductCheckingStepDefinitions
    {
        private readonly MainController controller;
        public EveryProductCheckingStepDefinitions(MainController controller)
        {
            this.controller = controller;
        }
        [When("select Product{int}")]
        public void WhenSelectProduct(int p0)
        {
            controller.SelectProduct(p0);
        }

        [When("check product's properties")]
        public void WhenCheckProductsProperuies(DataTable table)
        {
            controller.CheckPropetiesOfProduct(table);
        }
        [Given("go back")]
        public void GivenGoBack()
        {
            controller.GoBack();
        }

        [Then("compare data for product")]
        public void ThenCompareDataForProduct()
        {
            controller.FinalAssertForProduct();
        }

    }
}
