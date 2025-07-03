Feature: EveryProductChecking

A short summary of the feature

@tag1
Scenario: CheckProduct1 - Chrome
	Given Choose one of Production1 in section
	When select Product1
	And check product's properties
		| id                | textContent      |
		| item_name         | ЖАЛЮЗІ КЛАСИЧНІ  |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 2500 мм       |
		| lamela_number     | 1 шт            |
		| section_weight    | 9 кг             |
		| t_profile         | Ні               |
		| lamela_height     | 120 мм           |
		| section_thickness | 60 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product1Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product1Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product1Photo3.png |
	Then compare data for product

	Given go back
	When select Product2
	And check product's properties
		| id                | textContent      |
		| item_name         | ЖАЛЮЗІ STANDART  |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 2500 мм       |
		| lamela_number     | 10 шт            |
		| section_weight    | 9 кг             |
		| t_profile         | Ні               |
		| lamela_height     | 120 мм           |
		| section_thickness | 60 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product2Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product2Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product2Photo3.png |
	Then compare data for product

	Given go back
	When select Product3
	And check product's properties
		| id                | textContent      |
		| item_name         | ЖАЛЮЗІ РОМБ      |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 12 шт            |
		| section_weight    | 11 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 95 мм            |
		| section_thickness | 60 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product3Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product3Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product3Photo3.png |
	Then compare data for product

	Given go back
	When select Product4
	And check product's properties
		| id                | textContent      |
		| item_name         | ЖАЛЮЗІ ЛЕГО      |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 10 шт            |
		| section_weight    | 11 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 120 мм           |
		| section_thickness | 60 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product4Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product4Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product4Photo3.png |
	Then compare data for product

	Given go back
	When select Product5
	And check product's properties
		| id                | textContent      |
		| item_name         | РАНЧО РОМБ       |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 11 шт            |
		| section_weight    | 10 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 95 мм            |
		| section_thickness | 25 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product5Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product5Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product5Photo3.png |
	Then compare data for product

	Given go back
	When select Product6
	And check product's properties
		| id                | textContent      |
		| item_name         | РАНЧО PIPE L     |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 6 шт             |
		| section_weight    | 9 кг             |
		| t_profile         | Ні               |
		| lamela_height     | 190 мм           |
		| section_thickness | 30 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product6Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product6Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product6Photo3.png |
	Then compare data for product

	Given go back
	When select Product7
	And check product's properties
		| id                | textContent      |
		| item_name         | РАНЧО PIPE XL    |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 5 шт             |
		| section_weight    | 11 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 275 мм           |
		| section_thickness | 60 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product7Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product7Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product7Photo3.png |
Then compare data for product

	Given go back
	When select Product8
	And check product's properties
		| id                | textContent   |
		| item_name         | РАНЧО ПРЯМЕ   |
		| metal_thickness   | від 0,4 мм    |
		| section_width     | до 3000 мм    |
		| lamela_number     | 6 шт          |
		| section_weight    | 9 кг          |
		| t_profile         | Так           |
		| lamela_height     | 150 мм        |
		| section_thickness | 25 мм         |
		| type_section      | Безкаркасна   |
		| type_bracing      | Заклепки      |
		| p_plank           | Так           |
		| kind_section      | Проглядається |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product8Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product8Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product8Photo3.png |
Then compare data for product
	Given go back
	When select Product9
	And check product's properties
		| id                | textContent        |
		| item_name         | РАНЧО ПРЯМЕ STRONG |
		| metal_thickness   | від 0,4 мм         |
		| section_width     | до 3000 мм         |
		| lamela_number     | 10 шт              |
		| section_weight    | 9 кг               |
		| t_profile         | Так                |
		| lamela_height     | 80 мм              |
		| section_thickness | 25 мм              |
		| type_section      | Безкаркасна        |
		| type_bracing      | Заклепки           |
		| p_plank           | Так                |
		| kind_section      | Проглядається      |
	And check product's properties
		| id         | src                                                                  |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product9Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product9Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product9Photo3.png |
