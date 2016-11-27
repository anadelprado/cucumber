Feature: Login on site www.youse.com.br 

Scenario: Login   
 
  Given I am on the home
  When I click on account
  And I fill in email
  And I go to the next step
  And I fill in password
  And I confirm
  Then I am logged in my account
