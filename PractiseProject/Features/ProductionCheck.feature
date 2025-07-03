Feature: ProductionCheck

A short summary of the feature

@tag1
Scenario: CheckFirstProductionCatalog - Chrome
	Given Choose one of Production1 in section
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-9868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	And  check ourProductionSection
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
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	And  check ourProductionSection
	| elementType | text                              | photoLink                                                                   | isDisplayed | isDiscribe |
	| h2          | Фальц-настил                      | https://dimdvirdevelop.netlify.app/img/category01/Product1Photo1(1).png     | true,true   | true,true  |
	| h2          | Фальц КЛАСИКА                     | https://dimdvirdevelop.netlify.app/img/category01/Product2Photo1(1).png     | true,true   | true,true  |
	| h2          | Фальц ТРАПЕЦІЯ                    | https://dimdvirdevelop.netlify.app/img/category01/Product3Photo1(1).png     | true,true   | true,true  |
	| h2          | Фальц ХВИЛЯ                       | https://dimdvirdevelop.netlify.app/img/category01/Product4Photo1(1).png     | true,true   | true,true  |
	| h2          | Клік Фальц ПРЕМІУМ                | https://dimdvirdevelop.netlify.app/img/category01/Product5Photo1(1).png     | true,true   | true,true  |
	| h2          | Клік Фальц СМАРТ                  | https://dimdvirdevelop.netlify.app/img/category01/Product6Photo1(1).png     | true,true   | true,true  |
	| h2          | Профнастил СИНУСОЇДА              | https://dimdvirdevelop.netlify.app/img/category01/Product7Photo1(1).png     | true,true   | true,true  |
	| h2          | Профнастил С-8                    | https://dimdvirdevelop.netlify.app/img/category01/Product8Photo1(1).png     | true,true   | true,true  |
	| h2          | Профнастил C-14                   | https://dimdvirdevelop.netlify.app/img/category01/Product9Photo1(1).png     | true,true   | true,true  |
	| h2          | Профнастил H-14                   | https://dimdvirdevelop.netlify.app/img/category01/Product10Photo1%20(1).png | true,true   | true,true  |
	| h2          | Профнастил H-20                   | https://dimdvirdevelop.netlify.app/img/category01/Product11Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил C-20                   | https://dimdvirdevelop.netlify.app/img/category01/Product12Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил 20                     | https://dimdvirdevelop.netlify.app/img/category01/Product13Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил HC-35                  | https://dimdvirdevelop.netlify.app/img/category01/Product14Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил HC-45                  | https://dimdvirdevelop.netlify.app/img/category01/Product15Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил HC-57                  | https://dimdvirdevelop.netlify.app/img/category01/Product16Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил HC-92                  | https://dimdvirdevelop.netlify.app/img/category01/Product17Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил 135                    | https://dimdvirdevelop.netlify.app/img/category01/Product18Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил Т07                    | https://dimdvirdevelop.netlify.app/img/category01/Product19Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил Т14                    | https://dimdvirdevelop.netlify.app/img/category01/Product20Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил Т18                    | https://dimdvirdevelop.netlify.app/img/category01/Product21Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил Т18 стіновий           | https://dimdvirdevelop.netlify.app/img/category01/Product22Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил Т40                    | https://dimdvirdevelop.netlify.app/img/category01/Product23Photo1(1).png    | true,true   | true,true  |
	| h2          | Профнастил Т57                    | https://dimdvirdevelop.netlify.app/img/category01/Product24Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ЕЛЕГАНТ            | https://dimdvirdevelop.netlify.app/img/category01/Product25Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця МАДЕРА             | https://dimdvirdevelop.netlify.app/img/category01/Product26Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця МАДЕРА модульна    | https://dimdvirdevelop.netlify.app/img/category01/Product27Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ЕЛІТ               | https://dimdvirdevelop.netlify.app/img/category01/Product28Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця РЕТРО ПРЕМІУМ      | https://dimdvirdevelop.netlify.app/img/category01/Product29Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця МОНТЕРЕЙ           | https://dimdvirdevelop.netlify.app/img/category01/Product30Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця МОДЕРН             | https://dimdvirdevelop.netlify.app/img/category01/Product31Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ЕРА                | https://dimdvirdevelop.netlify.app/img/category01/Product32Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ЕРА модульна       | https://dimdvirdevelop.netlify.app/img/category01/Product33Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ПРЕМІУМ            | https://dimdvirdevelop.netlify.app/img/category01/Product34Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ІНТЕГРА            | https://dimdvirdevelop.netlify.app/img/category01/Product35Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ІНТЕГРА модульна   | https://dimdvirdevelop.netlify.app/img/category01/Product36Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця РЕТРО              | https://dimdvirdevelop.netlify.app/img/category01/Product37Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ВЕНЕРА             | https://dimdvirdevelop.netlify.app/img/category01/Product38Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця ВЕНЕРА модульна    | https://dimdvirdevelop.netlify.app/img/category01/Product39Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця КЛАСИКА            | https://dimdvirdevelop.netlify.app/img/category01/Product40Photo1(1).png    | true,true   | true,true  |
	| h2          | Металочерепиця МОДЕРН (будсервіс) | https://dimdvirdevelop.netlify.app/img/category01/Product41Photo1(1).png    |true,true   | true,true  |
	| h2          | Металочерепиця МОДЕРН модульна    | https://dimdvirdevelop.netlify.app/img/category01/Product42Photo1(1).png    | true,true   | true,true  |
	Then compare data
	And close browser