Then compare data for product
	Given go back
	When select Product10
	And check product's properties
		| id                | textContent     |
		| item_name         | РАНЧО ПІВКРУГЛЕ |
		| metal_thickness   | від 0,4 мм      |
		| section_width     | до 3000 мм      |
		| lamela_number     | 6 шт            |
		| section_weight    | 9 кг            |
		| t_profile         | Так             |
		| lamela_height     | 135 мм          |
		| section_thickness | 25 мм           |
		| type_section      | Безкаркасна     |
		| type_bracing      | Заклепки        |
		| p_plank           | Так             |
		| kind_section      | Проглядається   |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product10Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product10Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product10Photo3.png |
Then compare data for product

	Given go back
	When select Product11
	And check product's properties
		| id                | textContent   |
		| item_name         | РАНЧО ФІГУРНЕ |
		| metal_thickness   | від 0,4 мм    |
		| section_width     | до 3000 мм    |
		| lamela_number     | 6 шт          |
		| section_weight    | 8 кг          |
		| t_profile         | Ні            |
		| lamela_height     | 130 мм        |
		| section_thickness | 25 мм         |
		| type_section      | Безкаркасна   |
		| type_bracing      | Заклепки      |
		| p_plank           | Так           |
		| kind_section      | Проглядається |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product11Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product11Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product11Photo3.png |
Then compare data for product

	Given go back
	When select Product12
	And check product's properties
		| id                | textContent        |
		| item_name         | РАНЧО ФІГУРНЕ 2-ст |
		| metal_thickness   | від 0,4 мм         |
		| section_width     | до 3000 мм         |
		| lamela_number     | 12 шт              |
		| section_weight    | 15 кг              |
		| t_profile         | Ні                 |
		| lamela_height     | 130 мм             |
		| section_thickness | 42 мм              |
		| type_section      | Безкаркасна        |
		| type_bracing      | Заклепки           |
		| p_plank           | Так                |
		| kind_section      | Проглядається      |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product12Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product12Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product12Photo3.png |
	Then compare data for product

	Given go back
	When select Product13
	And check product's properties
		| id                | textContent                  |
		| item_name         | РАНЧО РІЗНОШИРИННЕ ПІВКРУГЛЕ |
		| metal_thickness   | від 0,4 мм                   |
		| section_width     | до 3000 мм                   |
		| lamela_number     | 7 шт                         |
		| section_weight    | 9 кг                         |
		| t_profile         | Так                          |
		| lamela_height     | 175 та 80 мм                 |
		| section_thickness | 25 мм                        |
		| type_section      | Безкаркасна                  |
		| type_bracing      | Заклепки                     |
		| p_plank           | Так                          |
		| kind_section      | Проглядається                |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product13Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product13Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product13Photo3.png |
	Then compare data for product

	Given go back
	When select Product14
	And check product's properties
		| id                | textContent            |
		| item_name         | РАНЧО КОСЕ З ПРОМІЖКОМ |
		| metal_thickness   | від 0,4 мм             |
		| section_width     | до 3000 мм             |
		| lamela_number     | 5 шт                   |
		| section_weight    | 8 кг                   |
		| t_profile         | Так                    |
		| lamela_height     | 330 мм                 |
		| section_thickness | 25 мм                  |
		| type_section      | Безкаркасна            |
		| type_bracing      | Заклепки               |
		| p_plank           | Так                    |
		| kind_section      | Проглядається          |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product14Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product14Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product14Photo3.png |
	Then compare data for product

	Given go back
	When select Product15
	And check product's properties
		| id                | textContent             |
		| item_name         | РАНЧО КОСЕ БЕЗ ПРОМІЖКУ |
		| metal_thickness   | від 0,4 мм              |
		| section_width     | до 3000 мм              |
		| lamela_number     | 5 шт                    |
		| section_weight    | 8 кг                    |
		| t_profile         | Так                     |
		| lamela_height     | 330 мм                  |
		| section_thickness | 25 мм                   |
		| type_section      | Безкаркасна             |
		| type_bracing      | Заклепки                |
		| p_plank           | Так                     |
		| kind_section      | Не проглядається        |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product15Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product15Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product15Photo3.png |
	Then compare data for product

	Given go back
	When select Product16
	And check product's properties
		| id                | textContent      |
		| item_name         | ТВІНГО КЛАСИЧНЕ  |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 15 шт            |
		| section_weight    | 12 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 65 мм            |
		| section_thickness | 60 мм або 80 мм  |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product16Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product16Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product16Photo3.png |
	Then compare data for product

	Given go back
	When select Product17
	And check product's properties
		| id                | textContent      |
		| item_name         | ТВІНГО ПРЯМЕ     |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 14 шт            |
		| section_weight    | 12 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 75 мм            |
		| section_thickness | 60 мм або 80 мм  |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product17Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product17Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product17Photo3.png |
	Then compare data for product

	Given go back
	When select Product18
	And check product's properties
		| id                | textContent      |
		| item_name         | ТВІНГО DUOS      |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 18 шт            |
		| section_weight    | 10 кг            |
		| t_profile         | Ні               |
		| lamela_height     | 55 мм            |
		| section_thickness | 60 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product18Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product18Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product18Photo3.png |
	Then compare data for product

	Given go back
	When select Product19
	And check product's properties
		| id                | textContent      |
		| item_name         | ГОРИЗОНТ 170 мм  |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 5 шт             |
		| section_weight    | 7 кг             |
		| t_profile         | Ні               |
		| lamela_height     | 230 мм           |
		| section_thickness | 25 мм            |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product19Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product19Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product19Photo3.png |
	Then compare data for product

	Given go back
	When select Product20
	And check product's properties
		| id                | textContent          |
		| item_name         | ГОРИЗОНТ 170 мм 2-ст |
		| metal_thickness   | від 0,4 мм           |
		| section_width     | до 3000 мм           |
		| lamela_number     | 10 шт                |
		| section_weight    | 14 кг                |
		| t_profile         | Ні                   |
		| lamela_height     | 230 мм               |
		| section_thickness | 45 мм                |
		| type_section      | Безкаркасна          |
		| type_bracing      | Заклепки             |
		| p_plank           | Так                  |
		| kind_section      | Не проглядається     |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product20Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product20Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product20Photo3.png |
