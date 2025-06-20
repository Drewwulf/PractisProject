Feature: NavigationCheck

A short summary of the feature

@tag1
Scenario: NavigationCheck- Chrome 
	Given Choose button HomeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /href              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser

Scenario: NavigationCheck- Edge - inprivate
	Given Choose button HomeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser

Scenario: NavigationCheckAboutPage- Chrome - inprivate
	Given Choose button AboutUsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser

Scenario: NavigationCheckAboutPage- Edge - inprivate
	Given Choose button AboutUsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser


	Scenario: NavigationCheckCatalogePage- Edge - inprivate
	Given Choose button CatalogeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser 

Scenario: NavigationCheckCatalogePage- Chrome - inprivate
	Given Choose button CatalogeButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser

Scenario: NavigationCheckContactsPage- Edge - inprivate
	Given Choose button ContactsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser 

Scenario: NavigationCheckContactsPage- Chrome - inprivate
	Given Choose button ContactsButton in navigation
	When Check all components in navigation
		| OptionName     | method       | valueName          | valueType | elementType | isDisplayed | text                | link                                                                           |
		| Logo           | pictureCheck | Дім-Двір           | img       | alt         | true,true   |                     | img/logo.jpg                                                                   |
		| Phone-number   | textCheck    | navbar-text        | span      | class       | true,true   | 380-98-868-63-63    |                                                                                |
		| Instagram-icon | iconCheck    | icon1              | a         | id          | true,true   |                     | https://www.instagram.com/dim_dvir?igsh=MTdtZWlvZWFqNDF3Nw%3D%3D&utm_source=qr |
		| facebook-icon  | iconCheck    | icon2              | a         | id          | true,true   |                     | https://www.facebook.com/share/1C7ca43qC7                                      |
		| HomeButton     | buttonCheck  | /home              | a         | href        | true,true   | Головна             |                                                                                |
		| AboutButton    | buttonCheck  | /about-us          | a         | href        | true,true   | Про нас             |                                                                                |
		| Catalog        | buttonCheck  | /portfolio-gallery | a         | href        | true,true   | Каталог наших робіт |                                                                                |
		| Contacts       | buttonCheck  | /contact-us        | a         | href        | true,true   | Контакти            |                                                                                |
	Then close browser