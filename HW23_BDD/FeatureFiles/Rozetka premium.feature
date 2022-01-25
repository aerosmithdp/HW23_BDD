@highPriority @rozetkaPremium
Feature: Rozetka premium

As a user
I want to subscribe to a premium account 
In order to unlimited free delivery

As a user 
I want to sign up for a trial period 
In order to get acquainted with the service

As a user
I want to read the Premium Subscription Rules 
In order to know the terms of the subscription

Background:
	Given user on homepage
	When user click on "Попробуйте Premium" button
	Then user redirected to premium account page

@regression
Scenario: Choose Premium account 
	And user click on the button "Подписка Premium на год" 
	And user fills in contact details 
	And user fills in payment information 
	And user click on the button "Заказ подтверждаю"  
	Then user redirects to payment confirmation page 
	And user received a payment confirmation email "С вашей карты было списанно 700.00 грн.Premium подписка на год активна."

@regression
Scenario: Choose Trial period
	And user click on the button "Подписка Trial Premium на месяц" 
	And user fills in contact details 
	And user fills in payment information 
	And user click on the button "Заказ подтверждаю"  
	Then user redirects to payment confirmation page 
	And user received a payment confirmation email "С вашей карты было списанно 3.00 грн.Пробная Premium подписка на месяц активна."

@regression
Scenario: Check Subscription Rules pop-up
	And user clicks on the "Официальные правила ROZETKA Premium" button
	Then user sees a pop-up window with all the rules about subscribing