Then compare data for product

	Given go back
	When select Product21
	And check product's properties
		| id                | textContent      |
		| item_name         | ГОРИЗОНТ 225 мм  |
		| metal_thickness   | від 0,4 мм       |
		| section_width     | до 3000 мм       |
		| lamela_number     | 4 шт            |
		| section_weight    | 8 кг            |
		| t_profile         |Так              |
		| lamela_height     |290 мм           |
		| section_thickness | 25 мм           |
		| type_section      | Безкаркасна      |
		| type_bracing      | Заклепки         |
		| p_plank           | Так              |
		| kind_section      | Не проглядається |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product21Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product21Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product21Photo3.png |
	Then compare data for product

	Given go back
	When select Product22
	And check product's properties
		| id                | textContent          |
		| item_name         | ГОРИЗОНТ 225 мм 2-ст |
		| metal_thickness   | від 0,4 мм           |
		| section_width     | до 3000 мм           |
		| lamela_number     | 8 шт                 |
		| section_weight    | 16 кг                |
		| t_profile         | Ні                   |
		| lamela_height     | 290 мм               |
		| section_thickness | 45 мм                |
		| type_section      | Безкаркасна          |
		| type_bracing      | Заклепки             |
		| p_plank           | Так                  |
		| kind_section      | Не проглядається     |
	And check product's properties
		| id         | src                                                                   |
		| img_photo1 | https://dimdvirdevelop.netlify.app/img/category02/Product22Photo1.png |
		| img_photo2 | https://dimdvirdevelop.netlify.app/img/category02/Product22Photo2.png |
		| img_photo3 | https://dimdvirdevelop.netlify.app/img/category02/Product22Photo3.png |
	Then compare data for product
	And compare data





