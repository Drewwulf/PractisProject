Feature: Feature1

A short summary of the feature

@tag1
Scenario: MainPageContent - Chrome - inprivate
	Given open page
	And Choose button HomeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
	And check ourProductionSection
	| text                                | photoLink                                                                                             |
	| Системи огорож                      | https://dimdvirdevelop.netlify.app/img/portfolio/pf1.jpg                                                                           |
	| Покрівельні системи                 | https://tile.ua/wp-content/uploads/2023/02/x530yf530.jpg.pagespeed.ic.hvnFsQi7o_.webp             |
	| Металевий сайдинг на фасад          | https://tile.ua/wp-content/uploads/2021/07/xmetalevyj-sajdynh-1.jpg.pagespeed.ic.iCilFAWKtl.webp  |
	| Водостічні системи                  | https://tile.ua/wp-content/uploads/2021/07/xPravylna-vodostichka.jpg.pagespeed.ic.C3TstMbhZO.webp |
	| Комплектуючі до покрівельних систем | https://tile.ua/wp-content/uploads/2023/10/xkomplektuiuch.jpg.pagespeed.ic.AIfVle-OQm.webp        |
	Then compare data
	And close browser


Scenario: MainPageContent - Edge - inprivate
	Given open page
	When check ourProductionSection
	| text                                | photoLink                                                                                             |
	| Системи огорож                      | https://dimdvirdevelop.netlify.app/img/portfolio/pf1.jpg                                                                           |
	| Покрівельні системи                 | https://tile.ua/wp-content/uploads/2023/02/x530yf530.jpg.pagespeed.ic.hvnFsQi7o_.webp             |
	| Металевий сайдинг на фасад          | https://tile.ua/wp-content/uploads/2021/07/xmetalevyj-sajdynh-1.jpg.pagespeed.ic.iCilFAWKtl.webp  |
	| Водостічні системи                  | https://tile.ua/wp-content/uploads/2021/07/xPravylna-vodostichka.jpg.pagespeed.ic.C3TstMbhZO.webp |
	| Комплектуючі до покрівельних систем | https://tile.ua/wp-content/uploads/2023/10/xkomplektuiuch.jpg.pagespeed.ic.AIfVle-OQm.webp        |
	Then compare data
