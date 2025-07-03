Feature: ThirdProductCheck

A short summary of the feature

@tag1
Scenario: CheckProduct1 - Chrome
	Given Choose one of Production5 in section
	When select Product1
	And check product's properties
		| id        | textContent     |
		| item_name | КОНЬОК ФІГУРНИЙ |
		| length1   | 1970 мм        |
		| width1    | 237 мм          |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product01.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0102.png |
	Then compare data for product

	Given go back
	When select Product2
	And check product's properties
		| id        | textContent          |
		| item_name | КОНЬОК УНІВЕРСАЛЬНИЙ |
		| length1   | 2000 мм              |
		| width1    | 310 мм               |
		| length2   | 2000 мм              |
		| width2    | 416 мм               |
	
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product02.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0202.png |
	Then compare data for product

	Given go back
	When select Product3
	And check product's properties
		| id        | textContent    |
		| item_name | КОНЬОК ПЛОСКИЙ |
		| length1   | 2000 мм        |
		| width1    | 250 мм         |
		| length2   | 2000 мм        |
		| width2    | 310 мм         |
		| length3   | 2000 мм        |
		| width3    | 416 мм         |
	
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product03.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0302.png |
	Then compare data for product

	Given go back
	When select Product4
	And check product's properties
		| id        | textContent         |
		| item_name | КОНЬОК ДЕКОРАТИВНИЙ |
		| length1   | 2000 мм             |
		| width1    | 250 мм              |
		| length2   | 2000 мм             |
		| width2    | 310 мм              |
		| length3   | 2000 мм             |
		| width3    | 416 мм              |
	
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product04.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0402.png |
	Then compare data for product

	Given go back
	When select Product6
	And check product's properties
		| id         | textContent      |
		| item_name  | ЗАГЛУШКА КОНЬОКА |
		| large_plug | 295 мм           |
		| small_plug | 193 мм           |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product06.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0602.png |
	Then compare data for product

	Given go back
	When select Product7
	And check product's properties
		| id        | textContent     |
		| item_name | СНІГОЗАТРИМУВАЧ |
		| length1   | 1000 мм         |
		| width1    | 310 мм          |
		| length2   | 1250 мм         |
		| width2    | 310 мм          |
		| length3   | 2000 мм         |
		| width3    | 250 мм          |
		| length4   | 1000 мм         |
		| width4    | 250 мм          |
		| length5   | 1250 мм         |
		| width5    | 250 мм          |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product07.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0702.png |
	Then compare data for product

	Given go back
	When select Product8
	And check product's properties
		| id           | textContent                           |
		| item_name    | СНІГОЗАТРИМУВАЧ ТРУБЧАСТИЙ ДЛЯ ФАЛЬЦУ |
		| tube         | 2                                     |
		| pipe_bracket | 2                                     |
		| tube_plug    | 4                                     |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product08.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0802.png |
	Then compare data for product

	Given go back
	When select Product9
	And check product's properties
		| id           | textContent                                  |
		| item_name    | СНІГОЗАТРИМУВАЧ ТРУБЧАСТИЙ ДЛЯ ФАЛЬЦ-НАСТИЛУ |
		| tube         | 1                                            |
		| pipe_bracket | 2                                            |
		| tube_plug    | 2                                            |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product09.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product0902.png |
	Then compare data for product

	
	Given go back
	When select Product10
	And check product's properties
		| id        | textContent |
		| item_name | СНІГОРІЗ    |
		| length1   | 153 мм      |
		| width1    | 45 мм       |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product10.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1002.png |
	Then compare data for product
		
	Given go back
	When select Product11
	And check product's properties
		| id        | textContent               |
		| item_name | СНІГОЗАТРИМУВАЧ ПІВМІСЯЦЬ |
		| length1   | 230 мм                    |
		| width1    | 282 мм                    |
		| hight     | 60 мм                     |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product11.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1102.png |
	Then compare data for product

	Given go back
	When select Product12
	And check product's properties
		| id        | textContent              |
		| item_name | СТІННИЙ ЗАХИСТ З ЗАРІЗОМ |
		| length1   | 2000 мм                  |
		| width1    | 250 мм                   |
		| length2   | 2000 мм                  |
		| width2    | 312 мм                   |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product12.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1202.png |
	Then compare data for product

	Given go back
	When select Product13
	And check product's properties
		| id        | textContent    |
		| item_name | СТІННИЙ ЗАХИСТ |
		| length1   | 2000 мм        |
		| width1    | 250 мм         |
		| length2   | 2000 мм        |
		| width2    | 312 мм         |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product13.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1302.png |
	Then compare data for product

	Given go back
	When select Product14
	And check product's properties
		| id        | textContent    |
		| item_name | ЗАХИСТ КАРНИЗА |
		| length1   | 2000 мм        |
		| width1    | 156 мм         |
		| length2   | 2000 мм        |
		| width2    | 178 мм         |
		| length3   | 2000 мм        |
		| width3    | 208 мм         |
	And check product's properties
		| id         | src                                                             |
		| photo_main | https://dimdvirdevelop.netlify.app/img/category03/product14.png |
	Then compare data for product

	Given go back
	When select Product16
	And check product's properties
		| id        | textContent              |
		| item_name | ВІТРОЗАХИСТ ДЛЯ ПІДШИВКИ |
		| length1   | 2000 мм                  |
		| width1    | 310 мм                   |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product16.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1602.png |
	Then compare data for product

	Given go back
	When select Product18
	And check product's properties
		| id        | textContent              |
		| item_name | ЖОЛОБ ПЛОСКИЙ |
		| length1   | 2000 мм                  |
		| width1    | 416 мм                   |
		| length2   | 2000 мм                  |
		| width2    | 624 мм                   |
		| length3   | 2000 мм                  |
		| width3    | 1250 мм                  |
		
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product18.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1802.png |
	Then compare data for product

	Given go back
	When select Product19
	And check product's properties
		| id        | textContent     |
		| item_name | НАКЛАДКА ЖОЛОБА |
		| length1   | 2000 мм         |
		| width1    | 250 мм          |
		| length2   | 2000 мм         |
		| width2    | 310 мм          |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product19.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product1902.png |
	Then compare data for product

	Given go back
	When select Product20
	And check product's properties
		| id        | textContent                 |
		| item_name | ПЛАНКА ЗАШИВКИ УНІВЕРСАЛЬНА |
		| length1   | 2000 мм                     |
		| width1    | 250 мм                      |
		| length2   | 2000 мм                     |
		| width2    | 208 мм                      |
		| length3   | 2000 мм                     |
		| width3    | 178 мм                      |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product20.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product2002.png |
	Then compare data for product
	
	Given go back
	When select Product21
	And check product's properties
		| id        | textContent               |
		| item_name | ПЛАНКА ЗАШИВКИ З ВІДЛИВОМ |
		| length1   | 2000 мм                   |
		| width1    | 178 мм                    |
		| length2   | 2000 мм                   |
		| width2    | 208 мм                    |
		| length3   | 2000 мм                   |
		| width3    | 250 мм                    |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product21.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product2102.png |
	Then compare data for product

	Given go back
	When select Product24
	And check product's properties
		| id        | textContent      |
		| item_name | КУТНИК ЗОВНІШНІЙ |
		| length1   | 2000 мм          |
		| width1    | 208 мм           |
		| length2   | 2000 мм          |
		| width2    | 110 мм           |
		| length3   | 2000 мм          |
		| width3    | 80 мм            |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product24.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product2402.png |
	Then compare data for product

	Given go back
	When select Product25
	And check product's properties
		| id        | textContent       |
		| item_name | КУТНИК ВНУТРІШНІЙ |
		| length1   | 2000 мм           |
		| width1    | 208 мм            |
		| length2   | 2000 мм           |
		| width2    | 110 мм            |
		| length3   | 2000 мм           |
		| width3    | 80 мм             |
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category03/product25.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category03/product2502.png |
	Then compare data for product
	And close browser