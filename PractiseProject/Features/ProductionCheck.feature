Feature: ProductionCheck

A short summary of the feature

@tag1
Scenario: CheckEveryProductionCatalog - Chrome
	Given Choose one of Production in section
	When check CategoryProductionSection
	| text                         | photoLink                                                                                         |
	| Жалюзі класичні              | https://dimdvirdevelop.netlify.app/img/portfolio/pf1.jpg                                          |
	| Жалюзі STANDART              | https://tile.ua/wp-content/uploads/2023/02/x530yf530.jpg.pagespeed.ic.hvnFsQi7o_.webp             |
	| Жалюзі РОМБ                  | https://tile.ua/wp-content/uploads/2021/07/xmetalevyj-sajdynh-1.jpg.pagespeed.ic.iCilFAWKtl.webp  |
	| Жалюзі ЛЕГО                  | https://tile.ua/wp-content/uploads/2021/07/xPravylna-vodostichka.jpg.pagespeed.ic.C3TstMbhZO.webp |
	| РАНЧО РОМБ                   | https://tile.ua/wp-content/uploads/2023/10/xkomplektuiuch.jpg.pagespeed.ic.AIfVle-OQm.webp        |
	| РАНЧО PIPE L                 |                                                                                                   |
	| РАНЧО PIPE XL                |                                                                                                   |
	| РАНЧО ПРЯМЕ                  | /img/category02/Product8Photo1.png                                                                |
	| РАНЧО ПРЯМЕ STRONG           | /img/category02/Product9Photo1.png                                                                |
	| РАНЧО ПІВКРУГЛЕ              | /img/category02/Product10Photo1.png                                                               |
	| РАНЧО ФІГУРНЕ                | /img/category02/Product11Photo1.png                                                               |
	| РАНЧО ФІГУРНЕ 2-ст           | /img/category02/Product12Photo1.png                                                               |
	| РАНЧО РІЗНОШИРИННЕ ПІВКРУГЛЕ | /img/category02/Product13Photo1.png                                                               |
	| РАНЧО КОСЕ З ПРОМІЖКОМ       | /img/category02/Product14Photo1.png                                                               |
	| РАНЧО КОСЕ БЕЗ ПРОМІЖКУ      | /img/category02/Product15Photo1.png                                                               |
	| ТВІНГО КЛАСИЧНЕ              | /img/category02/Product16Photo1.png                                                                                                  |
	| ТВІНГО ПРЯМЕ                 | /img/category02/Product17Photo1.png                                                                                                   |
	| ТВІНГО DUOS                  |  /img/category02/Product18Photo1.png                                                                                                  |
	| ГОРИЗОНТ 170 мм              |  /img/category02/Product19Photo1.png                                                                                                  |



	Then [outcome]
