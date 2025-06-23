using System;
using Reqnroll;

namespace PractiseProject.StepDefinitions
{
    [Binding]
    public class ProductionCheckStepDefinitions
    {
        private readonly MainController controller;
        public ProductionCheckStepDefinitions(MainController controller)
        {
            this.controller = controller;
        }
        [Given("Choose one of (.*) in section")]
        public void GivenChooseOneOfProductionInSection(string nameButton)
        {
            controller.ClickButton(nameButton);
        }
    }
}
