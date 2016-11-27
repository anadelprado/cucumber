Feature: Logout on site www.youse.com.br 

Scenario: Logout 
 
  Given I am logged
  When I click on logout
  Then I am logged out
