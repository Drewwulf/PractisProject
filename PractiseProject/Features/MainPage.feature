Feature: Feature1

A short summary of the feature

@tag1
Scenario: MainPageContent - Chrome - inprivate
	Given Choose button HomeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	And check ourProductionSection
		| elementType | text                                | photoLink                                                                                         | isDisplayed | isDicribe  |
		| h5          | Системи огорож                      | https://dimdvirdevelop.netlify.app/img/portfolio/pf1.jpg                                          | true,true   | false,true |
		| h5          | Покрівельні системи                 | https://tile.ua/wp-content/uploads/2023/02/x530yf530.jpg.pagespeed.ic.hvnFsQi7o_.webp             | true,true   | false,true |
		| h5          | Металевий сайдинг на фасад          | https://tile.ua/wp-content/uploads/2021/07/xmetalevyj-sajdynh-1.jpg.pagespeed.ic.iCilFAWKtl.webp  | true,true   | false,true |
		| h5          | Водостічні системи                  | https://tile.ua/wp-content/uploads/2021/07/xPravylna-vodostichka.jpg.pagespeed.ic.C3TstMbhZO.webp | true,true   | false,true |
		| h5          | Комплектуючі до покрівельних систем | https://tile.ua/wp-content/uploads/2023/10/xkomplektuiuch.jpg.pagespeed.ic.AIfVle-OQm.webp        | true,true   | false,true |
	Then compare data
	And close browser

@tag1
Scenario: MainPageContent - Edge - inprivate
	Given open page
	And Choose button HomeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	And check ourProductionSection
		| elementType | text                                | photoLink                                                                                         | isDisplayed | isDicribe  |
		| h5          | Системи огорож                      | https://dimdvirdevelop.netlify.app/img/portfolio/pf1.jpg                                          | true,true   | false,true |
		| h5          | Покрівельні системи                 | https://tile.ua/wp-content/uploads/2023/02/x530yf530.jpg.pagespeed.ic.hvnFsQi7o_.webp             | true,true   | false,true |
		| h5          | Металевий сайдинг на фасад          | https://tile.ua/wp-content/uploads/2021/07/xmetalevyj-sajdynh-1.jpg.pagespeed.ic.iCilFAWKtl.webp  | true,true   | false,true |
		| h5          | Водостічні системи                  | https://tile.ua/wp-content/uploads/2021/07/xPravylna-vodostichka.jpg.pagespeed.ic.C3TstMbhZO.webp | true,true   | false,true |
		| h5          | Комплектуючі до покрівельних систем | https://tile.ua/wp-content/uploads/2023/10/xkomplektuiuch.jpg.pagespeed.ic.AIfVle-OQm.webp        | true,true   | false,true |
	Then compare data
	And close browser
