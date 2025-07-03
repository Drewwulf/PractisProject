Feature: SecondProductCheckink

A short summary of the feature

@tag1
Scenario: CheckProduct1 - Chrome
	Given Choose one of Production3 in section
	When select Product1
	And check product's properties
		| id          | textContent |
		| total_width | 395         |
		| width       | 357       |
		| lenght      | 3000        |
		
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category04/product01.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category04/product0102.png |
	Then compare data for product

	Given go back
	When select Product2
	And check product's properties
		| id          | textContent |
		| total_width | 265         |
		| width       | 231         |
		| lenght      | 3000        |
	
	And check product's properties
		| id            | src                                                               |
		| photo_main    | https://dimdvirdevelop.netlify.app/img/category04/product02.png   |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category04/product0202.png |
	Then compare data for product

	Given go back
	When select Product3
	And check product's properties
		| id          | textContent |
		| total_width | 376         |
		| width       | 340         |
		| lenght      | 3000        |
	
	And check product's properties
		| id            | src                                                               |
		| photo_main    |https://dimdvirdevelop.netlify.app/img/category04/product03.png  |
		| photo_drawing | https://dimdvirdevelop.netlify.app/img/category04/product0302.png|
	Then compare data for product
	And close browser