Scenario: CheckThirdProductionCatalog - Chrome
	Given Choose one of Production3 in section
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	And  check ourProductionSection
	| elementType | text      | photoLink                                                       | isDisplayed | isDiscribe |
	| h2          | Блок-хаус | https://dimdvirdevelop.netlify.app/img/category04/product01.png | true,true   | false,true |
	| h2          | Сайдинг |https://dimdvirdevelop.netlify.app/img/category04/product02.png | true,true   | false,true |
	| h2          | Фасадна панель |https://dimdvirdevelop.netlify.app/img/category04/product03.png | true,true   | false,true |
	Then compare data
	And close browser

Scenario: CheckFourthProductionCatalog - Chrome
	Given Choose one of Production5 in section
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.insagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	And  check ourProductionSection
	| elementType | text                                         | photoLink                                                       | isDisplayed | isDiscribe |
	| h2          | Коньок фігурний                              | https://dimdvirdevelop.netlify.app/img/category03/product01.png | true,true   | false,true |
	| h2          | Коньок універсальний                         | https://dimdvirdevelop.netlify.app/img/category03/product02.png | true,true   | false,true |
	| h2          | Коньок плоский                               | https://dimdvirdevelop.netlify.app/img/category03/product03.png | true,true   | false,true |
	| h2          | Коньок декоративний                          | https://dimdvirdevelop.netlify.app/img/category03/product04.png |    true,true   | false,true |
	| h2          | Коньок трикутний                             | https://dimdvirdevelop.netlify.app/img/category03/product05.png |           true,true   | false,true |
	| h2          | Заглушка конька                              | https://dimdvirdevelop.netlify.app/img/category03/product06.png |            true,true   | false,true |
	| h2          | Снігозатримувач                              | https://dimdvirdevelop.netlify.app/img/category03/product07.png |           true,true   | false,true |
	| h2          | Снігозатримувач трубчастий для фальцу        | https://dimdvirdevelop.netlify.app/img/category03/product08.png |           true,true   | false,true |
	| h2          | Снігозатримувач трубчастий для Фальц-настилу | https://dimdvirdevelop.netlify.app/img/category03/product09.png |           true,true   | false,true |
	| h2          | Снігоріз                                     | https://dimdvirdevelop.netlify.app/img/category03/product10.png |            true,true   | false,true |
	| h2          | Снігозатримувач півмісяць                    | https://dimdvirdevelop.netlify.app/img/category03/product11.png |           true,true   | false,true |
	| h2          | Стінний захист з зарізом                     | https://dimdvirdevelop.netlify.app/img/category03/product12.png |            true,true   | false,true |
	| h2          | Стінний захист                               | https://dimdvirdevelop.netlify.app/img/category03/product13.png |             true,true   | false,true |
	| h2          | Захист карнизу                               | https://dimdvirdevelop.netlify.app/img/category03/product14.png |           true,true   | false,true |
	| h2          | Вітрозахист                                  | https://dimdvirdevelop.netlify.app/img/category03/product15.png |            true,true   | false,true |
	| h2          | Вітрозахист для підшивки                     | https://dimdvirdevelop.netlify.app/img/category03/product16.png |             true,true   | false,true |
	| h2          | Вітрозахист фігурний                         | https://dimdvirdevelop.netlify.app/img/category03/product17.png |           true,true   | false,true |
	| h2          | Жолоб плоский                                | https://dimdvirdevelop.netlify.app/img/category03/product18.png |           true,true   | false,true |
	| h2          | Накладка жолоба                              | https://dimdvirdevelop.netlify.app/img/category03/product19.png |           true,true   | false,true |
	| h2          | Планка зашивки універсальна                  | https://dimdvirdevelop.netlify.app/img/category03/product20.png |         true,true   | false,true |
	| h2          | Планка зашивки з відливом                    | https://dimdvirdevelop.netlify.app/img/category03/product21.png |           true,true   | false,true |
	| h2          | Планка зашивки                               | https://dimdvirdevelop.netlify.app/img/category03/product22.png |            true,true   | false,true |
	| h2          | Закоменева планка                            | https://dimdvirdevelop.netlify.app/img/category03/product23.png |          true,true   | false,true |
	| h2          | Кутник зовнішній                             | https://dimdvirdevelop.netlify.app/img/category03/product24.png |            true,true   | false,true |
	| h2          | Кутник внутрішній                            | https://dimdvirdevelop.netlify.app/img/category03/product25.png |             |            |
	Then compare data
	And close browser