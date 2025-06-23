Feature: ProductionCheck

A short summary of the feature

@tag1
Scenario: CheckFirstProductionCatalog - Chrome
	Given Choose one of Production1 in section
	When  check ourProductionSection
	| elementType | text                         | photoLink                                                             | isDisplayed | isDicribe  |
	| h2          | Жалюзі класичні              | https://dimdvirdevelop.netlify.app/img/category02/Product1Photo1.png  | true,true   | false,true |
	| h2          | Жалюзі STANDART              | https://dimdvirdevelop.netlify.app/img/category02/Product2Photo1.png  | true,true   |false,true |
	| h2          | Жалюзі РОМБ                  | https://dimdvirdevelop.netlify.app/img/category02/Product3Photo1.png  | true,true   |false,true |
	| h2          | Жалюзі ЛЕГО                  | https://dimdvirdevelop.netlify.app/img/category02/Product4Photo1.png  | true,true   |false,true |
	| h2          | РАНЧО РОМБ                   | https://dimdvirdevelop.netlify.app/img/category02/Product5Photo1.png  | true,true   |false,true |
	| h2          | РАНЧО PIPE L                 | https://dimdvirdevelop.netlify.app/img/category02/Product6Photo1.png  | true,true   |false,true |
	| h2          | РАНЧО PIPE XL                | https://dimdvirdevelop.netlify.app/img/category02/Product7Photo1.png  | true,true   |false,true |
	| h2          | РАНЧО ПРЯМЕ                  | https://dimdvirdevelop.netlify.app/img/category02/Product8Photo1.png  | true,true   |false,true |
	| h2          | РАНЧО ПРЯМЕ STRONG           | https://dimdvirdevelop.netlify.app/img/category02/Product9Photo1.png  | true,true   |false,true |
	| h2          | РАНЧО ПІВКРУГЛЕ              | https://dimdvirdevelop.netlify.app/img/category02/Product10Photo1.png | true,true   |false,true |
	| h2          | РАНЧО ФІГУРНЕ                | https://dimdvirdevelop.netlify.app/img/category02/Product11Photo1.png | true,true   |false,true |
	| h2          | РАНЧО ФІГУРНЕ 2-ст           | https://dimdvirdevelop.netlify.app/img/category02/Product12Photo1.png | true,true   |false,true |
	| h2          | РАНЧО РІЗНОШИРИННЕ ПІВКРУГЛЕ | https://dimdvirdevelop.netlify.app/img/category02/Product13Photo1.png | true,true   |false,true |
	| h2          | РАНЧО КОСЕ З ПРОМІЖКОМ       | https://dimdvirdevelop.netlify.app/img/category02/Product14Photo1.png | true,true   |false,true |
	| h2          | РАНЧО КОСЕ БЕЗ ПРОМІЖКУ      | https://dimdvirdevelop.netlify.app/img/category02/Product15Photo1.png | true,true   |false,true |
	| h2          | ТВІНГО КЛАСИЧНЕ              | https://dimdvirdevelop.netlify.app/img/category02/Product16Photo1.png | true,true   |false,true |
	| h2          | ТВІНГО ПРЯМЕ                 | https://dimdvirdevelop.netlify.app/img/category02/Product17Photo1.png | true,true   |false,true |
	| h2          | ТВІНГО DUOS                  | https://dimdvirdevelop.netlify.app/img/category02/Product18Photo1.png | true,true   |false,true |
	| h2          | ГОРИЗОНТ 170 мм              | https://dimdvirdevelop.netlify.app/img/category02/Product19Photo1.png | true,true   |false,true |
	| h2          | ГОРИЗОНТ 170 мм 2-ст         | https://dimdvirdevelop.netlify.app/img/category02/Product20Photo1.png | true,true   |false,true |
	| h2          | ГОРИЗОНТ 225 мм              | https://dimdvirdevelop.netlify.app/img/category02/Product21Photo1.png | true,true   |false,true |
	| h2          | ГОРИЗОНТ 225 мм 2-ст         | https://dimdvirdevelop.netlify.app/img/category02/Product22Photo1.png | true,true   |false,true |
	Then compare data
	And close browser

Scenario: CheckSecondProductionCatalog - Chrome
	Given Choose one of Production2 in section
	When  check ourProductionSection
	| elementType | text                 | photoLink                                                                | isDisplayed | isDiscribe |
	| h2          | Фальц-настил         | https://dimdvirdevelop.netlify.app/img/category01/Product1Photo1(1).png  | true,true   | true,true  |
	| h2          | Фальц КЛАСИКА        | https://dimdvirdevelop.netlify.app/img/category01/Product2Photo1(1).png  | true,true   | true,true  |
	| h2          | Фальц ТРАПЕЦІЯ       | https://dimdvirdevelop.netlify.app/img/category01/Product3Photo1(1).png  | true,true   | true,true  |
	| h2          | Фальц ХВИЛЯ          | https://dimdvirdevelop.netlify.app/img/category01/Product4Photo1(1).png  | true,true   | true,true  |
	| h2          | Клік Фальц ПРЕМІУМ   | https://dimdvirdevelop.netlify.app/img/category01/Product5Photo1(1).png  | true,true   | true,true  |
	| h2          | Клік Фальц СМАРТ     | https://dimdvirdevelop.netlify.app/img/category01/Product6Photo1(1).png  | true,true   | true,true  |
	| h2          | Профнастил СИНУСОЇДА | https://dimdvirdevelop.netlify.app/img/category01/Product7Photo1(1).png  | true,true   | true,true  |
	| h2          | Профнастил С-8       | https://dimdvirdevelop.netlify.app/img/category01/Product8Photo1(1).png  | true,true   | true,true  |
	| h2          | Профнастил C-14      | https://dimdvirdevelop.netlify.app/img/category01/Product9Photo1(1).png | true,true   | true,true  |
	| h2          | Профнастил H-14      | https://dimdvirdevelop.netlify.app/img/category01/Product10Photo1%20(1).png | true,true   | true,true  |
	| h2          | Профнастил H-20      | https://dimdvirdevelop.netlify.app/img/category01/Product11Photo1(1).png | true,true   | true,true  |
	| h2          | Профнастил C-20      |https://dimdvirdevelop.netlify.app/img/category01/Product12Photo1(1).png| true,true   | true,true  |

	Then compare data
	And close browser