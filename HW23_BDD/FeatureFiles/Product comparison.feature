@highPriority @productComparison
Feature: Product comparison

As a user
I want to add multiple products to the comparison section
In order to see all options for selected products on one page

As a user
I want to remove products from the comparison list
In order to keep only the products I find interesting in the comparison list

As a user
I want to share my comparison list
In order to consult with a friend

Background:
	Given user on the homepage
	When user click on category 'Смартфоны, ТВ и электроника'
	And user click on category 'Apple iPhone'
	And user adds the first product from the list to comparison
	And user adds the second product from the list to comparison
	And user clicks on the Compare list button at the header
	Then user see pop-up with selected product category
	When user clicks on the selected product category
	Then user is redirected to the product comparison page
	And user sees the products added to the comparison

@regression
Scenario: Show only product differences
	When user clicks on the "Только отличия" button
	Then user sees only the difference in the compared products 


@regression
Scenario: Remove item from comparison
	When user clicks on the first product Action button
	And user click on the "Удалить" button
	Then user see only second choosed product on comparison page


@regression
Scenario: Share сomparison list
	When user clicks on the "Поделиться списком сравнения" button
	Then user see information about copying the link to the clipboard