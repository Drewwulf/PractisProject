Feature: NavigationCheck

A short summary of the feature

@tag1
Scenario: NavigationCheck- Chrome 
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
	Then close browser

Scenario: NavigationCheck- Edge - inprivate
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
	Then close browser

Scenario: NavigationCheckAboutPage- Chrome - inprivate
	Given Choose button AboutUsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	Then close browser

Scenario: NavigationCheckAboutPage- Edge - inprivate
	Given Choose button AboutUsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	Then close browser


	Scenario: NavigationCheckCatalogePage- Edge - inprivate
	Given Choose button CatalogeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	Then close browser

Scenario: NavigationCheckCatalogePage- Chrome - inprivate
	Given Choose button CatalogeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	Then close browser

Scenario: NavigationCheckContactsPage- Edge - inprivate
	Given Choose button ContactsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	Then close browser

Scenario: NavigationCheckContactsPage- Chrome - inprivate
	Given Choose button ContactsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName           | valueType | elementType | compareType | isDisplayed | compareData                                                                    |
		| Logo           | pictureCheck | Дім-Двір            | img       | alt         | src         | true,true   | https://dimdvirdevelop.netlify.app/img/logo.jpg                                |
		| Phone-number   | textCheck    | navbar-text         | span      | class       | textContent | true,true   | 380-98-868-63-63                                                               |
		| Instagram-icon | iconCheck    | icon1               | a         | id          | href        | true,true   | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2               | a         | id          | href        | true,true   | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | Головна             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/home                                        |
		| AboutButton    | buttonCheck  | Про нас             | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/about-us                                    |
		| Catalog        | buttonCheck  | Каталог наших робіт | a         | textContent | href        | true,true   | https://dimdvirdevelop.netlify.app/portfolio-gallery                           |
	Then close browser